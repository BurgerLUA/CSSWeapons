AddCSLuaFile( "weapon_cs_base.lua" )

CreateConVar("bur_weapon_recoil_method", "1", FCVAR_REPLICATED + FCVAR_NOTIFY + FCVAR_ARCHIVE , "Value 1 gives the classic CSS view-punch. Others give a custom viewpunch" )

if CLIENT then
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
SWEP.Primary.DefaultClip	= 90
SWEP.Primary.Delay			= .14
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = true

SWEP.RecoilMul	= 1
SWEP.Type = "other" -- shotgun, sniper, selective, other, silenced
SWEP.ZoomAmount = 1
SWEP.EnableScope = true
SWEP.EnableCrosshair = true
SWEP.ZoomOutAfterShot = false
SWEP.ReloadWhileZoomed = false


SWEP.CoolDown = 0



--Code from Kogitsune
local BURST, AUTO = 0, 1
function SWEP:SetupDataTables( )

	if self.Type ~= "selective" then
		--self:SetFireMode(AUTO)
	return end

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
	
		self:SetNWBool("zoomed",false)
		--print(delay)
		--print(self.Owner:GetNWInt("desiredfov"))
		self.Owner:SetFOV(self.Owner:GetNWInt("desiredfov"),delay)
	end
end

function SWEP:ZoomIn(delay)
	if SERVER then
	
		if delay == nil then
			delay = 0
		end
	
		self:SetNWBool("zoomed",true)
		self.Owner:SetFOV(self.Owner:GetNWInt("desiredfov")/self.ZoomAmount,delay)
	end
end

function SWEP:Initialize()
	self:RegisterCommands()
	self:SetWeaponHoldType(self.HoldType)
	util.PrecacheSound(self.Primary.Sound)
end

function SWEP:Deploy()
	self:RegisterCommands()
	self:SendWeaponAnim(ACT_VM_DRAW)
	self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())	
	return true
end

function SWEP:RegisterCommands()

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

		ply = LocalPlayer()


		
		local data = ply:GetFOV()
		
		--print("NET: TRYING TO SEND DATA "..data .." TO SERVER.")
		net.Start( "GetFOV" )
			net.WriteInt( data, 8 )
		--net.Broadcast()  
		net.SendToServer()
	end

end



function SWEP:Holster()

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

	if self.Type == "silenced" then

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

	if self.Type == "selective" then

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


	elseif self.Type == "sniper" then
		if self.NextZoomTime >= CurTime() then return end
		self.NextZoomTime = CurTime() + 0.3
		self:EmitSound("weapons/zoom.wav",100,100)

		if SERVER then
			local delay = 0.3

			if not self.ScopeDelay then
				self.ScopeDelay = 0
			end

			if self.ScopeDelay > CurTime() then return end

			self.ScopeDelay = delay + CurTime()

			if self:GetNWBool("zoomed",false) == true then
				self:ZoomOut(delay)
			else
				self:ZoomIn(delay)
			end
		end

	elseif self.Type == "silenced" then

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
	
	if self.Type == "selective" then

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
		
			timer.Simple(self.Primary.Delay*0.50*i, function() self.Weapon:EmitSound(self.Primary.Sound) end )
		
		end
	else
		self:TakePrimaryAmmo(1)
	end
		

	if self.Type == "sniper" then
	
		if SERVER then
			if self.ZoomOutAfterShot == true then
	
				self.NextZoomTime = CurTime() + 1
		
				self:ZoomOut(0.3)

			end
		end
		
	end

	if self.Type == "silenced" then
	
		if self.IsSilenced == 1 then
			self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_SILENCED)
			GunSound = self.Secondary.Sound
			Damage = Damage*0.9
			Recoil = Recoil*0.9
			Cone = Cone*0.9
		else
			self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
			GunSound = self.Primary.Sound
			--Damage = Damage*1
			--Recoil = Recoil*1
			--Cone = Cone*1
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
	
	
	
	
	self.ReloadDelay = CurTime() + 0.25
	self:ShootBullet(Damage, Shots, Cone, Recoil, GunSound)

end

function SWEP:Reload()

	if not IsFirstTimePredicted( ) then return end
	if self.IsReloading == 1 then return end
	if self.ReloadDelay > CurTime() then return end
	if self:Clip1() >= self.Primary.ClipSize then return end
	--if !self:CanPrimaryAttack() then return end
	
	if self.Type == "silenced" then
	
		if self.IsSilenced == 1 then
			self:SendWeaponAnim(ACT_VM_RELOAD_SILENCED)
		else
			self:SendWeaponAnim(ACT_VM_RELOAD)
		end
		
	else
	
		self:SendWeaponAnim(ACT_VM_RELOAD)
		
	end

	if self.Type == "shotgun" then

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
	
	if self.ReloadWhileZoomed == false then
		self:ZoomOut()
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
		if self.CoolDown > 0.25 and self.Primary.Automatic == true then
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
	bullet.Force	= Damage/10
	bullet.Damage	= Damage*math.Rand(0.99,1.01)
	
	self.Owner:FireBullets(bullet)
	--self:ShootEffects()

end

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
	
	if self.NormalReload == 1 then
		self.IsReloading = 1
		if self.ReloadFinish <= CurTime() then
			--print("I AM DONE RELOADING")
			self:SetClip1(self.Primary.ClipSize)
			self.NormalReload = 0
			self.IsReloading = 0
		end
	elseif self.ShotgunReload == 1 then
		self.IsReloading = 1
		if self.NextShell <= CurTime() then
			self:SetClip1(self:Clip1()+1)
			self:SendWeaponAnim(ACT_VM_RELOAD)
			if self:Clip1() < self.Primary.ClipSize then
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

	if self.Type == "sniper" then
		if self:GetNWBool("zoomed",false) == true then
			sen = 1/self.ZoomAmount
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

	local x = ScrW() / 2
	local y = ScrH() / 2

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
	local extra = (self.ActualCone*1000*crouchmul + ( heat*10 + self.Owner:GetVelocity():Length()*0.1 )) + add
	
	if self.EnableCrosshair == true then
		if self:GetNWBool("zoomed",false) == false then
			surface.SetDrawColor( 50, 255, 50, 200 )
			surface.DrawLine( x+1+extra+length, y, x+.5+extra, y )
			surface.DrawLine( x-1-extra-length, y, x-.5-extra, y )
			surface.DrawLine( x, y+1+extra+length, x, y+.5+extra )
			surface.DrawLine( x, y-1-extra-length, x, y-.5-extra )
		end
	end

	if self.EnableScope == true then
		if self:GetNWBool("zoomed",false) == true then

			local fovbonus = convar/self.Owner:GetFOV()
			local offset = 0
			
			DrawMaterialOverlay("gmod/scope-refract",-0.05)
			
			surface.DrawCircle( x, y, math.Clamp(extra*fovbonus,3,ScrW()*0.33), Color(0,255,0) )
			
			surface.SetDrawColor(Color(0,0,0))
			surface.SetMaterial(Material("gmod/scope"))
			surface.DrawTexturedRectRotated(ScrW()/2,ScrH()/2,ScrW(),ScrH(),0)
			
			if self.ZoomAmount < 4 then
				surface.DrawCircle( x, y, 10, Color(255,0,0) )
			else
				surface.SetDrawColor(Color(0,0,0))
				surface.DrawLine(ScrW()/2,0,ScrW()/2,ScrH())
				surface.DrawLine(0,ScrH()/2,ScrW(),ScrH()/2)
			end
			
		end
	end
end

function SWEP:BotThink()

end
