AddCSLuaFile( "weapon_cs_base.lua" )

CreateConVar("bur_weapon_recoil_method", "1", FCVAR_REPLICATED + FCVAR_NOTIFY + FCVAR_ARCHIVE , "Value 1 gives the classic CSS view-punch. Others give a custom viewpunch" )

if CLIENT then

	language.Add("AlyxGun_ammo","5.7mm")
	language.Add("SniperPenetratedRound_ammo",".45 ACP")
	language.Add("Gravity_ammo","4.6mm")
	language.Add("Battery_ammo","9mm")
	language.Add("CombineCannon_ammo",".50 AE")
	language.Add("AirboatGun_ammo","5.56MM")
	language.Add("StriderMinigun_ammo","7.62mm")
	language.Add("SniperRound_ammo",".338")
	language.Add("GaussEnergy_ammo",".357 SIG")
	--language.Add("Battery_ammo","9mm")
	--language.Add("Battery_ammo","9mm")
	--language.Add("Battery_ammo","9mm")
	--language.Add("Battery_ammo","9mm")
	--language.Add("Battery_ammo","9mm")
	--language.Add("Battery_ammo","9mm")
	



	surface.CreateFont( "csd",{
	font	  = "csd",
	size	  = 48,
	weight	  = 700}
	)

	SWEP.DrawAmmo			= true
	SWEP.DrawCrosshair		= false
	SWEP.ViewModelFlip		= false
	SWEP.ViewModelFOV		= 45
	SWEP.SwayScale = 3
	SWEP.BobScale = 2
	SWEP.CSMuzzleFlashes = true
end

if SERVER then
	SWEP.Weight				= 0
	SWEP.AutoSwitchTo		= false
	SWEP.AutoSwitchFrom		= false
end

SWEP.Author					= "Burger"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions			= ""
SWEP.Category				= "Counter-Strike"
SWEP.Spawnable				= false
SWEP.UseHands				= true

SWEP.Primary.Damage			= 35
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/ak47/ak47-1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Delay			= .14
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic 		= true
SWEP.Primary.DefaultClip		= 90 -- custom ammo shit


SWEP.RecoilMul				= 1
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 0
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false


SWEP.CoolDown = 0



--Burst fire Code from Kogitsune
local BURST, AUTO = 0, 1
function SWEP:SetupDataTables( )

	if self.HasBurst == false then return end

	self:NetworkVar( "Int", 0, "FireMode" )

  if SERVER then
	self:SetFireMode( AUTO ) --default to auto
  end

end

function SWEP:ZoomOut(delay)
	if SERVER then
		if delay == nil then
			delay = 0
		end
	
		self.Owner:DrawViewModel(true)
		self:SetNWBool("zoomed",false)
		self.Owner:SetFOV(self.Owner:GetNWInt("desiredfov"),delay)
	end
end

function SWEP:ZoomIn(delay)
	if SERVER then
		if delay == nil then
			delay = 0
		end
		self.Owner:DrawViewModel(false)
		self:SetNWBool("zoomed",true)
		self.Owner:SetFOV(self.Owner:GetNWInt("desiredfov") / (self.ZoomAmount * self:GetNWFloat("bonuszoom",1)  ),delay)
		--print(self:GetNWInt("bonuszoom",0))
	end
end

function SWEP:Initialize()
	self:RegisterCommands()
	self:SetWeaponHoldType(self.HoldType)
	util.PrecacheSound(self.Primary.Sound)
end

function SWEP:Deploy()
	self.Owner:DrawViewModel(true)
	self:RegisterCommands()
	
	if self.IsSilenced == 1 then
		self:SendWeaponAnim(ACT_VM_DRAW_SILENCED)
	else
		self:SendWeaponAnim(ACT_VM_DRAW)
	end
	
	self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())	
	return true
end

function SWEP:RegisterCommands()

	if SERVER then
		util.AddNetworkString( "GetFOVBonus" )
	end

	if game.SinglePlayer() then

		self.Owner:SetNWInt("desiredfov",GetConVarNumber("fov_desired"))
		
	return end

	if SERVER then
		util.AddNetworkString( "GetFOV" )

		function GetData(len,ply)
			local data = net.ReadInt(8)
			--print("NET: RECIEVED "..data .. " FROM " .. string.upper(ply:Nick())) 
			ply:SetNWInt("desiredfov",data)
		end
		
		net.Receive( "GetFOV", GetData )
		
	end
	
	if CLIENT then
		local data = LocalPlayer():GetFOV()

		net.Start( "GetFOV" )
			net.WriteInt( data, 8 )
		net.SendToServer()
		
	end

end

function SWEP:Holster()
	
	if self:GetNWBool("zoomed",false) == true then
		return false 
	end
	
	self:ZoomOut(0)
	self:SendWeaponAnim(ACT_VM_HOLSTER)

	if self.IsReloading == 1  then 
		return false
	end
	
	return true
	
end

function SWEP:PrimaryAttack()

	if not IsFirstTimePredicted( ) then return end

	if self.IsReloading == 1 then return end

	if self.HasSilencer == true then

		if not self.AttachDelay then
			self.AttachDelay = 0
		end

		if self.AttachDelay < CurTime() then
			self:Shoot()
			self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
		end

	else
	
		self:Shoot()
		self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
		
	end

end

function SWEP:SecondaryAttack()

	if not IsFirstTimePredicted( ) then return end

	if self.HasBurstFire == true then

		if self.Primary.Automatic == true then
			message = "Automatic"
		else
			message = "Semi-Automatic"
		end
	
		if self:GetFireMode( ) == AUTO then
			self:SetFireMode( BURST )
			self.Weapon:EmitSound("weapons/smg1/switch_burst.wav")
			self.Owner:PrintMessage( HUD_PRINTCENTER, "Switched to Burst Fire Mode" )
		else
			self:SetFireMode( AUTO )
			self.Weapon:EmitSound("weapons/smg1/switch_single.wav")
			self.Owner:PrintMessage( HUD_PRINTCENTER, "Switched to "..message )
		end


	elseif self.EnableScope == true then
		if self.NextZoomTime >= CurTime() then return end
		self.NextZoomTime = CurTime() + 0.3
		
		local delay = 0.3

		if not self.ScopeDelay then
			self.ScopeDelay = 0
		end

		if self.ScopeDelay > CurTime() then return end

		if SERVER then
			if self:GetNWBool("zoomed",false) == true then
				self:ZoomOut(delay)
			else
				self:ZoomIn(delay)
			end
		end
		
		if CLIENT or game.SinglePlayer() == true then
			self:EmitSound("weapons/zoom.wav",100,100)
		end
		
		self.ScopeDelay = delay + CurTime()
		

	elseif self.HasSilencer == true then

		if not self.AttachDelay then
			self.AttachDelay = 0
		end

		if not self.IsSilenced then
			self.IsSilenced = 0
		end

		if self.AttachDelay < CurTime() then
		
			if self.IsSilenced == 1 then
				self:SendWeaponAnim(ACT_VM_DETACH_SILENCER)
				self.IsSilenced = 0
				self.AttachDelay = CurTime() + self.Owner:GetViewModel():SequenceDuration()
			else
				self:SendWeaponAnim(ACT_VM_ATTACH_SILENCER)
				self.AttachDelay = CurTime() + self.Owner:GetViewModel():SequenceDuration()
				self.IsSilenced = 1
			end
			
		end
		
	end
	
end

function SWEP:Shoot()
	if !self:CanPrimaryAttack() then return end
	if not IsFirstTimePredicted( ) then return end

	self.Owner:SetAnimation(PLAYER_ATTACK1)
	
	local Damage = self.Primary.Damage
	local Shots = self.Primary.NumShots
	local Cone = self.Primary.Cone
	local Recoil = self.RecoilMul
	
	if self.HasBurstFire == true then

		if self.FakeDelay <= CurTime() then 

			if self:GetFireMode( ) == BURST then

				Recoil = Recoil * 0.75
			
				if self.Primary.Automatic == true then
					self.FakeDelay = CurTime() + 0.5
				else
					self.FakeDelay = CurTime() + self.Primary.Delay*4
				end

				if self.Weapon:Clip1() >= 3 then
					self:TakePrimaryAmmo(2)
					Shots = 3
				else
					self:TakePrimaryAmmo(self.Weapon:Clip1())
					Shots = self.Weapon:Clip1()
				end

				self.FakeDelay = CurTime() + self.Primary.Delay*4
				
			else
				self:TakePrimaryAmmo(1)
				self.FakeDelay = CurTime() + self.Primary.Delay

			end
			
		else return end
		
		for i=1, Shots-1 do
		
			timer.Simple(self.Primary.Delay*0.50*i,function() 
				if IsValid(self) == true then 
					self.Weapon:EmitSound(self.Primary.Sound) 
				end
			end )
		
		end
	else
		self:TakePrimaryAmmo(1)
	end
		

	if self.EnableScope == true then
	
		if SERVER then
			if self.HasBoltAction == true then
	
				self.NextZoomTime = CurTime() + 1.5
		
				self:ZoomOut(0.3)

			end
		end
		
	end

	if self.HasSilencer == true then
	
		if self.IsSilenced == 1 then
			self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_SILENCED)
			GunSound = self.Secondary.Sound
			Damage = Damage*0.9
			Recoil = Recoil*0.9
			Cone = Cone*0.9
		else
			self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
			GunSound = self.Primary.Sound
		end
		
	else
	
		self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
		GunSound = self.Primary.Sound
		
	end
	
	if self.EnableCrosshair == false then
		if self:GetNWBool("zoomed",false) == true then
			Cone = self.Primary.Cone
		else
			Cone = 0.1
		end
	end
	
	if self.HasPumpAction == true then
		self.ReloadDelay = CurTime() + 1
	else
		self.ReloadDelay = CurTime() + 0.25
	end
	
	self:ShootBullet(Damage, Shots, Cone, Recoil, GunSound)

end

function SWEP:Reload()

	if not IsFirstTimePredicted( ) then return end
	if self.IsReloading == 1 then return end
	if self.ReloadDelay > CurTime() then return end
	if self:Clip1() >= self.Primary.ClipSize then return end
	if self.Owner:GetAmmoCount( self:GetPrimaryAmmoType()) == 0  then return end
	--if !self:CanPrimaryAttack() then return end
	
	if self.HasSilencer == true then
	
		if self.IsSilenced == 1 then
			self:SendWeaponAnim(ACT_VM_RELOAD_SILENCED)
		else
			self:SendWeaponAnim(ACT_VM_RELOAD)
		end
		
	else
	
		self:SendWeaponAnim(ACT_VM_RELOAD)
		
	end

	if self.HasPumpAction == true then

		self.WeaponShellTime = 0.5
		self:SetNextPrimaryFire(CurTime() + self.WeaponShellTime + 0.1 + (self.Primary.ClipSize-self:Clip1())*self.WeaponShellTime)
		
		self.NextShell = self.WeaponShellTime
		
		if self.ShotgunReload == 0 then
			self.ShotgunReload = 1
		end
		
	else
	
		self.Owner:SetAnimation(PLAYER_RELOAD)
		--self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		self.Owner:SetAnimation(PLAYER_RELOAD)
		self.ReloadFinish = CurTime() + self.Owner:GetViewModel():SequenceDuration()
		
		if self.NormalReload == 0 then
			self.NormalReload = 1
		end

	end
	
	if self.EnableScope == true then
		self:ZoomOut(0.15)
		self.NextZoomTime = CurTime() + self.Owner:GetViewModel():SequenceDuration()
	end
	
	self.IsReloading = 1
	
end

function SWEP:CanPrimaryAttack()
	if not IsFirstTimePredicted( ) then return end
	if self:GetNextPrimaryFire() > CurTime() then return false end

	if not self.ClickSoundDelay then
		self.ClickSoundDelay = 0
	end

	if self:Clip1() <= 0 then
		--self:Reload()
		if self.ClickSoundDelay <= CurTime() then
			self.ClickSoundDelay = CurTime()+0.25
			self:EmitSound("weapons/clipempty_pistol.wav",100,100)
		end

		return false
	end

	return true
	
end

function SWEP:ShootBullet(Damage, Shots, Cone, Recoil, GunSound)
	if not IsFirstTimePredicted( ) then return end
	self.Weapon:EmitSound(GunSound,100,100)

	if not self.CoolDown then
		self.CoolDown = 0
	end
	
	self.ViewKick = -(Damage*Shots/20)/2*Recoil*self.RecoilMul
	self.ExtraSpread = ((self.CoolDown)/100 + self.Owner:GetVelocity():Length()*0.0001)
	
	if SERVER or game.SinglePlayer() then
		if self.CoolDown > 0.25 and self.Primary.Automatic == true and self.EnableScope == false then
			bonusmul = math.Rand(-1,1)
			sideways = 3
		else
			bonusmul = 1
			sideways = 1
		end
		self.Owner:ViewPunch(Angle(self.ViewKick*3*bonusmul,self.ViewKick*math.Rand(-1,1)*sideways,0))
	end
	

	self.CoolDown = math.Clamp(self.CoolDown+(Damage*Shots*0.01),0,10)
	self.CoolTime = CurTime() + ((Damage*Shots*0.01) - 0.1)*self.RecoilMul

	if self.Owner:Crouching() == true and self.Owner:IsOnGround() == true then
		self.CrouchMul = 0.5
	else
		self.CrouchMul = 1
	end

	local bullet = {}
	bullet.Num		= Shots
	bullet.Src		= self.Owner:GetShootPos()
	bullet.Dir		= (self.Owner:EyeAngles() + self.Owner:GetPunchAngle()):Forward()
	bullet.Spread	= Vector(Cone*self.CrouchMul, Cone*self.CrouchMul, 0) + Vector(self.ExtraSpread,self.ExtraSpread,0)
	bullet.Tracer	= 1
	bullet.TracerName = "none"
	bullet.Force	= Damage/10
	bullet.Damage	= Damage*math.Rand(0.99,1.01)
	
	self.Owner:FireBullets(bullet)
	--self:ShootEffects()

end

--[[
function SWEP:Equip() -- when the player doesn't have the weapon
	self:GiveFakeAmmo()
end



function SWEP:EquipAmmo() -- when the player already has the weapon
	self:GiveFakeAmmo()
end

function SWEP:GiveFakeAmmo()

	local ammoname = self.Primary.Ammo .. "count"
	local oldammo = self.Owner:GetNWInt(ammoname)

	self.Owner:SetNWInt(ammoname, oldammo + self.Primary.SpareClip)
	
	local newammo = self.Owner:GetNWInt(ammoname)
	
	
	print("Old Ammo Count: " .. oldammo)
	print("Ammo To Add: " .. self.Primary.SpareClip)
	print("New Ammo Count: " .. newammo)
	
	
	
end
--]]




function SWEP:Think()

	self:BotThink()

	if not self.CoolTime then
		self.CoolTime = 0
	end

	if not self.CoolDown then
		self.CoolDown = 0
	end
	
	if not self.ShotgunReload then
		self.ShotgunReload = 0
	end
	
	if not self.NextShell then
		self.NextShell = 0
	end	
	
	if not self.IsReloading then
		self.IsReloading = 0
	end
	
	if not self.NormalReload then
		self.NormalReload = 0
	end
	
	if not self.ReloadFinish then
		self.ReloadFinish = 0
	end
	
	if not self.NextZoomTime then
		self.NextZoomTime = 0
	end
	
	if not self.ReloadDelay then
		self.ReloadDelay = 0
	end
	
	if not self.FakeDelay then
		self.FakeDelay = 0
	end
	
	if not self.First then
		self.First = 0
	end
	
	if not self.zoomdata then
		self.zoomdata = 1
	end
	
	function AddBonus(len,ply)
		local data = net.ReadFloat(8)
		--print("NET: RECIEVED "..data .. " FROM " .. string.upper(ply:Nick())) 
		self:SetNWFloat("bonuszoom",data)
		
		self:ZoomIn()
	end
		
	net.Receive( "GetFOVBonus", AddBonus )
	
	if CLIENT then
		if self:GetNWBool("zoomed",false) == true then
			
			if input.WasMousePressed(MOUSE_WHEEL_UP) then
				
				if self.zoomdata < 1.5 then 
					self.zoomdata = self.zoomdata + 0.25/2
					self:EmitSound("common/talk.wav")
				end
				
				net.Start( "GetFOVBonus" )
				net.WriteFloat( self.zoomdata, 8 )
				net.SendToServer()

			elseif input.WasMousePressed(MOUSE_WHEEL_DOWN) then
				
				if self.zoomdata > 0.5 then 
					self.zoomdata = self.zoomdata - 0.25/2
					self:EmitSound("common/talk.wav")
				end
				
				net.Start( "GetFOVBonus" )
					net.WriteFloat( self.zoomdata, 8 )
				net.SendToServer()
				
			end
		end
	end
	
	
	
	
	
	
	local ammotype = self:GetPrimaryAmmoType()
	
	if self.NormalReload == 1 then
		self.IsReloading = 1
		
		if SERVER then
			if self.First == 0 then
				self.Owner:GiveAmmo(self:Clip1(),ammotype,true)
				self:SetClip1(0)
				self.First = 1
			end
		end
		
		
		if self.ReloadFinish <= CurTime() then
			--print("I AM DONE RELOADING")
			
			if self.Owner:GetAmmoCount( ammotype ) >= self.Primary.ClipSize then
				self:SetClip1(self.Primary.ClipSize)
				self.Owner:RemoveAmmo(self.Primary.ClipSize,ammotype)
			else
				self:SetClip1(self.Owner:GetAmmoCount(ammotype))
				self.Owner:RemoveAmmo(self.Owner:GetAmmoCount(ammotype),ammotype)
			end
			
			
			self.NormalReload = 0
			self.IsReloading = 0
			self.First = 0
		end
		
	elseif self.ShotgunReload == 1 then
		self.IsReloading = 1
		if self.NextShell <= CurTime() then
			
			if self.Owner:GetAmmoCount( ammotype ) > 0 and self:Clip1() < self.Primary.ClipSize then 
				self:SetClip1(self:Clip1()+1)
				self.Owner:RemoveAmmo(1,ammotype)
				self:SendWeaponAnim(ACT_VM_RELOAD)
				self.NextShell = CurTime()+self.WeaponShellTime
			else
				self.ShotgunReload = 0
				self.IsReloading = 0
				self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
			end
			
			
			
		end
	end
	
	if self.CoolTime < CurTime() then
		if self.CoolDown > 0.03 then
			self.CoolDown = self.CoolDown - 0.06
		else
			self.CoolDown = 0
		end
	end

	if SERVER then
		self:SetNWFloat("weaponheat", math.Clamp(self.CoolDown,0,10))
	end
	
end

function SWEP:AdjustMouseSensitivity()

	if self.EnableScope == true then
		if self:GetNWBool("zoomed",false) == true then
			sen = 1/ (self.ZoomAmount * self:GetNWFloat("bonuszoom",1))
		else
			sen = 1
		end
	else
		sen = 1
	end

	return sen
end

function SWEP:DrawHUD()

	if SERVER then return end

	if not nextupdate then
		nextupdate = 0
	end
	
	if not prevvel1 then
		prevel1 = Angle(0,0,0)
	end
	
	if not oldvel1 then
		oldvel1 = Angle(0,0,0)
	end
	
	if not result then
		result = 0
	end
	
	--[[
		
		prevel1 = LocalPlayer():EyeAngles()
		
		p1 = math.abs(prevel1.p)
		y1 = math.abs(prevel1.y)
		r1 = math.abs(prevel1.r)
		
		p2 = math.abs(oldvel1.p)
		y2 = math.abs(oldvel1.y)
		r2 = math.abs(oldvel1.r)
		
		
		result = math.abs(p1 - p2) + math.abs(y1 - y2) + math.abs(r1 - r2)
		
		--print(result)
		
		oldvel1 = LocalPlayer():EyeAngles()
		--nextupdate = CurTime() + 0.05
	--]]
	
	
	
	
	local x = ScrW()
	local y = ScrH()

	local length = 7
	local convar = GetConVarNumber("fov_desired")
	local mistake = 1.25

	if self.Owner:Crouching() == true and self.Owner:IsOnGround() == true then
		crouchmul = 0.5
	else
		crouchmul = 1
	end

	self.ActualCone = self.Primary.Cone

	local add = 2

	if self:GetNWBool("zoomed",false) == true then
		add = 0.1
	end

	local heat = self:GetNWInt("weaponheat",0)
	--local extra = (heat*10 + self.ActualCone*1000) + self.Owner:GetVelocity():Length()*0.1*crouchmul*mistake + add
	local extra = (self.ActualCone*1000*crouchmul + ( heat*10 + self.Owner:GetVelocity():Length()*0.1 )) + add  --+ result*2
	
	if self.EnableCrosshair == true then
		if self:GetNWBool("zoomed",false) == false then
		
		
			if self.HasPumpAction == true then
				surface.DrawCircle(x/2,y/2, extra, Color(50,255,50,200))
		
			else
				surface.SetDrawColor( 50, 255, 50, 200 )
				surface.DrawLine( x/2+1+extra+length, y/2, x/2+0.5+extra, y/2 )
				surface.DrawLine( x/2-1-extra-length, y/2, x/2-0.5-extra, y/2 )
				surface.DrawLine( x/2, y/2+1+extra+length, x/2, y/2+0.5+extra )
				surface.DrawLine( x/2, y/2-1-extra-length, x/2, y/2-0.5-extra )
			end
			
			
		end
		
		
		
	end

	if self.EnableScope == true then
		if self:GetNWBool("zoomed",false) == true then

			local fovbonus = convar/self.Owner:GetFOV()
			local offset = 0
			
			--DrawMaterialOverlay("gmod/scope-refract",-0.05)
			
			if extra > 0.1 then
				surface.DrawCircle( x/2, y/2, math.Clamp(extra*fovbonus,3,x/2*0.33), Color(0,255,0) )
			end
			
			surface.SetDrawColor(Color(0,0,0))
			surface.SetMaterial(Material("overlays/scope_lens"))
			surface.DrawTexturedRectRotated(x/2,y/2,y,y,0)

			
			local space = 1
			
			surface.SetDrawColor(Color(0,0,0))
			surface.SetMaterial(Material("sprites/scope_arc"))
			surface.DrawTexturedRectRotated(x/2 - y/4,y/2 - y/4,y/2 + space,y/2 + space,0-180)
			surface.DrawTexturedRectRotated(x/2 - y/4,y/2 + y/4,y/2 + space,y/2 + space,90-180)
			surface.DrawTexturedRectRotated(x/2 + y/4,y/2 + y/4,y/2 + space,y/2 + space,180-180)
			surface.DrawTexturedRectRotated(x/2 + y/4,y/2 - y/4,y/2 + space,y/2 + space,270-180)
			
			surface.SetDrawColor(Color(0,0,0))
			surface.SetMaterial(Material("vgui/gfx/vgui/solid_background"))
			surface.DrawTexturedRectRotated(x/4 - y/4,y/2,x/2 - y/2,y,0)
			surface.DrawTexturedRectRotated(x - x/4 + y/4,y/2,x/2 - y/2,y,0)
			
			surface.DrawCircle(x/2,y/2,y/2 - 100,Color(0,0,0))
			--[[
			if fovbonus > 4 then
				surface.SetDrawColor(Color(0,0,0))
				surface.DrawLine(x/2,0,x/2,y)
				surface.DrawLine(0,y/2,x,y/2)
			else
				surface.DrawCircle(x/2,y/2,10,Color(255,0,0))
			end
			--]]
		end
	end
end


function SWEP:HUDShouldDraw( element )
	if self:GetNWBool("zoomed",false) == true and element == "CHudWeaponSelection" then return false end
	return true
end

function SWEP:BotThink()

end

