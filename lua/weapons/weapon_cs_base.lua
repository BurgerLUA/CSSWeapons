AddCSLuaFile()

local AllFCVar = FCVAR_REPLICATED + FCVAR_ARCHIVE + FCVAR_NOTIFY + FCVAR_SERVER_CAN_EXECUTE

CreateConVar("sv_css_damage_scale", "1", AllFCVar , "This is the value that all damage from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_recoil_scale", "1", AllFCVar , "This is the value that all recoil from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_cone_scale", "1", AllFCVar , "This is the value that the spread from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_velcone_scale", "1", AllFCVar , "This is the value that the spread from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_heat_scale", "1", AllFCVar , "This is the value that the spread from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_cooltime_scale", "1", AllFCVar , "This is the value that the cooldown delay time from CSS weapons is multiplied by. Default is 1." )
CreateConVar("sv_css_cooldown_scale", "1", AllFCVar , "This is the value that the cooldown amount from CSS weapons is multiplied by. Default is 1." )

CreateConVar("sv_css_enable_csszoom", "0", AllFCVar , "1 enables CSS-Like zooms for the AUG and SG552. Default is 0." )

CreateConVar("sv_css_ammo_loaded", "1", AllFCVar , "1 enables giving weapons already loaded. Default is 1." )
CreateConVar("sv_css_ammo_givespare", "1", AllFCVar , "1 enables giving spare ammo to players upon pickup. Default is 1." )

CreateConVar("sv_css_enable_drops", "1", AllFCVar , "1 enables players to drop css weapons on death, all other values disables it. Default is 1." )
CreateConVar("sv_css_timed_drops", "1", AllFCVar , "1 creates a removal time limit for weapons that drop. 0 never removes weapon drops." )
CreateConVar("sv_css_drop_timer", "60", AllFCVar , "This is the value in seconds that determines how long the weapons are removed after they are dropped. Default is 60." )
CreateConVar("sv_css_limit_equipped", "0", AllFCVar , "1 limits only one primary weapon and one secondary weapon. Equipment is unlimited. Default is 0." )

CreateConVar("sv_css_enable_c4nonadmin", "1", AllFCVar , "1 enables non-admins to use c4, all other values disables it. Default is 1." )
CreateConVar("sv_css_c4_time_explosion", "45", AllFCVar , "This is the value in seconds that the C4 detonates when planted. Default is 45." )
CreateConVar("sv_css_c4_time_defuse", "10", AllFCVar , "This is the value in seconds that the C4 is defused. Default is 10." )
CreateConVar("sv_css_c4_damage", "500", AllFCVar , "This is the value in points that determines maximum damage. Default is 500." )
CreateConVar("sv_css_c4_radius", "1500", AllFCVar , "This is the value in units that determines the maximum blast radius. Default is 1500." )
CreateConVar("sv_css_c4_notifyplayers", "1", AllFCVar , "1 enables players to receive cosmetic round winning notifications and sounds, all other values disables it. Default is 1." )
CreateConVar("sv_css_c4_timelimit", "0", AllFCVar , "Global delay in minutes in which you can plant C4. Default is 0." )

CreateConVar("sv_css_enable_penetration", "1", AllFCVar , "1 enable penetration through objects, 0 disables. Default is 1." )
CreateConVar("sv_css_penetration_scale", "1", AllFCVar , "Base damage lost per unit of penetration. Default is 1." )

CreateConVar("sv_css_enable_mags", "1", AllFCVar , "1 enables cosmetic magazine drops. Requires separate addon. Default is 0." )

CreateConVar("sv_css_enable_damagemod", "1", AllFCVar , "1 enables damage modifications, 0 disables. Default is 1." )
CreateConVar("sv_css_enable_damagesounds", "1", AllFCVar , "1 enables damage sounds, 0 disables. Default is 1." )
CreateConVar("sv_css_enable_deathsounds", "1", AllFCVar , "1 enables death sounds, 0 disables. Default is 1." )

--CreateConVar("sv_css_enable_speedmod", "0", AllFCVar , "1 enables speed mod, 0 disables. Default is 1." )

CreateClientConVar("cl_css_customslots", "0", true, true )
CreateClientConVar("cl_css_viewmodel_fov", "45", true, true )
CreateClientConVar("cl_css_equipment", "1", true, true )
CreateClientConVar("cl_css_shells", "1", true, true )
CreateClientConVar("cl_css_mags", "1", true, true )
CreateClientConVar("cl_css_viewmodel_cmodel", "1", true, true )
CreateClientConVar("cl_css_crosshair_style", "1", true, true )
CreateClientConVar("cl_css_crosshair_length", "15", true, true )
CreateClientConVar("cl_css_crosshair_width", "1", true, true )
CreateClientConVar("cl_css_crosshair_color_r", "50", true, true )
CreateClientConVar("cl_css_crosshair_color_g", "255", true, true )
CreateClientConVar("cl_css_crosshair_color_b", "50", true, true )
CreateClientConVar("cl_css_crosshair_color_a", "200", true, true )
CreateClientConVar("cl_css_quick", "1", true, true )
CreateClientConVar("cl_css_crosshair_dynamic", "1", true, true )

game.AddAmmoType({name = "hegrenade", })
game.AddAmmoType({name = "flashgrenade", })
game.AddAmmoType({name = "smokegrenade",})

if SERVER then
	util.AddNetworkString("CSSCustomSound")
end

if CLIENT then
	
	net.Receive( "CSSCustomSound", function( len )
		local ply = LocalPlayer()
	end )

	language.Add("AlyxGun_ammo","5.7mm")
	language.Add("SniperPenetratedRound_ammo",".45 ACP")
	language.Add("Gravity_ammo","4.6mm")
	language.Add("Battery_ammo","9mm")
	language.Add("CombineCannon_ammo",".50 AE")
	language.Add("AirboatGun_ammo","5.56MM")
	language.Add("StriderMinigun_ammo","7.62mm")
	language.Add("SniperRound_ammo",".338")
	language.Add("GaussEnergy_ammo",".357 SIG")
	
	language.Add("hegrenade_ammo","HE Grenade")
	language.Add("flashgrenade_ammo","Flash Grenade")
	language.Add("smokegrenade_ammo","Smoke Grenade")

	surface.CreateFont( "csd",{font = "csd",size = 48,weight = 700})
end


--player_manager.AddValidHands( "css_arctic", "models/weapons/ct_arms.mdl", 0, "00000000" )


SWEP.DrawAmmo				= true
SWEP.DrawCrosshair			= false

SWEP.VModelFlip				= false
SWEP.VModelFOV				= 47

SWEP.CSMuzzleFlashes 		= true
SWEP.CSMuzzleX				= false

SWEP.Weight					= 0
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.WeaponType				= "Primary"
SWEP.Category				= "Counter-Strike"
SWEP.Author					= "Burger"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions			= ""

SWEP.Spawnable				= false
SWEP.UseHands				= true

SWEP.Cost					= 0
SWEP.MoveSpeed				= 250

SWEP.Primary.Damage			= 35
SWEP.Primary.Range			= 56756
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/ak47/ak47-1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.Automatic 		= true
SWEP.Primary.Delay			= .14

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.SpareClip		= 90

SWEP.Secondary.Ammo 		= "none"
SWEP.Secondary.ClipSize 	= -1
SWEP.Secondary.DefaultClip 	= -1
SWEP.Secondary.Automatic	= false

SWEP.ReloadSound 			= nil
SWEP.BurstSound				= nil

SWEP.RecoilMul				= 1
SWEP.SideRecoilMul			= 1
SWEP.VelConeMul				= 1
SWEP.HeatMul				= 1

SWEP.BurstSpeedOverride 	= 1

SWEP.HasCrosshair 			= true

SWEP.HasScope 				= false
SWEP.HasDoubleZoom			= false
SWEP.HasCSSZoom 			= false
SWEP.ZoomAmount 			= 1
SWEP.IgnoreZoomSlow			= false

SWEP.HasBurstFire 			= false
SWEP.BurstConeMul			= 1
SWEP.HasSilencer 			= false 
SWEP.BurstOverride			= 3

SWEP.HasIronSights 			= false
SWEP.IronSightTime			= 1
SWEP.IronSightsPos 			= Vector( 0, 0, 0 )
SWEP.IronSightsAng 			= Vector( 0, 0, 0 )

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasSideRecoil			= false

SWEP.BurgerBase				= true

SWEP.AlreadyGiven			= false
SWEP.SpecialThrow 			= false
SWEP.PhysBullets			= false
SWEP.IsPrivate 				= false

SWEP.HasPreThrow			= true
SWEP.CanHolster = true
SWEP.DamageFalloff 			= 0

function SWEP:SetupDataTables( )

	self:NetworkVar("Float",0,"CoolDown")
	self:SetCoolDown(0)
	self:NetworkVar("Float",1,"CoolTime")
	self:SetCoolTime(0)
	self:NetworkVar("Float",2,"NextShell")
	self:SetNextShell(0)
	self:NetworkVar("Float",3,"ReloadFinish")
	self:SetReloadFinish(0)
	self:NetworkVar("Float",4,"NextZoomTime")
	self:SetNextZoomTime(0)
	self:NetworkVar("Float",5,"AttachDelay")
	self:SetAttachDelay(0)
	self:NetworkVar("Float",6,"BoltDelay")
	self:SetBoltDelay(0)
	
	self:NetworkVar("Float",8,"NextBulletDelay")
	self:SetNextBulletDelay(0)
	
	--self:NetworkVar("Float",9,"ZoomMod")
	--self:SetZoomMod(0)
	
	self:NetworkVar("Int",0,"BulletQueue")
	self:SetBulletQueue(0)

	self:NetworkVar("Bool",0,"IsReloading")
	self:SetIsReloading( false )
	self:NetworkVar( "Bool",1,"IsBurst" )
	self:SetIsBurst( false )
	self:NetworkVar("Bool",2,"IsShotgunReload")
	self:SetIsShotgunReload( false )
	self:NetworkVar("Bool",3,"IsSilenced")
	self:SetIsSilenced( false )
	self:NetworkVar("Bool",4,"IsNormalReload")
	self:SetIsNormalReload( false )

end

function SWEP:Initialize()

	self:SetHoldType( self.HoldType )
	
	util.PrecacheSound(self.Primary.Sound)
	
	if (CLIENT or game.SinglePlayer()) then
		if GetConVarNumber("cl_css_customslots") == 1 then
			if self.WeaponType == "Primary" then
				self.Slot = 2
			elseif self.WeaponType == "Secondary" then
				self.Slot = 1
			end
		end
	end
	
end

function SWEP:EquipAmmo(ply)
	if GetConVarNumber("sv_css_ammo_givespare") == 1 then
		ply:GiveAmmo(self.Primary.SpareClip,self.Primary.Ammo,false)
	elseif self.WeaponType == "Equipment" then
		ply:GiveAmmo(self.Primary.SpareClip,self.Primary.Ammo,false)
	elseif self.WeaponType == "Throwable" then
		ply:GiveAmmo(1,self.Primary.Ammo,false)
	end
end

function SWEP:OwnerChanged()
	if SERVER then
		timer.Simple(0.1, function()
			if self.AlreadyGiven == false then
			
				if GetConVarNumber("sv_css_ammo_loaded") == 1 then
					self:SetClip1(self.Primary.ClipSize)
				end

				if GetConVarNumber("sv_css_ammo_givespare") == 1 then
					self.Owner:GiveAmmo(self.Primary.SpareClip,self.Primary.Ammo,false)
				end

				self.AlreadyGiven = true
			end		
		end)	
	end
end


function SWEP:Deploy()

	if SERVER then
	
		if GetConVarNumber("sv_css_limit_equipped") == 1 then
			for k,v in pairs (self.Owner:GetWeapons()) do
				if v.BurgerBase ~= nil then
					if v ~= self then
						if self.WeaponType == v.WeaponType and not (v.WeaponType == "Free" or v.WeaponType == "Throwable") then
							self.Owner:StripWeapon(v:GetClass())
							local dropped = ents.Create("ent_cs_droppedweapon")
							dropped:SetPos(self.Owner:GetPos() + self.Owner:OBBCenter() )
							dropped:SetAngles(self.Owner:EyeAngles() )
							dropped:SetModel(weapons.GetStored(v:GetClass()).WorldModel)
							dropped:Spawn()
							dropped:Activate()
							dropped:SetNWString("class",v:GetClass())
							dropped:SetNWInt("clip",v:Clip1())
						end
					end
				end
			end
		end
		
		self.GetMagModel = string.Replace( self.WorldModel,"/w_" , "/unloaded/" )
		self.GetMagModel = string.Replace( self.GetMagModel , ".mdl" , "_mag.mdl")
		
	end

	if IsValid(self.Owner:GetHands()) then
		self.Owner:GetHands():SetMaterial("")
	end
	
	self.Owner:DrawViewModel(true)

	if self.HasSilencer then
	
		if self:GetIsSilenced() then
			self:SendWeaponAnim(ACT_VM_DRAW_SILENCED)
			self.WorldModel = self.WorldModel2
		else
			self:SendWeaponAnim(ACT_VM_DRAW)
			self.WorldModel = self.WorldModel1
		end
	else
		self:SendWeaponAnim(ACT_VM_DRAW)
	end

	if self.WeaponType ~= "Throwable" then
		self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
	end
	
	return true
	
end

function SWEP:Holster()
	if self:IsBusy() then return false end
	self:SetZoomed(false)
	return true
end

SWEP.IsZoomed = false

function SWEP:SetZoomed(shouldzoom)
	if shouldzoom then
		if game.SinglePlayer() then
			self.Owner:SetFOV( GetConVar("fov_desired"):GetFloat() / (1 + self.ZoomAmount), 0.1 )
		else
			self.IsZoomed = true
		end
	else
		if game.SinglePlayer() then
			self.Owner:SetFOV( GetConVar("fov_desired"):GetFloat(), 0.1 )
		else
			self.IsZoomed = false
		end
	end
end

function SWEP:GetZoomed()
	if game.SinglePlayer() then
		return self.Owner:GetFOV() < GetConVar("fov_desired"):GetFloat()
	else
		return self.IsZoomed
	end
end

function SWEP:PrimaryAttack()
	
	if self:GetIsReloading() and self:GetIsShotgunReload() then
		self:FinishShotgunReload()
	end
	
	if not self:CanPrimaryAttack() then return end
	if self:IsBusy() then return end
	if self:IsUsing() then return end
	if self.WeaponType == "Throwable" then self:PreThrowObject() return end
	
	self:TakePrimaryAmmo(1)
	
	self:AfterPump() -- don't predict, has animations
	self:WeaponDelay() -- don't predict, has delay
	self:HandleBurstDelay() -- don't predict
	self:WeaponAnimation() -- don't predict, has animations
	
	--[[
	if (CLIENT or game.SinglePlayer()) then 
		self:AddRecoil() -- Predict
	end
	--]]
	
	if (IsFirstTimePredicted() or game.SinglePlayer()) then
	
		self:AfterZoom() -- Predict
		self:PreShootBullet() -- Predict
		self:WeaponSound()
		
		if (CLIENT or game.SinglePlayer()) then 
			self:AddRecoil() -- Predict
		end
		
	end

end

function SWEP:HandleReloadCancel()
	if self:GetIsShotgunReload() then
		self:SetIsReloading(false)
		self:SetIsShotgunReload(false)
	end
end

function SWEP:AfterPump()
	if self:GetIsShotgunReload() then
		self:SetIsShotgunReload(false)
		self:SetIsReloading(false)
		self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
		self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		return 
	end
end

function SWEP:HandleBurstDelay()
	if self.HasBurstFire then
		if self:GetIsBurst() then
			if self:GetBulletQueue() == 0 then

				local NumBullets = self.BurstOverride - 1

				self:SetNextBulletDelay(CurTime() + self:GetBurstMath() )
				self:SetBulletQueue(NumBullets)

			end			
		end
	end
end

function SWEP:GetBurstMath()
	return (self.BurstSpeedOverride * self.Primary.Delay) / self.BurstOverride
end

function SWEP:WeaponDelay()
	
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	
	if self.HasBoltAction then
		self.BoltDelay = CurTime() + self.Primary.Delay
	end
	

	if self.HasBurstFire then
		if self:GetIsBurst() then
			local Delay = self.BurstSpeedOverride * self.Primary.Delay
			if self.BurstOverride >= self:Clip1() then
				self:SetNextPrimaryFire(CurTime() + Delay*2)
			else
				self:SetNextPrimaryFire(CurTime() + Delay*self.BurstOverride*2)
			end
		end
	end
	
end

function SWEP:AfterZoom()
	if self.HasScope then
		if self.HasBoltAction then
			if self:GetZoomed() then
				self:SetZoomed(false)
				self.WasZoomed = true
				self.BoltDelay = CurTime() + self.Owner:GetViewModel():SequenceDuration()
			end
		end
	end
end

function SWEP:PreShootBullet() -- Should be predicted
	local Damage = self.Primary.Damage
	local Shots = self.Primary.NumShots
	local Cone = self:HandleCone(self.Primary.Cone)
	local Source = self.Owner:GetShootPos()
	local Direction = self.Owner:GetAimVector()
	
	if self.Owner:IsPlayer() then
		Direction = (self.Owner:EyeAngles() + self.Owner:GetPunchAngle()):Forward()
	end
	
	self:ShootBullet(Damage,Shots,Cone,Source,Direction,true)
	self:AddHeat(Damage,Shots)
end

function SWEP:WeaponAnimation()

	if self:GetIsShotgunReload() then
		self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
		return
	end
	
	if self:GetIsSilenced() then
		self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_SILENCED)
	else
		self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	end

	self.Weapon:MuzzleFlash()
	self.Owner:SetAnimation(PLAYER_ATTACK1)

end

function SWEP:WeaponSound()

	local GunSound = self.Primary.Sound
	local SoundMul = 1


	if self.HasSilencer then
		if self:GetIsSilenced() then
			GunSound = self.Secondary.Sound
			SoundMul = 0.1
		end
	end

	if self.HasBurstFire then
		if self.BurstSound != nil then
			if self:GetIsBurst() then
				GunSound = nil
			end
		end
	end
	
	if GunSound ~= nil then
		self:EmitGunSound(GunSound, ((50 + self.Primary.Damage)/100)*SoundMul  )
	end

end

function SWEP:HandleCone(Cone)

	if self.HasBurstFire then
		if self:GetIsBurst() then
			Cone = Cone * self.BurstConeMul
		end
	elseif self.HasSilencer then
		if self:GetIsSilenced() then
			Cone = Cone*0.9
		end
	end
	
	if self.Owner:IsPlayer() and self.Owner:Crouching() and self.Owner:IsOnGround() then
		if self.WeaponType == "Secondary" and self.HoldType == "revolver" then
			Cone = Cone * 0.5
		else
			Cone = Cone * 0.8
		end
	end

	Cone = Cone * GetConVarNumber("sv_css_cone_scale")
	Cone = Cone + (self:GetCoolDown()*self.HeatMul*0.01)
	
	local VelConvar = self.VelConeMul * GetConVarNumber("sv_css_velcone_scale") * 0.0001
	local VelCone = self.Owner:GetVelocity():Length() * VelConvar
	local AirCone = 400 * VelConvar
	
	if self.Owner:IsOnGround() then
		Cone = Cone + VelCone
	else
		Cone = Cone + math.max(AirCone,VelCone)
	end

	return Cone

end

if (CLIENT or game.SinglePlayer()) then
	SWEP.PunchAngleUp = Angle(0,0,0)
	SWEP.PunchAngleDown = Angle(0,0,0)
end

function SWEP:GetRecoilMath()
	return self.Primary.Damage*self.Primary.NumShots*self.RecoilMul*(self.Primary.Delay*12.5)*0.15*GetConVarNumber("sv_css_recoil_scale")
end

function SWEP:AddRecoil()
 
	local UpPunch = -self:GetRecoilMath()
	local SidePunch = 0

	local Math = math.abs(self.PunchAngleUp.p*3)
	
	if self.HasSideRecoil then
		if math.max(Math*self.SideRecoilMul,Math) > 1 then
			SidePunch = UpPunch*math.random(-1,1)*self.SideRecoilMul
		end
	end
	
	if self.HasDownRecoil then
		if Math > 2 then
			UpPunch = UpPunch*math.random(-1,1)
		end
	end

	self.PunchAngleUp = self.PunchAngleUp + Angle(UpPunch,SidePunch,0)
	self.PunchAngleDown = self.PunchAngleDown + Angle(UpPunch,SidePunch,0)
	
end

function SWEP:SecondaryAttack()
	
	if CLIENT then
		if self.HasBoltAction and (self.HasScope or self.HasIronsights) and self.BoltDelay > CurTime() then
			if self.WasZoomed then
				self.WasZoomed = false
			else
				self.WasZoomed = true
			end
		end
	end
	
	if self:IsBusy() then return end
	
	if (IsFirstTimePredicted() or game.SinglePlayer()) then
		if self:IsUsing() then
			if self.HasBurstFire then
				self:SwitchFireMode()
			elseif self.HasSilencer then
				self:Silencer()
			end
		else
			if (CLIENT or game.SinglePlayer()) then
				if self.HasIronSights or self.HasScope then
					self:HandleZoom(1)
				end
			end
		end
	end

end

function SWEP:SwitchFireMode()

	if not (IsFirstTimePredicted() or game.SinglePlayer()) then return end
	
	local Message = "Semi-Automatic"

	if self.Primary.Automatic then
		Message = "Automatic"
	end

	if self:GetIsBurst() then
		self:SetIsBurst(false)
		if (CLIENT or game.SinglePlayer()) then
			self:EmitGunSound("weapons/smg1/switch_single.wav",0.01)
		end
		self.Owner:PrintMessage( HUD_PRINTCENTER, "Switched to "..Message )
	else
		self:SetIsBurst(true)
		if (CLIENT or game.SinglePlayer()) then
			self:EmitGunSound("weapons/smg1/switch_burst.wav",0.01)
		end
		self.Owner:PrintMessage( HUD_PRINTCENTER, "Switched to Burst Fire Mode" )
	end

end


function SWEP:Silencer()

	if self:IsBusy() then return end
		
	if self:GetIsSilenced() then
		self:SendWeaponAnim(ACT_VM_DETACH_SILENCER)
		if not (IsFirstTimePredicted() or game.SinglePlayer()) then return end
		self.WorldModel = self.WorldModel1
		self:SetIsSilenced(false)
	else
		self:SendWeaponAnim(ACT_VM_ATTACH_SILENCER)
		if not (IsFirstTimePredicted() or game.SinglePlayer()) then return end
		self.WorldModel = self.WorldModel2
		self:SetIsSilenced(true)
	end
	
	self:SetAttachDelay(CurTime() + self.Owner:GetViewModel():SequenceDuration())
	
end

function SWEP:HandleZoom(delay)

	if not (IsFirstTimePredicted() or game.SinglePlayer()) then return end
	if not self:CanBoltZoom() then return end
	if self:IsBusy() then return end
	
	if self.HasScope then
		self:EmitGunSound("weapons/zoom.wav",0.01)
	end

	if self:GetZoomed() then
		self:SetZoomed(false)
	else
		self:SetZoomed(true)
	end

	self.NextZoomTime = CurTime() + delay
	
end

if CLIENT then 
	SWEP.BoltDelay = 0
	SWEP.NextZoomTime = 0
end



function SWEP:CanBoltZoom()

	if not self.HasBoltAction then 
		return true
	else
		if self.BoltDelay <= CurTime() then
			return true
		else
			return false
		end
	end

	return true
	
end

function SWEP:TranslateFOV(fov)

	if not game.SinglePlayer() then
		local ZoomMag = 1 + ( self.ZoomMod * self.ZoomAmount )
		fov = GetConVar("fov_desired"):GetFloat() / ZoomMag
	end
	
	return fov
	
end

function SWEP:CanPrimaryAttack()

	if self:GetNextPrimaryFire() > CurTime() then return false end

	if self:Clip1() == -1 then
		if self.Owner:GetAmmoCount(self.Primary.Ammo) < 1 then 
			return false 
		end
	elseif self:Clip1() <= 0 then
		self.Owner:EmitSound("weapons/clipempty_pistol.wav",100,100)
		self:SetNextPrimaryFire(CurTime() + 0.25)
		return false
	end

	return true
	
end

function SWEP:AddHeat(Damage,Shots)

	local DamageMod = Damage*Shots*0.01
	local ConeMod = (math.max(0.001,self.Primary.Cone)^-0.1)
	local WeightMod = (self.MoveSpeed / 250)	

	self:SetCoolDown( self:GetCoolDown() + DamageMod*ConeMod*WeightMod*GetConVarNumber("sv_css_heat_scale") )
	self:SetCoolTime( CurTime() + self.Primary.Delay + 0.1*GetConVarNumber("sv_css_cooltime_scale") )
	
end

function SWEP:ShootBullet(Damage, Shots, Cone, Source, Direction,EnableTracer)
	
	if not IsFirstTimePredicted( ) then return end
	
	local bullet = {}
	bullet.Damage	= Damage
	bullet.Num		= Shots
	bullet.Spread	= Vector(Cone, Cone, 0)
	bullet.Src		= Source
	bullet.Dir		= Direction
	--bullet.Distance	= self.Primary.Range
	bullet.HullSize = 512
	
	if EnableTracer then
		bullet.Tracer	= 1
	else
		bullet.Tracer	= 0
	end
	
	if self:GetClass() == "weapon_cs_ar2" then
		bullet.TracerName = "AR2Tracer"
	else
		bullet.TracerName = "Tracer"
	end
	
	bullet.Force	= nil
	bullet.Callback = function( attacker, tr, dmginfo)
		if attacker:IsPlayer() then
		
			if GetConVarNumber("sv_css_enable_penetration") == 1 then
				self:WorldBulletSolution(tr.HitPos,Direction,Damage)
			end
			
			if SERVER then
				if tr.Entity:GetClass() == "prop_vehicle_prisoner_pod" or tr.Entity:IsVehicle() then
					if tr.Entity:GetDriver() ~= NULL then
						tr.Entity:GetDriver():TakeDamageInfo(dmginfo)
					end
				end
			end
			
		end
	end
	
	self.Owner:FireBullets(bullet)
	
end

--PrecacheParticleSystem("Tracer")

function SWEP:WorldBulletSolution(Pos,Direction,Damage)

	local Amount = 3
	
	local data = {}
	
	data.start = Pos + Direction
	data.endpos = Pos + Direction*Amount
	
	local trace = util.TraceLine(data)
	local HitEnt = trace.Entity
	
	local MatMul = 1
	local mat = trace.MatType

	if mat == MAT_GLASS then
		MatMul = 0.5
	elseif MAT_SAND or MAT_SNOW or MAT_DIRT then
		MatMul = 2
	elseif mat == MAT_ANTLION or mat == MAT_ALIENFLESH or mat == MAT_FLESH then
		MatMul = 0.75
	elseif mat == MAT_CONCRETE then
		MatMul = 5
	elseif mat == MAT_METAL then
		MatMul = 10
	end

	local DamageMath = math.Round(Damage - (GetConVarNumber("sv_css_penetration_scale")*MatMul*Amount),2)
	
	if DamageMath > 0 then
		if trace.StartSolid then
			self:WorldBulletSolution(data.endpos,Direction,DamageMath)
		else
			self:ShootBullet(DamageMath, 1, 0, data.endpos,Direction,false)
		end
	end


end

function SWEP:EmitGunSound(GunSound,Level)

	--if CLIENT or game.SinglePlayer() then
	
	--self.Owner:EmitSound(GunSound, 100 , 100, 1, CHAN_WEAPON )
	
	self.Weapon:EmitSound(GunSound)
		
	--[[
	elseif SERVER then
	
		if not Level then Level = 1 end
		
		net.Start("CSSCustomSound")
			net.WriteVector(self:GetPos())
			net.WriteEntity(self.Weapon)
			net.WriteString(GunSound)
			net.WriteFloat(Level)
			net.WriteFloat(CHAN_WEAPON)
		net.Broadcast()
		
	end
	--]]
	
end


if SERVER then
	util.AddNetworkString("CSSCustomSound")
end

if CLIENT then
	
	net.Receive( "CSSCustomSound", function( len )
		local ply = LocalPlayer()
		
		local Pos = net.ReadVector()
		local Weapon = net.ReadEntity()
		local GunSound = net.ReadString()
		local Level = (net.ReadFloat()*30)^0.1
		local Channel = net.ReadFloat()
		
		local Distance = ply:GetPos():Distance(Pos)
		local FinalPos = ply:GetPos() + (Pos - ply:GetPos()):Angle():Forward()*256
		local FinalVolume =  math.Clamp( (1024*Level*1) / Distance,0,1)
		local FinalPitch = 75 + 25 * FinalVolume

		if IsValid(Weapon) and IsValid(Weapon.Owner) then
			if ply ~= Weapon.Owner and FinalVolume > 0 then
			
				local SoundData = {
					name = Weapon:GetClass() .. Weapon:EntIndex(),
					channel = CHAN_VOICE,
					sound = GunSound,
					pitch = FinalPitch,
					volume = FinalVolume
				}
				
				
				sound.Add(SoundData)
					
				if Weapon and Weapon.Owner then
					Weapon:StopSound(Weapon:GetClass() .. Weapon:EntIndex())
					sound.Play(Weapon:GetClass() .. Weapon:EntIndex(),FinalPos,75,0,0)
				end

			end
		end
		
	end )
end


function SWEP:BulletEffect(HitPos,StartPos,HitEntity,SurfaceProp)
	
	if HitEntity:IsPlayer() then return end
	
	local effect = EffectData()
	effect:SetOrigin(HitPos)
	effect:SetStart(StartPos)
	effect:SetSurfaceProp(SurfaceProp)
	effect:SetDamageType(DMG_BULLET)
	
	if (CLIENT or game.SinglePlayer()) then
		effect:SetEntity(HitEntity)
	else
		effect:SetEntIndex(HitEntity:EntIndex())
	end

	util.Effect("Impact", effect)
	
end

function SWEP:IsBusy()

	if not self.CanHolster then
		return true
	elseif self:GetIsReloading() then
		return true
	elseif self.HasSilencer then
		if self:GetAttachDelay() > CurTime() then
			return true
		end
	end
	
	return false

end

function SWEP:IsUsing()
	if self.Owner:IsPlayer() and self.Owner:KeyDown(IN_USE) then return true end
end

function SWEP:Reload()
	
	if self:IsBusy() then return end
	--[[
	if self.Owner:KeyPressed(IN_USE) then
		if self.HasBurstFire then
			self:SwitchFireMode()
		elseif self.HasSilencer then
			self:Silencer()
		end
		return
	end
	if self:IsUsing() then return end
	--]]
	if self:Clip1() >= self.Primary.ClipSize then return end
	if self:GetNextPrimaryFire() > CurTime() then return end
	if self.WeaponType == "Throwable" then return end
	if self.Owner:GetAmmoCount(self:GetPrimaryAmmoType()) == 0 	then
		if self.Owner:IsBot() then
			self.Owner:GiveAmmo(self.Primary.ClipSize,self.Primary.Ammo,true)
		end
	return end
	
	if self.HasZoom or self.HasIronSights then
		self:SetZoomed(false)
	end

	if SERVER then
		if self.HasPumpAction == false then
			if self:Clip1() > 0 then
				self.Owner:GiveAmmo(self:Clip1(),self.Primary.Ammo,true)
				self:SetClip1(0)
			end
		end
	end
	
	if self.HasSilencer then
		if self:GetIsSilenced() then
			self:SendWeaponAnim(ACT_VM_RELOAD_SILENCED)
		else
			self:SendWeaponAnim(ACT_VM_RELOAD)
		end
	else
		self:SendWeaponAnim(ACT_VM_RELOAD)
	end
	
	if (CLIENT or game.SinglePlayer()) then
		if self.ReloadSound then
			if not self.HasPumpAction then
				self:EmitGunSound(self.ReloadSound)
			end
		end
	end

	if self.HasPumpAction then
		self.NextShell = 0.5
		self:SetIsShotgunReload(true)
	else
		self:SetReloadFinish(CurTime() + self.Owner:GetViewModel():SequenceDuration() * (1/self.Owner:GetViewModel():GetPlaybackRate()))
		self:SetIsNormalReload(true)
	end
	
	self.Owner:SetAnimation(PLAYER_RELOAD)
	
	if self.HasScope then
		self:SetZoomed(false)
		self.NextZoomTime = CurTime() + self.Owner:GetViewModel():SequenceDuration() * (1/self.Owner:GetViewModel():GetPlaybackRate())
	end
	
	if SERVER then
		if GetConVarNumber("sv_css_enable_mags") == 1 then
			timer.Simple(0.75, function()
				if self.GetMagModel then
					if file.Exists(self.GetMagModel,"GAME") then
						local mag = ents.Create("ent_cs_debris")
						mag:SetPos(self.Owner:GetShootPos() + self.Owner:GetUp()*-12 + self.Owner:GetRight()*3)
						mag:SetModel(self.GetMagModel)
						mag:SetAngles(self.Owner:EyeAngles())
						mag:Spawn()
						mag:Activate()
						SafeRemoveEntityDelayed(mag,10)
					end
				end
			end)
		end
	end

	self:SetIsReloading(true)
	
end

function SWEP:GetViewModelPosition( pos, ang )

	ang = LocalPlayer():EyeAngles()

	if ( !self.IronSightsPos ) then return pos, ang end
	
	local bIron = self:GetZoomed() and self.HasIronSights
	
	if ( bIron != self.bLastIron ) then
	
		self.bLastIron = bIron 
		self.fIronTime = CurTime()
		
		if ( bIron ) then 
			self.SwayScale 	= 0.5
			self.BobScale 	= 0.5
		else 
			self.SwayScale 	= 1
			self.BobScale 	= 1
		end
	
	end
	
	local fIronTime = self.fIronTime or 0

	if ( !bIron && fIronTime < CurTime() - self.IronSightTime ) then 
		return pos, ang 
	end
	
	local Mul = 1.0
	
	if ( fIronTime > CurTime() - self.IronSightTime ) then
	
		Mul = math.Clamp( (CurTime() - fIronTime) / self.IronSightTime, 0, 1 )
		
		if (!bIron) then
			Mul = 1 - Mul 
		end
	
	end
	
	local Offset = self.IronSightsPos
	
	if game.SinglePlayer() then
		Offset = Offset - Vector(0,Offset.y,0)
	end
	

	if ( self.IronSightsAng ) then
		
		ang = ang * 1
		
		ang:RotateAroundAxis( ang:Right(), 		(self.IronSightsAng.x * Mul))-- + CompAngles.p )
		ang:RotateAroundAxis( ang:Up(), 		(self.IronSightsAng.y * Mul))-- + CompAngles.y )
		ang:RotateAroundAxis( ang:Forward(), 	(self.IronSightsAng.z * Mul))-- + CompAngles.r )

	end
	
	local Right 	= ang:Right()
	local Up 		= ang:Up()
	local Forward 	= ang:Forward()

	pos = pos + Offset.x * Right * Mul
	pos = pos + Offset.y * Forward * Mul
	pos = pos + Offset.z * Up * Mul

	return pos, ang
	
end

function SWEP:Think()

	self:HandleCoolDown() -- don't predict
	self:HandleShotgunReloadThinkAnimations() -- don't predict
	self:EquipThink() -- don't predict, ever
	self:HandleBurstFireShoot() -- don't predict, ever
	self:HandleReloadThink() -- don't predict, ever
	
	
	if (CLIENT or game.SinglePlayer()) then
		self.ViewModelFOV = GetConVarNumber("cl_css_viewmodel_fov")
		self:HandleBoltZoomMod()
		self:HandleZoomMod()
		
		if IsFirstTimePredicted() then 
			self:RemoveRecoil()
		end
		
	end
	
end

function SWEP:HandleBurstFireShoot()
	if self.HasBurstFire then
		if self:GetNextBulletDelay() <= CurTime() and self:GetBulletQueue() > 0 then
		
			self:SetNextBulletDelay(CurTime() + self:GetBurstMath())
			self:SetBulletQueue(self:GetBulletQueue() - 1)

			if self:Clip1() > 0 then
				self:TakePrimaryAmmo(1)
				self:WeaponAnimation()
				
				
				if (IsFirstTimePredicted() or game.SinglePlayer()) then
					self:PreShootBullet()
					self:WeaponSound()
					if (CLIENT or game.SinglePlayer()) then 
						self:AddRecoil()
					end
				
				end
			end
			
		end
	end
end



function SWEP:HandleReloadThink()

	if self:GetIsNormalReload() then
	
		self:SetIsReloading(true)

		if self:GetReloadFinish() <= CurTime() then

			if self.Owner:GetAmmoCount( self.Primary.Ammo ) >= self.Primary.ClipSize then
				self:SetClip1(self.Primary.ClipSize)
				self.Owner:RemoveAmmo(self.Primary.ClipSize,self.Primary.Ammo)
			else
				self:SetClip1(self.Owner:GetAmmoCount(self.Primary.Ammo))
				self.Owner:RemoveAmmo(self.Owner:GetAmmoCount(self.Primary.Ammo),self.Primary.Ammo)
			end

			self:SetIsNormalReload(false)
			self:SetIsReloading(false)
			
		end
		
	elseif self:GetIsShotgunReload() then
	
		self:SetIsReloading(true)
	
		if self:GetNextShell() <= CurTime() then
			if self.Owner:GetAmmoCount( self.Primary.Ammo ) > 0 and self:Clip1() < self.Primary.ClipSize then 
				self:SendWeaponAnim(ACT_VM_RELOAD)
				self:SetClip1(self:Clip1()+1)
				self.Owner:RemoveAmmo(1,self.Primary.Ammo)
				self:SetNextShell(CurTime()+0.5)

				if (CLIENT or game.SinglePlayer()) then
					if self.ReloadSound then
						self:EmitGunSound(self.ReloadSound)
					end
				end
				
			else
				self:FinishShotgunReload()
			end
		end
		
	end
end

function SWEP:FinishShotgunReload()
	self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
	self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
	self:SetIsShotgunReload(false)
	self:SetIsReloading(false)
end




function SWEP:HandleShotgunReloadThinkAnimations()
	if self:GetIsShotgunReload() then
		if self:GetNextShell() <= CurTime() then
			if self.Owner:GetAmmoCount( self.Primary.Ammo ) > 0 and self:Clip1() < self.Primary.ClipSize then 
				self:SendWeaponAnim(ACT_VM_RELOAD)

				if (CLIENT or game.SinglePlayer()) then
					if self.ReloadSound then
						self:EmitGunSound(self.ReloadSound)
					end
				end
				
			else
				self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
				self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
			end
		end
	end
	
end


function SWEP:HandleCoolDown()
	if self:GetCoolTime() <= CurTime() then
		if self:GetCoolDown() ~= 0 then
			local CoolMod = math.Clamp(self:GetCoolDown() - FrameTime()*6.6*GetConVarNumber("sv_css_cooldown_scale"),0,20)
			self:SetCoolDown(CoolMod)
		end
	end
end

SWEP.ZoomMod = 0

function SWEP:HandleZoomMod()
	if not game.SinglePlayer() then
		if self:GetZoomed() then
			if self.HasIronSights then
				self.ZoomMod = math.min(self.ZoomMod + FrameTime()*6,1)
			else
				self.ZoomMod = 1
			end
		else
			if self.HasIronSights then
				self.ZoomMod = math.max(self.ZoomMod - FrameTime()*6,0)
			else
				self.ZoomMod = 0
			end
		end
	end
end

function SWEP:HandleBoltZoomMod()
	if self:CanBoltZoom() then
		if self.WasZoomed then
			if not self:GetIsReloading() then
				self.WasZoomed = false
				self:SetZoomed(true)
			end
		end
	end
end

function SWEP:RemoveRecoil()

	local pUp = self:HandleLimits(self.PunchAngleUp.p)
	local yUp = self:HandleLimits(self.PunchAngleUp.y)
	local rUp = self:HandleLimits(self.PunchAngleUp.r)

	local pDown = self:HandleLimits(self.PunchAngleDown.p)
	local yDown = self:HandleLimits(self.PunchAngleDown.y)
	local rDown = self:HandleLimits(self.PunchAngleDown.r)

	local FrameMul = 0.3
	local UpMul = 1 * FrameMul
	local DownMul = 0.75 * FrameMul
	
	local ModAngle = Angle(0,0,0)
	
	if self.PunchAngleUp ~= Angle(0,0,0) then
		local CurrentMod = Angle( (pUp*UpMul),(yUp*UpMul),(rUp*UpMul))
		ModAngle = ModAngle + CurrentMod
		self.PunchAngleUp = self.PunchAngleUp - CurrentMod
	end
	
	if self.PunchAngleDown ~= Angle(0,0,0)  then
		local CurrentMod = Angle( (pDown*DownMul),(yDown*DownMul),(rDown*DownMul))
		ModAngle = ModAngle - CurrentMod
		self.PunchAngleDown = self.PunchAngleDown - CurrentMod
	end
	
	if ModAngle ~= Angle(0,0,0) then
		self.Owner:SetEyeAngles(self.Owner:EyeAngles() + ModAngle)
	end
	
end

function SWEP:HandleLimits(value)

	local Limit = 0.001

	if value < Limit and value > -Limit then
		value = 0
	end

	return value
	
end

function SWEP:AdjustMouseSensitivity()

	local Sensitivity = self.Owner:GetFOV() / GetConVar("fov_desired"):GetFloat()
	
	return Sensitivity
	
end

local StoredCrosshair = nil

function SWEP:DrawHUD()

	local x = ScrW()
	local y = ScrH()

	local length = GetConVarNumber("cl_css_crosshair_length")
	local width = GetConVarNumber("cl_css_crosshair_width")
	
	local fovbonus = GetConVarNumber("fov_desired")/self.Owner:GetFOV()

	local r = GetConVarNumber("cl_css_crosshair_color_r")
	local g = GetConVarNumber("cl_css_crosshair_color_g")
	local b = GetConVarNumber("cl_css_crosshair_color_b")
	local a = GetConVarNumber("cl_css_crosshair_color_a")
	
	local VelCone = self.Owner:GetVelocity():Length()*0.0001
	
	
	if GetConVarNumber("cl_css_crosshair_dynamic") == 0 then
		Cone = math.Clamp(self.Primary.Cone*900,0,1000)
	else
		Cone = math.Clamp(self:HandleCone(self.Primary.Cone) * 900,0,1000)*fovbonus
	end
	
	if not StoredCrosshair then
		StoredCrosshair = Cone
	end
	
	local PingMul = math.Clamp(300 - LocalPlayer():Ping(),100,300)*2
	
	if Cone > StoredCrosshair then
		StoredCrosshair = math.min(Cone,StoredCrosshair + FrameTime()*PingMul )
	elseif Cone < StoredCrosshair then
		StoredCrosshair = math.max(Cone,StoredCrosshair - FrameTime()*PingMul )
	end


	if self.HasCrosshair then
	
		if !self:GetZoomed() or self.EnableIronCross then
		
			local FinalCone = math.Max(StoredCrosshair,width,length/4)

			if GetConVarNumber("cl_css_crosshair_style") >= 1 and GetConVarNumber("cl_css_crosshair_style") <= 4 then
				if width > 1 then
					local fix = length/2
				
	
					surface.SetDrawColor(r,g,b,a)
					surface.DrawRect( x/2 - width/2, y/2 - length/2 + FinalCone + fix , width, length )
					surface.DrawRect( x/2 - width/2, y/2 - length/2 - FinalCone - fix, width, length )
					surface.DrawRect( x/2 - length/2 + FinalCone + fix, y/2 - width/2, length, width )
					surface.DrawRect( x/2 - length/2 - FinalCone - fix, y/2 - width/2, length, width )
				else
					surface.SetDrawColor(r,g,b,a)
					surface.DrawLine( x/2+0+FinalCone+length, y/2, x/2+(-0)+FinalCone, y/2 )
					surface.DrawLine( x/2-0-FinalCone-length, y/2, x/2-(-0)-FinalCone, y/2 )
					surface.DrawLine( x/2, y/2+0+FinalCone+length, x/2, y/2+(-0)+FinalCone )
					surface.DrawLine( x/2, y/2-0-FinalCone-length, x/2, y/2-(-0)-FinalCone )
				end
			end
		
			if GetConVarNumber("cl_css_crosshair_style") >= 2 and GetConVarNumber("cl_css_crosshair_style") <= 5 then
				if GetConVarNumber("cl_css_crosshair_style") == 4 then
					surface.DrawCircle(x/2,y/2, FinalCone + length, Color(r,g,b,a))
				elseif GetConVarNumber("cl_css_crosshair_style") == 3 then
					surface.DrawCircle(x/2,y/2, FinalCone + length/2, Color(r,g,b,a))
				else
					surface.DrawCircle(x/2,y/2, FinalCone, Color(r,g,b,a))
				end
			end
		
		end
	end
	
	if self.HasScope and self.IsZoomeded then
		self.Owner:DrawViewModel(false)	
	else
		self.Owner:DrawViewModel(true)
	end

	if self.HasScope then
		if self:GetZoomed() then

			local space = 1
			
			surface.SetDrawColor(Color(0,0,0))
			surface.SetMaterial(Material("gui/sniper_corner"))
			surface.DrawTexturedRectRotated(x/2 - y/4,y/2 - y/4,y/2 + space,y/2 + space,0-180-180)
			surface.DrawTexturedRectRotated(x/2 - y/4,y/2 + y/4,y/2 + space,y/2 + space,90-180-180)
			surface.DrawTexturedRectRotated(x/2 + y/4,y/2 + y/4,y/2 + space,y/2 + space,180-180-180)
			surface.DrawTexturedRectRotated(x/2 + y/4,y/2 - y/4,y/2 + space,y/2 + space,270-180-180)
			
			if self.ZoomAmount > 6 then
				surface.DrawLine(x/2,0,x/2,y)
				surface.DrawLine(0,y/2,x,y/2)
				
				if Cone > 0.1 then
					surface.DrawCircle( x/2, y/2, math.Clamp(Cone,3,x/2*0.33), Color(r,g,b,a) )
				end	
				
			else
				surface.DrawCircle( x/2, y/2, 6, Color(255,0,0,50))
				surface.DrawCircle( x/2, y/2, math.Clamp(Cone,0,x/2*0.33), Color(r,g,b,255) )
			end

			surface.SetDrawColor(Color(0,0,0))
			surface.SetMaterial(Material("vgui/gfx/vgui/solid_background"))
			surface.DrawTexturedRectRotated(x/4 - y/4,y/2,x/2 - y/2,y,0)
			surface.DrawTexturedRectRotated(x - x/4 + y/4,y/2,x/2 - y/2,y,0)
			
		end
	end
end

function SWEP:HUDShouldDraw( element )
	if self:GetZoomed() and element == "CHudWeaponSelection" then return false end
	return true
end

function SWEP:PrintWeaponInfo( x, y, alpha )

	local InfoColor = Color(255,255, 100, alpha)

	if (self.InfoMarkup == nil ) then
	
		local Damage = self.Primary.NumShots * self.Primary.Damage * GetConVarNumber("sv_css_damage_scale")
		local Delay = math.floor((self.Primary.Delay^-1)*60)
		local DPS = math.floor((self.Primary.Delay^-1) * Damage )
		local Cone = (self.Primary.Cone * GetConVarNumber("sv_css_cone_scale")) * (360/1)
		local Recoil = self:GetRecoilMath() * 0.25
		local KillTime = math.Round((math.ceil(100/Damage) - 1) * (self.Primary.Delay),2)
		
		local str
		local title_color = "<color=0,0,0,255>"
		local text_color = "<color=255,150,150,255>"
		
		str = "<font=HudSelectionText>"
		str = str .. title_color .. "Damage:</color> "..text_color..Damage.."</color>\n" 
		str = str .. title_color .. "Firerate:</color> "..text_color.. Delay .. " RPM" .."</color>\n"
		str = str .. title_color .. "Damage Per Second:</color> "..text_color.. DPS .. "DPS" .. "</color>\n"
		str = str .. title_color .. "Recoil:</color> "..text_color.. Recoil .. " degrees" .."</color>\n" 
		str = str .. title_color .. "Inaccuracy:</color> "..text_color.. Cone .. " degrees" .. "</color>\n"
		str = str .. title_color .. "Kill Time:</color> "..text_color.. KillTime .. " seconds" .. "</color>\n"
		str = str .. "</font>"
		
		self.InfoMarkup = markup.Parse( str, 250 )
	end
	
	surface.SetDrawColor( InfoColor )
	surface.SetTexture( self.SpeechBubbleLid )

	surface.DrawTexturedRect( x, y - 64 - 5, 128, 64 ) 
	draw.RoundedBox( 8, x - 5, y - 6, 260, self.InfoMarkup:GetHeight() + 18, InfoColor )
	
	self.InfoMarkup:Draw( x+5, y+5, nil, nil, alpha )
	
end

-- NOTE: HASANIMATED


function SWEP:EquipThink()

	if self.WeaponType ~= "Throwable" then return end

	if self.IsThrowing then
	
		if self.ThrowAnimation < CurTime() then
			if self.HasAnimated == false then
				self:SendWeaponAnim(ACT_VM_THROW)
				self.Owner:SetAnimation(PLAYER_ATTACK1) 
				self.HasAnimated = true
			end
		end
		
		if self.Throw < CurTime() then
			if self.HasThrown == false then
			
				self:ThrowObject(self.Object,1000)
				self.HasThrown = true
				
				if self:Ammo1() > 0 then
					self:TakePrimaryAmmo(1)
				end
				
			end
		end
		
		if self.ThrowRemove < CurTime() then
			if self:Ammo1() ~= 0 then
			
				self:SendWeaponAnim(ACT_VM_DRAW)
				
				self.IsThrowing = false
				self.HasAnimated = false
				self.HasThrown = false
				self.CanHolster	= true
				
				if SERVER then
					if self.SpecialThrow then
						self:SwitchToPrimary()
					end
				end
				
			else
				if SERVER then
					self:SwitchToPrimary()
					SafeRemoveEntity(self)
				end
			end
		end
		
	end
	
	if SERVER then
		if self.Owner.WeaponType == "Throwable" and self.ThrowRemove < CurTime() then
			if self:Ammo1() == 0 and self:Clip1() == 0 then
				self:Remove() 
				self:SwitchToPrimary()
			end
		end
	end
	
	
end

-- Note: CanHolster

function SWEP:SwitchToPrimary()
	self.Owner:ConCommand("lastinv")
end

function SWEP:QuickThrow()

	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay + 2)
	self.CanHolster = false
	self:SendWeaponAnim(ACT_VM_PULLPIN)
	
	self.IsThrowing = true
	
	self.ThrowAnimation = CurTime() + 0.85
	self.Throw = CurTime() + 1
	self.ThrowRemove = CurTime() + 2
	self.SpecialThrow = true
	
end

function SWEP:PreThrowObject()
	if self:IsUsing() then return end
	
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	
	if self.HasPreThrow then
		self:SendWeaponAnim(ACT_VM_PULLPIN)
		self.CanHolster = false
		self.IsThrowing = true
		self.SpecialThrow = false
		self.ThrowAnimation = CurTime() + 0.85
		self.Throw = CurTime() + 1
		self.ThrowRemove = CurTime() + 2
	else			
		self.CanHolster = false
		self.IsThrowing = true
		self.SpecialThrow = false
		self.ThrowAnimation = CurTime()
		self.Throw = CurTime() + 0.15
		self.ThrowRemove = CurTime() + 1
	end
	
end

function SWEP:ThrowObject(object,force)
	if (CLIENT or game.SinglePlayer()) then return end
	local EA =  self.Owner:EyeAngles()
	local pos = self.Owner:GetShootPos() + EA:Right() * 5 - EA:Up() * 4 + EA:Forward() * 8	

	local ent = ents.Create(object)		
	ent:SetPos(pos)
	ent:SetAngles(EA)
	ent:Spawn()
	ent:Activate()
	ent:Fire()
	ent:SetOwner(self.Owner)
	
	if ent:GetPhysicsObject():IsValid() then
		ent:GetPhysicsObject():SetVelocity(self.Owner:GetVelocity() + EA:Forward() * force + EA:Up()*50)
		--ent:GetPhysicsObject():AddAngleVelocity(Vector(1000,1000,1000))
	else
		ent:SetVelocity(self.Owner:GetVelocity() + EA:Forward() * force)
	end
	
	ent.Damage = 100
	ent.Radius = 100
	
end

function SWEP:QuickKnife()

end

AccessorFunc(SWEP,"fNPCMinBurst","NPCMinBurst")
AccessorFunc(SWEP,"fNPCMaxBurst","NPCMaxBurst")
AccessorFunc(SWEP,"fNPCFireRate","NPCFireRate")
AccessorFunc(SWEP,"fNPCMinRestTime","NPCMinRest")
AccessorFunc(SWEP,"fNPCMaxRestTime","NPCMaxRest")
