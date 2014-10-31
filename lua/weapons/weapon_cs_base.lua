AddCSLuaFile()

	CreateConVar("sv_css_damage_scale", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value that all damage from CSS weapons is multiplied. Default is 1." )
	CreateConVar("sv_css_recoil_scale", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value that all recoil from CSS weapons is multiplied. Default is 1." )
	CreateConVar("sv_css_cone_scale", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "This is the value that the spread from CSS weapons is multiplied. Default is 1." )
	CreateConVar("sv_css_velcone_scale", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "This is the value that the spread from CSS weapons is multiplied. Default is 1." )
	
	CreateConVar("sv_css_ammo_loaded", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables giving weapons already loaded. Default is 1." )
	CreateConVar("sv_css_ammo_givespare", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables giving spare ammo to players upon pickup. Default is 1." )
	
	CreateConVar("sv_css_enable_drops", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables players to drop css weapons on death, all other values disables it. Default is 1." )
	CreateConVar("sv_css_timed_drops", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 creates a removal time limit for weapons that drop. 0 never removes weapon drops." )
	CreateConVar("sv_css_drop_timer", "60", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value in seconds that determines how long the weapons are removed after they are dropped. Default is 60." )
	
	CreateConVar("sv_css_enable_c4", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables non-admins to use c4, all other values disables it. Default is 1." )
	CreateConVar("sv_css_enable_c4nonadmin", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables non-admins to use c4, all other values disables it. Default is 1." )
	
	CreateConVar("sv_css_c4_time_explosion", "45", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value in seconds that the C4 detonates when planted. Default is 45." )
	CreateConVar("sv_css_c4_time_defuse", "10", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value in seconds that the C4 is defused. Default is 10." )
	CreateConVar("sv_css_c4_damage", "500", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value in points that determines maximum damage. Default is 500." )
	CreateConVar("sv_css_c4_radius", "1500", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value in units that determines the maximum blast radius. Default is 1500." )
	CreateConVar("sv_css_c4_notifyplayers", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables players to receive cosmetic round winning notifications and sounds, all other values disables it. Default is 1." )
	
	CreateClientConVar("cl_css_viewmodel_fov", "45", true, true )
	
	CreateClientConVar("cl_css_crosshair_style", "1", true, true )
	
	CreateClientConVar("cl_css_crosshair_length", "15", true, true )
	CreateClientConVar("cl_css_crosshair_width", "1", true, true )
	CreateClientConVar("cl_css_crosshair_color_r", "50", true, true )
	CreateClientConVar("cl_css_crosshair_color_g", "255", true, true )
	CreateClientConVar("cl_css_crosshair_color_b", "50", true, true )
	CreateClientConVar("cl_css_crosshair_color_a", "200", true, true )
	

	
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

	surface.CreateFont( "csd",{
	font	  = "csd",
	size	  = 48,
	weight	  = 700}
	)

	SWEP.DrawAmmo			= true
	SWEP.DrawCrosshair		= false
	SWEP.ViewModelFlip		= false
	SWEP.ViewModelFOV		= 47
	SWEP.SwayScale			= 3
	SWEP.BobScale 			= 2
	SWEP.BounceWeaponIcon	= false
	SWEP.DrawWeaponInfoBox	= false

	SWEP.CSMuzzleFlashes 	= true
	
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
SWEP.Primary.SpareClip		= 90 -- custom ammo shit

SWEP.Secondary.Ammo 		= "none"
SWEP.Secondary.ClipSize 	= -1
SWEP.Secondary.DefaultClip 	= -1
SWEP.Secondary.DefaultClip 	= -1


SWEP.RecoilMul				= 1
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 0
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false 
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false

SWEP.CoolDown 				= 0
SWEP.CoolTime 				= 0
SWEP.CoolDown 				= 0
SWEP.ShotgunReload 			= 0
SWEP.NextShell 				= 0
SWEP.IsReloading 			= 0
SWEP.NormalReload 			= 0
SWEP.ReloadFinish 			= 0
SWEP.NextZoomTime 			= 0
SWEP.ReloadDelay 			= 0
SWEP.FakeDelay 				= 0
SWEP.First					= 0
SWEP.ZoomData 				= 1
SWEP.AttachDelay 			= 0
SWEP.ScopeDelay 			= 0
SWEP.IsSilenced 			= 0
SWEP.ClickSoundDelay 		= 0
SWEP.ZoomCurTime			= 1
SWEP.BurgerBase				= true

SWEP.AlreadyGiven			= false

local allammo = {}

allammo[1] = 	"AR2"
allammo[2] =	"AR2AltFire"
allammo[3] =	"Pistol"
allammo[4] =	"SMG1"
allammo[5] =	"357"
allammo[6] =	"XBowBolt"
allammo[7] =	"Buckshot"
allammo[8] =	"RPG_Round"
allammo[9] =	"SMG1_Grenade"
allammo[10] =	"Grenade"
allammo[11] =	"slam"

allammo[12] = 	"AlyxGun"
allammo[13] =	"SniperRound"
allammo[14] =	"SniperPenetratedRound"
allammo[15] =	"Thumper"
allammo[16] =	"Gravity"
allammo[17] =	"Battery"
allammo[18] =	"GaussEnergy"
allammo[19] =	"CombineCannon"
allammo[20] =	"AirboatGun"
allammo[21] =	"StriderMinigun"
allammo[22] =	"HelicopterGun"



hook.Add("DoPlayerDeath", "drop weapon after death", function(ply)
	if GetConVar("sv_css_enable_drops"):GetInt() == 1 then
		for k,v in pairs(ply:GetWeapons()) do
			if v.BurgerBase ~= nil then
				local dropped = ents.Create("ent_cs_droppedweapon")
				dropped:SetPos(ply:GetShootPos())
				dropped:SetAngles(ply:EyeAngles())
				dropped:SetModel(v:GetModel())
				dropped:Spawn()
				dropped:Activate()
				dropped:SetNWString("class",v:GetClass())
				dropped:SetNWInt("clip",v:Clip1())
			end
		end
		
		for i=1, 22 do
		
			if i >= 11 then

				if ply:GetAmmoCount( i ) > 0 then
					local dropammo = ents.Create("ent_cs_ammo_base")
				
					dropammo.AmmoType = allammo[i]
					dropammo.AmmoAmount = ply:GetAmmoCount( i )
					dropammo.AmmoModel = "models/weapons/w_defuser.mdl"
					dropammo:SetPos(ply:GetShootPos())
					dropammo:SetAngles(ply:EyeAngles() + Angle( math.Rand(1,360),math.Rand(1,360),math.Rand(1,360)) )
					dropammo:Spawn()
					dropammo:Activate()
					dropammo:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
					
					if GetConVar("sv_css_timed_drops"):GetInt() == 1 then
						SafeRemoveEntityDelayed(dropammo,GetConVar("sv_css_drop_timer"):GetInt())
					end
					
				end
				
			end
		end
		
	end
end)

--Burst fire Code from Kogitsune
local BURST, AUTO = 0, 1
function SWEP:SetupDataTables( )

	if self.HasBurst == false then return end

	self:NetworkVar( "Int", 0, "FireMode" )

  if SERVER then
	self:SetFireMode( AUTO ) --default to auto
  end

end

--[[
function SWEP:ZoomFunctionThink()

	function AddBonus(len,ply)
		local data = net.ReadFloat(8) -- data is the bonus zoom determined by the mousewheel scroll
		local ent = net.ReadEntity() --the weapon that called it
		
		--if ent ~= self then return end
		
		print("---------------")
		print("FUNCTION AddBonus()")
		print("NET: RECIEVED ".. data .. " FROM " .. string.upper(ply:Nick()) .. " FOR " .. string.upper(self.Owner:Nick()) ) 
		print("FROM " .. tostring(ent) .. " TO " .. tostring(self))
		print("---------------")
		
		self:SetNWFloat("bonuszoom",data)
		
		self:ZoomIn()
	end
		
	net.Receive( "GetFOVBonus", AddBonus )
	
	if CLIENT then
		if self:GetNWInt("zoommode",0) ~= 0 then
			
			if input.WasMousePressed(MOUSE_WHEEL_UP) then
				
				if self.ZoomData < 1.5 then 
					self.ZoomData = self.ZoomData + 0.25/2
					self:EmitSound("common/talk.wav")
				end
				
				net.Start( "GetFOVBonus" )
					net.WriteFloat(self.ZoomData, 8 )
					net.WriteEntity(self)
				net.SendToServer()

			elseif input.WasMousePressed(MOUSE_WHEEL_DOWN) then
				
				if self.ZoomData > 0.5 then 
					self.ZoomData = self.ZoomData - 0.25/2
					self:EmitSound("common/talk.wav")
				end
				
				net.Start( "GetFOVBonus" )
					net.WriteFloat( self.ZoomData, 8 )
					net.WriteEntity(self)
				net.SendToServer()
				
			end
		end
	end
end
--]]

function SWEP:TranslateFOV(oldfov)

	--print(self.ZoomedIn)
	if self:GetNWInt("zoommode",0) > 0 then
		--local maths = oldfov/(self.ZoomAmount *  )
		
		if self.HasDoubleZoom == true then
			newfov = 90 / (self.ZoomAmount*(self:GetNWInt("zoommode",0)/2))
		else
			newfov = 90 / self.ZoomAmount
		end
		
		self.Owner:DrawViewModel(false)
		
		return newfov
	else
	
		self.Owner:DrawViewModel(true)
		
		return oldfov
	end
end

function SWEP:Initialize()
	--self:SetWeaponHoldType(self.HoldType)
	self:SetHoldType( self.HoldType )
	util.PrecacheSound(self.Primary.Sound)
end

function SWEP:Deploy()

	if SERVER then
	
		
		if self.AlreadyGiven == false then
		
			if GetConVar("sv_css_ammo_loaded"):GetInt() == 1 then
				self:SetClip1(self.Primary.ClipSize)
			end
			
			if GetConVar("sv_css_ammo_givespare"):GetInt() == 1 then
				self.Owner:GiveAmmo(self.Primary.SpareClip,self.Primary.Ammo,false)
			end
			
			
			
			
			
			self.AlreadyGiven = true
		end

	end



	self.Owner:GetHands():SetMaterial("")
	self.Owner:DrawViewModel(true)
	
	if self.IsSilenced == 1 then
		self:SendWeaponAnim(ACT_VM_DRAW_SILENCED)
	else
		self:SendWeaponAnim(ACT_VM_DRAW)
	end
	
	self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())	
	return true
end

function SWEP:Holster()
	
	if self:GetNWInt("zoommode",0) ~= 0 then
		return false 
	end

	if self.IsReloading == 1  then 
		return false
	end
	
	self:SendWeaponAnim(ACT_VM_HOLSTER)
	
	return true
	
end




function SWEP:PrimaryAttack()

	--if not IsFirstTimePredicted( ) then return end

	if self.IsReloading == 1 then return end

	if self.HasSilencer == true then

		if self.AttachDelay < CurTime() then
			self:Shoot()
			self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
		end

	else
	
		self:Shoot()
		
		if self.HasBurstFire == true and self.Primary.Automatic == false and self:GetFireMode( ) == BURST then
			self:SetNextPrimaryFire(CurTime() + 0.25)
		else
			self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
		end
		
	end

end

function SWEP:SecondaryAttack()

	--if not IsFirstTimePredicted( ) then return end

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
		self.NextZoomTime = CurTime() + 0.1
		
		local delay = 0.1

		if self.ScopeDelay > CurTime() then return end

		if SERVER then
			if self:GetNWInt("zoommode",0) == 0 then
				self:SetNWInt("zoommode",1)
			elseif self:GetNWInt("zoommode",0) == 1 then
				if self.HasDoubleZoom == true then
					self:SetNWInt("zoommode",2)
				else
					self:SetNWInt("zoommode",0)
				end
			elseif self:GetNWInt("zoommode",0) == 2 then
				self:SetNWInt("zoommode",0)
			end
		end
		
		if CLIENT or game.SinglePlayer() == true then
			self:EmitSound("weapons/zoom.wav",100,100)
		end
		
		self.ScopeDelay = delay + CurTime()
		

	elseif self.HasSilencer == true then

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
	--if not IsFirstTimePredicted( ) then return end

	self.Owner:SetAnimation(PLAYER_ATTACK1)
	
	local Damage = self.Primary.Damage
	local Shots = self.Primary.NumShots
	local Cone = self.Primary.Cone
	local Recoil = self.RecoilMul
	
	if self.HasBurstFire == true then

		if self.FakeDelay <= CurTime() then 

			if self:GetFireMode( ) == BURST then

				Recoil = Recoil * 0.75
				Cone = Cone * 2
				
				if self.Primary.Automatic == true then
					self.FakeDelay = CurTime() + self.Primary.Delay*3
				else
					self:SetNextPrimaryFire(self.Primary.Delay*3)
				end


				if self.Weapon:Clip1() >= 3 then
					self:TakePrimaryAmmo(3)
					Shots = 3
				elseif self.Weapon:Clip1() == 2 then
					self:TakePrimaryAmmo(2)
					Shots = 2
				elseif self.Weapon:Clip1() == 1 then
					self:TakePrimaryAmmo(1)
					Shots = 1
				end


				
			else
			
				self:TakePrimaryAmmo(1)
				--self.FakeDelay = CurTime() + self.Primary.Delay
				self:SetNextPrimaryFire(self.Primary.Delay)

			end
			
		else return end
		
		for i=1, Shots-1 do
		
			timer.Simple(0.01*i,function() 
				if IsValid(self) == true then 
					self.Weapon:EmitSound(self.Primary.Sound, SNDLVL_GUNFIRE, 100, 1, CHAN_WEAPON )
					self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
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
		
				self:SetNWInt("zoommode",0)

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
	
	--[[
	if self.EnableCrosshair == false then
		if self:GetNWInt("zoommode",0) == 0 then
			Cone = 0.1
		else
			Cone = self.Primary.Cone
		end
	end
	--]]
	
	if self.HasPumpAction == true then
		self.ReloadDelay = CurTime() + 1
	else
		self.ReloadDelay = CurTime() + 0.25
	end
	
	self:ShootBullet(Damage, Shots, Cone, Recoil, GunSound)

end

function SWEP:Reload()

	--if not IsFirstTimePredicted( ) then return end
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
		self:SetNWInt("zoommode",0)
		self.NextZoomTime = CurTime() + self.Owner:GetViewModel():SequenceDuration()
	end
	
	self.IsReloading = 1
	
end

function SWEP:CanPrimaryAttack()
	--if not IsFirstTimePredicted( ) then return end
	if self:GetNextPrimaryFire() > CurTime() then return false end

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

	--if not IsFirstTimePredicted( ) then return end
	self.Weapon:EmitSound(GunSound,100,100)

	if not self.CoolDown then
		self.CoolDown = 0
	end
	
	self.ViewKick = -(Damage*Shots/20)/2*Recoil*self.RecoilMul*GetConVar("sv_css_recoil_scale"):GetFloat()
	self.ExtraSpread = ((self.CoolDown)/100 + self.Owner:GetVelocity():Length()*0.0001*GetConVar("sv_css_velcone_scale"):GetInt())
	
	--if SERVER or game.SinglePlayer() then
	
	--if CLIENT then
		if self.CoolDown > 0.25 and self.HasSideRecoil == true then
			bonusmul = math.Rand(-1,1)
			sideways = 3
		else
			bonusmul = 1
			sideways = 1
		end
		--[[
		print("-----------")
		print("COOLDOWN:" .. self.CoolDown)
		print("DAMAGE:" .. Damage)
		print("SHOTS:" .. Shots)
		print("CONE:" .. Cone)
		print("RECOIL:" .. Recoil)
		print("VIEWKICK:" .. self.ViewKick)
		print("TOTAL:" .. tostring(Angle(self.ViewKick*3*bonusmul,self.ViewKick*math.Rand(-1,1)*sideways,0)))
		print(LocalPlayer())
		print(self.Owner)
		print("-----------")
		--]]
		
		
		
		
		
		
		--self.Owner:ViewPunch(Angle(100,100,100))
		
	--end
	
	self.Owner:ViewPunch(Angle(self.ViewKick*3*bonusmul,self.ViewKick*math.Rand(-1,1)*sideways,0))
	
	
	
	--end
	

	self.CoolDown = math.Clamp(self.CoolDown+(Damage*Shots*0.01),0,10)
	self.CoolTime = CurTime() + ((Damage*Shots*0.01) - 0.1)*self.RecoilMul

	if self.Owner:Crouching() == true and self.Owner:IsOnGround() == true then
		self.CrouchMul = 0.5 * GetConVar("sv_css_cone_scale"):GetFloat()
	else
		self.CrouchMul = 1 * GetConVar("sv_css_cone_scale"):GetFloat()
	end
	
	
	
	

	local bullet = {}
	bullet.Num		= Shots
	bullet.Src		= self.Owner:GetShootPos()
	bullet.Dir		= (self.Owner:EyeAngles() + self.Owner:GetPunchAngle()):Forward()
	bullet.Spread	= Vector(Cone*self.CrouchMul, Cone*self.CrouchMul, 0) + Vector(self.ExtraSpread,self.ExtraSpread,0)
	bullet.Tracer	= 0
	--bullet.AmmoType = self.Primary.Ammo
	bullet.TracerName = "Tracer"
	bullet.Force	= Damage/100
	bullet.Damage	= Damage*math.Rand(0.99,1.01)*GetConVar("sv_css_damage_scale"):GetFloat()
	
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

	if CLIENT then
		self.ViewModelFOV = GetConVar("cl_css_viewmodel_fov"):GetFloat()
	end


	self:BotThink()
	
	--self:ZoomFunctionThink()
	
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
		if self:GetNWInt("zoommode",0) ~= 0 then
			if self.HasDoubleZoom == true then
				sen = 1 / (self.ZoomAmount*(self:GetNWInt("zoommode",0)/2))
			else
				sen = 1 / self.ZoomAmount
			end
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

	local length = GetConVarNumber("cl_css_crosshair_length")
	local width = GetConVarNumber("cl_css_crosshair_width")
	local convar = GetConVarNumber("fov_desired")
	

	local r = GetConVarNumber("cl_css_crosshair_color_r")
	local g = GetConVarNumber("cl_css_crosshair_color_g")
	local b = GetConVarNumber("cl_css_crosshair_color_b")
	local a = GetConVarNumber("cl_css_crosshair_color_a")
	
	if self.Owner:Crouching() == true and self.Owner:IsOnGround() == true then
		crouchmul = 0.5
	else
		crouchmul = 1
	end

	self.ActualCone = self.Primary.Cone * GetConVar("sv_css_cone_scale"):GetFloat()

	local add = 2

	if self:GetNWInt("zoommode",0) ~= 0 then
		add = 0.1
	end

	local heat = self:GetNWInt("weaponheat",0)
	local extra = (self.ActualCone*1000*crouchmul + ( heat*10 + self.Owner:GetVelocity():Length()*0.1*GetConVar("sv_css_velcone_scale"):GetFloat() )) + add
	
	if self.EnableCrosshair == true then
		if self:GetNWInt("zoommode",0) == 0 then
		
			if GetConVarNumber("cl_css_crosshair_style") >= 1 and GetConVarNumber("cl_css_crosshair_style") <= 4 then
		
				if width > 1 then
					local fix = length/2
				
					surface.SetDrawColor(r,g,b,a)
					surface.DrawRect( x/2 - width/2, y/2 - length/2 + extra + fix , width, length )
					surface.DrawRect( x/2 - width/2, y/2 - length/2 - extra - fix, width, length )
					surface.DrawRect( x/2 - length/2 + extra + fix, y/2 - width/2, length, width )
					surface.DrawRect( x/2 - length/2 - extra - fix, y/2 - width/2, length, width )
				else
					surface.SetDrawColor(r,g,b,a)
					surface.DrawLine( x/2+1+extra+length, y/2, x/2+0.5+extra, y/2 )
					surface.DrawLine( x/2-1-extra-length, y/2, x/2-0.5-extra, y/2 )
					surface.DrawLine( x/2, y/2+1+extra+length, x/2, y/2+0.5+extra )
					surface.DrawLine( x/2, y/2-1-extra-length, x/2, y/2-0.5-extra )
				end
			
			end
		
			if GetConVarNumber("cl_css_crosshair_style") >= 2 and GetConVarNumber("cl_css_crosshair_style") <= 5 then
				if GetConVarNumber("cl_css_crosshair_style") == 4 then
					surface.DrawCircle(x/2,y/2, extra + length, Color(r,g,b,a))
				elseif GetConVarNumber("cl_css_crosshair_style") == 3 then
					surface.DrawCircle(x/2,y/2, extra + length/2, Color(r,g,b,a))
				else
					surface.DrawCircle(x/2,y/2, extra, Color(r,g,b,a))
				end
			end
		
		end

	end

	if self.EnableScope == true then
		if self:GetNWInt("zoommode",0) ~= 0 then

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
	if self:GetNWInt("zoommode",0) ~= 0 and element == "CHudWeaponSelection" then return false end
	return true
end

function SWEP:BotThink()

end

