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

game.AddAmmoType({name = "hegrenade", })
game.AddAmmoType({name = "flashgrenade", })
game.AddAmmoType({name = "smokegrenade",})

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
	
	language.Add("hegrenade_ammo","HE Grenade")
	language.Add("flashgrenade_ammo","Flash Grenade")
	language.Add("smokegrenade_ammo","Smoke Grenade")

	surface.CreateFont( "csd",{font = "csd",size = 48,weight = 700})
	
end

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

SWEP.RecoilMul				= 1
SWEP.VelConeMul				= 1
SWEP.CoolDownMul			= 1

SWEP.HasCrosshair 			= true

SWEP.HasScope 				= false
SWEP.HasDoubleZoom			= false
SWEP.HasCSSZoom 			= false
SWEP.ZoomAmount 			= 1
SWEP.IgnoreZoomSlow			= false

SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false 

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

--SWEP.CoolDown 				= 0
--SWEP.CoolTime 				= 0
--SWEP.ShotgunReload 			= 0
--SWEP.NextShell 				= 0
--SWEP.IsReloading 			= 0
--SWEP.NormalReload 			= 0
--SWEP.ReloadFinish 			= 0
--SWEP.NextZoomTime 			= 0
--SWEP.ReloadDelay 			= 0
--SWEP.AttachDelay 			= 0
--SWEP.IsSilenced 			= false

--SWEP.BoltCurTime 			= 0
--SWEP.NextCoolTick			= 0



--Burst fire Code from Kogitsune


if CLIENT then
	SWEP.PunchAngleUp = Angle(0,0,0)
	SWEP.PunchAngleDown = Angle(0,0,0)
end

SWEP.CanHolster = true

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
	--[[
	self:NetworkVar("Float",5,"ReloadDelay")
	self:SetReloadDelay(0)	
	--]]
	self:NetworkVar("Float",6,"AttachDelay")
	self:SetAttachDelay(0)
	self:NetworkVar("Float",7,"BoltDelay")
	self:SetBoltDelay(0)
	self:NetworkVar("Float",8,"CoolDelay")
	self:SetCoolDelay(0)
	
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
	
	if CLIENT then
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

	self.Owner:GetHands():SetMaterial("")
	self.Owner:DrawViewModel(true)

	if self.HasSilencer then
		if self.IsSilenced then
			self:SendWeaponAnim(ACT_VM_DRAW_SILENCED)
			self.WorldModel = self.WorldModel2
		else
			self:SendWeaponAnim(ACT_VM_DRAW)
			self.WorldModel = self.WorldModel1
		end
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
	
	if self:IsBusy() then
		return false
	end

	self:SetNWBool("IronSights",false)
	self:SetNWInt("waszoomed",0)
	
	if self.Slot then
		if self.Slot > 1 then 
			self.Owner:SetNWString("cssprimary",self:GetClass())
		else
			self.Owner:SetNWString("csssecondary",self:GetClass())
		end
	end

	return true
	
end

function SWEP:PrimaryAttack()

	if not self:CanPrimaryAttack() then return end
	if self:IsBusy() then return end
	if self:IsUsing() then return end
	
	print("Shoot")
	
	if self.WeaponType == "Throwable" then
		self:PreThrowObject()
		return 
	end
	
	if self:GetIsShotgunReload() then
		self:SetIsShotgunReload(false)
		self:SetIsReloading(false)
		self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
		self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		return 
	end

	if SERVER then
		if self.HasScope then
			if self.HasBoltAction then
				if self:GetNWInt("zoommode",0) >= 1 then
					self:SetNWInt("waszoomed", self:GetNWInt("zoommode",0) )
					self:SetNWInt("zoommode",0)
				else
					self:SetNWInt("waszoomed",0)
				end
			end
		end
	end
	
	self:WeaponEffects()
	
	if not IsFirstTimePredicted() then return end
	local Damage,Shots,Cone,Recoil = self:Modifiers(self.Primary.Damage,self.Primary.NumShots,self.Primary.Cone,self.RecoilMul)
	local Source = self.Owner:GetShootPos()
	local Direction = (self.Owner:EyeAngles() + self.Owner:GetPunchAngle()):Forward()
	self:ShootBullet(Damage,Shots,Cone,Source,Direction,Source)
	self:TakePrimaryAmmo(1)
	self:AddHeat(Damage,Shots)
	
	if CLIENT then
		self:Recoil(Damage,Shots,Cone,Recoil)
	end

end

function SWEP:Modifiers(Damage,Shots,Cone,Recoil)

	local GunSound = self.Primary.Sound
	
	if self.HasBoltAction == true then
		self:SetBoltDelay(CurTime() + self.Primary.Delay)
	end
	
	if self.HasSilencer == true then
		if self:GetIsSilenced() then
			Damage = Damage*0.9
			Recoil = Recoil*0.9
		end
	end
	
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	
	--[[
	if CLIENT then
		if not self.Owner.css_recoil_scale then
			Recoil = Recoil * 1 * self.RecoilMul
		else
			Recoil = Recoil * self.Owner.css_recoil_scale * self.RecoilMul
		end
	end
	--]]
	
	Cone = self:HandleCone(Cone)
	
	return Damage,Shots,Cone,Recoil
	
end


function SWEP:WeaponEffects()

	local GunSound = self.Primary.Sound
	
	if self.HasSilencer == true then
		if self:GetIsSilenced() then
			GunSound = self.Secondary.Sound
		end
	end
	
	self:EmitGunSound(GunSound)
	self:SendPrimaryAnimation()

end

function SWEP:SendPrimaryAnimation()

	if not (self.HasIronSights and self:GetNWBool("IronSights",false)) then
		if self:GetIsSilenced() then
			self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_SILENCED)
		else
			self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
		end
	end
	
	self.Owner:SetAnimation(PLAYER_ATTACK1)

end

function SWEP:HandleCone(Cone)

	local VelCone = self.Owner:GetVelocity():Length()*0.0001 * self.VelConeMul

	if self.HasBurstFire == true then
		if self:GetIsBurst() then
			Cone = Cone * 0.66
		end
	elseif self.HasSilencer == true then
		if self:GetIsSilenced() then
			Cone = Cone*0.9
		end
	end
	
	if self.Owner:Crouching() and self.Owner:IsOnGround() then
		if self.WeaponType == "Secondary" and self.HoldType == "revolver" then
			Cone = Cone * 0.5
		else
			Cone = Cone * 0.8
		end
	end

	--if SERVER then
		Cone = ( VelCone * GetConVarNumber("sv_css_velcone_scale") ) + (Cone * GetConVarNumber("sv_css_cone_scale")) + (self:GetCoolDown()/100)
	--end

	--[[
	if CLIENT then
		if not self.Owner.css_velcone_scale then
			Cone = ( VelCone * 1 ) + (Cone * 1) + (self:GetCoolDown()/100)
		else
			Cone = ( VelCone * self.Owner.css_velcone_scale ) + (Cone * self.Owner.css_cone_scale) + (self:GetCoolDown()/100)
		end
	end
	--]]
	
	return Cone

end

function SWEP:Recoil(Damage,Shots,Cone,Recoil)

	local ViewKick = -(Damage*Shots/20)*Recoil

	if self.HasSideRecoil == true then
		sideways = self:GetCoolDown() * 0.5
	else
		sideways = 0
	end

	local uppunch = (ViewKick/2)*3
	local sidepunch = (ViewKick/2)*math.Rand(-1,1)*sideways
	local rollpunch = 0
	
	self.PunchAngleUp = self.PunchAngleUp + Angle(uppunch,sidepunch,rollpunch)
	self.PunchAngleDown = self.PunchAngleDown + Angle(uppunch,sidepunch,rollpunch)
	
end

function SWEP:SecondaryAttack()

	if self:IsBusy() then return end
	if self:IsUsing() then return end
	
	if self.HasBurstFire == true then
		self:SwitchFireMode()
	elseif self.HasIronSights == true then
		self:IronSights()
	elseif self.HasSilencer == true then
		self:Silencer()
	elseif self.HasScope == true then
		if GetConVarNumber("sv_css_enable_csszoom") == 1 and self.HasCSSZoom == true then
			self:CSSZoom()
		else
			self:ScopeZoom()
		end
	end
	
end


function SWEP:SwitchFireMode()

	if not IsFirstTimePredicted() then return end
	
	local Message = "Semi-Automatic"

	if self.Primary.Automatic == true then
		Message = "Automatic"
	end

	if self:GetIsBurst() then
		self:SetIsBurst(false)
		self.Weapon:EmitSound("weapons/smg1/switch_single.wav")
		self.Owner:PrintMessage( HUD_PRINTCENTER, "Switched to "..Message )
	else
		self:SetIsBurst(true)
		self.Weapon:EmitSound("weapons/smg1/switch_burst.wav")
		self.Owner:PrintMessage( HUD_PRINTCENTER, "Switched to Burst Fire Mode" )
	end

end


function SWEP:Silencer()

	if self:IsBusy() then return end
		
	if self:GetIsSilenced() then
		self:SendWeaponAnim(ACT_VM_DETACH_SILENCER)
		if not IsFirstTimePredicted() then return end
		self.WorldModel = self.WorldModel1
		self:SetIsSilenced(false)
	else
		self:SendWeaponAnim(ACT_VM_ATTACH_SILENCER)
		if not IsFirstTimePredicted() then return end
		self.WorldModel = self.WorldModel2
		self:SetIsSilenced(true)
	end
	
	self:SetAttachDelay(CurTime() + self.Owner:GetViewModel():SequenceDuration())
	
end

function SWEP:IronSights()
	if not IsFirstTimePredicted() then return end
	if self:GetNWBool("IronSights",false) == true then
		self.Owner:SetFOV(0,self.IronSightTime)
		self:SetNWBool("IronSights",false)
	else
		self.Owner:SetFOV(45,self.IronSightTime)
		self:SetNWBool("IronSights",true)
	end
end

function SWEP:ScopeZoom()

	if not IsFirstTimePredicted() then return end
	if not self:CanBoltZoom() then return end
	if self:IsBusy() then return false end

	local var = self:GetNWInt("zoommode",0)
	
	if SERVER then
	
		if self.HasDoubleZoom then
			if var < 2 then
				var = var + 1
			else
				var = 0
				self:SetNWInt("waszoomed",0)
			end
		else
			if var == 0 then
				var = 1
			else
				var = 0
				self:SetNWInt("waszoomed",0)
			end
		end
		
		self:SetNWInt("zoommode",var)
		
	end
	
	if CLIENT or game.SinglePlayer() == true then
		self:EmitSound("weapons/zoom.wav",100,100)
	end

end

function SWEP:CSSZoom()

	if not IsFirstTimePredicted() then return end
	if not self:CanBoltZoom() then return end
	if self:IsBusy() then return end

	if SERVER then
		if self:GetNWBool("csszoomed",false) == true then
			self.Owner:SetFOV(0, 0.25 )
			self:SetNWBool("csszoomed",false)
		else
			self.Owner:SetFOV( 90 / self.ZoomAmount , 0.25 )
			self:SetNWBool("csszoomed",true)
		end
	end

end

function SWEP:CanBoltZoom()

	if not self.HasBoltAction then 
		return true
	else
		if self:GetBoltDelay() <= CurTime() then
			return true
		else
			return false
		end
	end

	return true
	
end

function SWEP:TranslateFOV(oldfov)

	if self:GetNWInt("zoommode",0) > 0 then
		
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

function SWEP:CanPrimaryAttack()

	if self:GetNextPrimaryFire() > CurTime() then return false end

	if self:Clip1() == -1 then
		if self.Owner:GetAmmoCount(self.Primary.Ammo) < 1 then 
			return false 
		end
	elseif self:Clip1() <= 0 then
		self:EmitSound("weapons/clipempty_pistol.wav",100,100)
		self:SetNextPrimaryFire(CurTime() + 0.25)
		return false
	end

	return true
	
end

function SWEP:AddHeat(Damage,Shots)

	--if not IsFirstTimePredicted() then return end
	
	--[[
	if CLIENT then
		self:SetCoolDown(math.Clamp(self:GetCoolDown() + (Damage*Shots*0.01)*self.Owner.css_heat_scale*self.CoolDownMul,0,30))
		self:SetCoolTime(CurTime() + (((Damage*Shots*0.01) - 0.1)*self.Owner.css_cooltime_scale * self.CoolDownMul))
	end
	--]]
	--if SERVER  then 
		self:SetCoolDown(math.Clamp(self:GetCoolDown()+(Damage*Shots*0.01)*GetConVarNumber("sv_css_heat_scale"),0,20))
		self:SetCoolTime(CurTime() + ((Damage*Shots*0.01) - 0.1)*GetConVarNumber("sv_css_cooltime_scale"))
	--end

	--[[
	if game.SinglePlayer() then
		self:SetNWFloat("SinglePlayerNetwork",self.CoolDown)
	end
	--]]
	
end

function SWEP:ShootBullet(Damage, Shots, Cone, Source, Direction,LastHitPos)
	
	print("Bullet")
	
	local bullet = {}
	bullet.Damage	= Damage
	bullet.Num		= Shots
	bullet.Spread	= Vector(Cone, Cone, 0)
	bullet.Src		= Source
	bullet.Dir		= Direction
	bullet.Tracer	= 1
	bullet.TracerName = "Tracer"
	
	--bullet.Force	= 0
	
	bullet.Callback = function( attacker, tr, dmginfo)
		if attacker:IsPlayer() or attacker:IsBot() then
		
			if GetConVarNumber("sv_css_enable_penetration") == 1 then
			
				local matmul = 1
				local mat = tr.MatType
			
				if mat == MAT_GLASS or MAT_SAND or MAT_SNOW or MAT_DIRT then
					matmul = 0.75
				elseif mat == MAT_ANTLION or mat == MAT_ALIENFLESH or mat == MAT_FLESH then
					matmul = 1
				elseif mat == MAT_CONCRETE then
					matmul = 5
				elseif mat == MAT_METAL then
					matmul = 10
				else
					matmul = 1
				end

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

function SWEP:WorldBulletSolution(Pos,Direction,Damage)

	local Amount = 3
	
	local data = {}
	data.start = Pos + Direction
	data.endpos = Pos + Direction*Amount
	
	local trace = util.TraceLine(data)
	local NewDamage = Damage - ( GetConVarNumber("sv_css_penetration_scale") * Amount )
	
	if trace.HitWorld and NewDamage > 1 then
		self:WorldBulletSolution(Pos + Direction*Amount,Direction,NewDamage)
	end

end

function SWEP:EmitGunSound(GunSound)
	self.Weapon:EmitSound(GunSound, SNDLVL_GUNFIRE , 100, 1, CHAN_WEAPON )
end

function SWEP:BulletEffect(HitPos,StartPos,HitEntity,SurfaceProp)
	
	if HitEntity:IsPlayer() then return end
	
	local effect = EffectData()
	effect:SetOrigin(HitPos)
	effect:SetStart(StartPos)
	effect:SetSurfaceProp(SurfaceProp)
	effect:SetDamageType(DMG_BULLET)
	
	if CLIENT then
		effect:SetEntity(HitEntity)
	else
		effect:SetEntIndex(HitEntity:EntIndex())
	end

	util.Effect("Impact", effect)
	
end

function SWEP:IsBusy()

	if self.CanHolster == false then
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
	if self.Owner:KeyDown(IN_USE) then return true end
end

function SWEP:Reload()
	
	if self:IsBusy() then return end
	if self:Clip1() >= self.Primary.ClipSize then return end
	if self:GetNextPrimaryFire() > CurTime() then return end
	if self.Owner:GetAmmoCount(self:GetPrimaryAmmoType()) == 0  then return end
	if self.WeaponType == "Throwable" then return end

	if self:GetNWBool("Ironsights",false) == true then
		self:SetNWBool("Ironsights",false)
		self.Owner:SetFOV(0,self.IronSightTime)
	end
		
	if self:GetNWBool("csszoomed",false) == true then
		self:SetNWBool("csszoomed",false)
		self.Owner:SetFOV(0,self.IronSightTime)
	end
	
	if self.HasSilencer == true then
		if self:GetIsSilenced() then
			self:SendWeaponAnim(ACT_VM_RELOAD_SILENCED)
		else
			self:SendWeaponAnim(ACT_VM_RELOAD)
		end
	else
		self:SendWeaponAnim(ACT_VM_RELOAD)
	end
	
	if not IsFirstTimePredicted() then return end
	
	if CLIENT then
		if self.ReloadSound != nil then
			self:EmitGunSound(self.ReloadSound)
		end
	end
	
	if self.HasPumpAction == true then
		self.NextShell = 0.5
		self:SetIsShotgunReload(true)
	else
		self:SetReloadFinish(CurTime() + self.Owner:GetViewModel():SequenceDuration() * (1/self.Owner:GetViewModel():GetPlaybackRate()))
		self:SetIsNormalReload(true)
	end
	
	self.Owner:SetAnimation(PLAYER_RELOAD)
	
	if self.HasScope == true then
		self:SetNWInt("zoommode",0)
		self:SetNextZoomTime(CurTime() + self.Owner:GetViewModel():SequenceDuration() * (1/self.Owner:GetViewModel():GetPlaybackRate()))
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

	local bIron = self.Weapon:GetNetworkedBool( "Ironsights" )
	
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

	if ( self.IronSightsAng ) then
	
		--[[
		local VModel = LocalPlayer():GetViewModel()
		
		local Edit = Angle(0,0,0)
		Edit:RotateAroundAxis( Edit:Right(), 	self.IronSightsAng.x * Mul )
		Edit:RotateAroundAxis( Edit:Up(), 		self.IronSightsAng.y * Mul )
		Edit:RotateAroundAxis( Edit:Forward(), 	self.IronSightsAng.z * Mul )
		
		local CompAngles = VModel:GetAngles() - ang - Edit
		--]]
		
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

	if not IsFirstTimePredicted( ) then return end

	if CLIENT then
		self.ViewModelFOV = GetConVarNumber("cl_css_viewmodel_fov")
		self:HandleRecoilThink()
	end
	
	self:EquipThink()
	
	if SERVER then
		if self.HasBoltAction then
			if self:GetBoltDelay() <= CurTime() then
				if self:GetNWInt("waszoomed",0) > 0 then
					if self:GetIsReloading() == 0 then
						self:SetNWInt("zoommode",self:GetNWInt("waszoomed",0))
						self:SetNWInt("waszoomed",0)
					end
				end
			end
		end
	end
	
	local ammotype = self:GetPrimaryAmmoType()
	
	if self:GetIsNormalReload() then
		self:SetIsReloading(true)
		
		if SERVER then
			if not self.HasGiven then
				self.Owner:GiveAmmo(self:Clip1(),ammotype,true)
				self:SetClip1(0)
				self.HasGiven = true
			end
		end
		
		if self:GetReloadFinish() <= CurTime() then

			if self.Owner:GetAmmoCount( ammotype ) >= self.Primary.ClipSize then
				self:SetClip1(self.Primary.ClipSize)
				self.Owner:RemoveAmmo(self.Primary.ClipSize,ammotype)
			else
				self:SetClip1(self.Owner:GetAmmoCount(ammotype))
				self.Owner:RemoveAmmo(self.Owner:GetAmmoCount(ammotype),ammotype)
			end

			self:SetIsNormalReload(false)
			self:SetIsReloading(false)
			
			self.HasGiven = 0
			
		end
		
	elseif self:GetIsShotgunReload() then
	
		self:SetIsReloading(true)
	
		if self:GetNextShell() <= CurTime() then
			if self.Owner:GetAmmoCount( ammotype ) > 0 and self:Clip1() < self.Primary.ClipSize then 
				self:SendWeaponAnim(ACT_VM_RELOAD)
				self:SetClip1(self:Clip1()+1)
				self.Owner:RemoveAmmo(1,ammotype)
				self:SetNextShell(CurTime()+0.5)
			else
				self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
				self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
				self:SetIsShotgunReload(false)
				self:SetIsReloading(false)
			end
		end
		
	end

	if self:GetCoolTime() < CurTime() then
		if self:GetCoolDown() ~= 0 then
			if self:GetCoolDelay() <= CurTime() then
				
				
				if CLIENT then
					self:SetCoolDown(math.max(0,self:GetCoolDown() - (0.18 * self.Owner.css_cooldown_scale ) ))
				end
				
				
				if SERVER then
					self:SetCoolDown(math.max(0,self:GetCoolDown() - (0.18 * GetConVarNumber("sv_css_cooldown_scale"))))
				end
				
				self:SetCoolDelay(CurTime() + 0.025)
				
			end
		end
	end
	
	if SERVER then
		if game.SinglePlayer() then
			self:SetNWFloat("SinglePlayerNetwork",self:GetCoolDown())
		end
	end

end

--SWEP.PunchDelay = 0

function SWEP:HandleRecoilThink()
	local pUp = self:HandleLimits(self.PunchAngleUp.p)
	local yUp = self:HandleLimits(self.PunchAngleUp.y)
	local rUp = self:HandleLimits(self.PunchAngleUp.r)

	local pDown = self:HandleLimits(self.PunchAngleDown.p)
	local yDown = self:HandleLimits(self.PunchAngleDown.y)
	local rDown = self:HandleLimits(self.PunchAngleDown.r)

	local FrameMul = FrameTime() * 10
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

	if self:GetNWBool("IronSights",false) == true then
		sen = 1 / self.ZoomAmount
	elseif self.HasScope == true then
	
		if self:GetNWBool("csszoomed",false) == true and self.HasCSSZoom == true then
			sen = 1 / self.ZoomAmount
		elseif self:GetNWInt("zoommode",0) ~= 0 then
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

	if not LocalPlayer().css_cone_scale and not game.SinglePlayer() then return end
	
	local x = ScrW()
	local y = ScrH()

	local length = GetConVarNumber("cl_css_crosshair_length")
	local width = GetConVarNumber("cl_css_crosshair_width")
	local convar = GetConVarNumber("fov_desired")

	local r = GetConVarNumber("cl_css_crosshair_color_r")
	local g = GetConVarNumber("cl_css_crosshair_color_g")
	local b = GetConVarNumber("cl_css_crosshair_color_b")
	local a = GetConVarNumber("cl_css_crosshair_color_a")
	
	local VelCone = self.Owner:GetVelocity():Length()*0.0001
	
	Cone = self:HandleCone(self.Primary.Cone) * 900

	if self.HasCrosshair == true then
		if self:GetNWInt("zoommode",0) == 0 and self:GetNWBool("IronSights",false) == false then

			if GetConVarNumber("cl_css_crosshair_style") >= 1 and GetConVarNumber("cl_css_crosshair_style") <= 4 then
				if width > 1 then
					local fix = length/2
				
					surface.SetDrawColor(r,g,b,a)
					surface.DrawRect( x/2 - width/2, y/2 - length/2 + Cone + fix , width, length )
					surface.DrawRect( x/2 - width/2, y/2 - length/2 - Cone - fix, width, length )
					surface.DrawRect( x/2 - length/2 + Cone + fix, y/2 - width/2, length, width )
					surface.DrawRect( x/2 - length/2 - Cone - fix, y/2 - width/2, length, width )
				else
					surface.SetDrawColor(r,g,b,a)
					surface.DrawLine( x/2+1+Cone+length, y/2, x/2+0.5+Cone, y/2 )
					surface.DrawLine( x/2-1-Cone-length, y/2, x/2-0.5-Cone, y/2 )
					surface.DrawLine( x/2, y/2+1+Cone+length, x/2, y/2+0.5+Cone )
					surface.DrawLine( x/2, y/2-1-Cone-length, x/2, y/2-0.5-Cone )
				end
			end
		
			if GetConVarNumber("cl_css_crosshair_style") >= 2 and GetConVarNumber("cl_css_crosshair_style") <= 5 then
				if GetConVarNumber("cl_css_crosshair_style") == 4 then
					surface.DrawCircle(x/2,y/2, Cone + length, Color(r,g,b,a))
				elseif GetConVarNumber("cl_css_crosshair_style") == 3 then
					surface.DrawCircle(x/2,y/2, Cone + length/2, Color(r,g,b,a))
				else
					surface.DrawCircle(x/2,y/2, Cone, Color(r,g,b,a))
				end
			end
		
		end
	end

	if self.HasScope == true then
		if self:GetNWInt("zoommode",0) ~= 0 then

			local fovbonus = convar/self.Owner:GetFOV()
			local offset = 0
			
			if Cone > 0.1 then
				surface.DrawCircle( x/2, y/2, math.Clamp(Cone*fovbonus,3,x/2*0.33), Color(0,255,0) )
			end

			local space = 1
			
			surface.SetDrawColor(Color(0,0,0))
			surface.SetMaterial(Material("gui/sniper_corner"))
			surface.DrawTexturedRectRotated(x/2 - y/4,y/2 - y/4,y/2 + space,y/2 + space,0-180-180)
			surface.DrawTexturedRectRotated(x/2 - y/4,y/2 + y/4,y/2 + space,y/2 + space,90-180-180)
			surface.DrawTexturedRectRotated(x/2 + y/4,y/2 + y/4,y/2 + space,y/2 + space,180-180-180)
			surface.DrawTexturedRectRotated(x/2 + y/4,y/2 - y/4,y/2 + space,y/2 + space,270-180-180)
			
			if self.ZoomAmount > 4 then
				surface.DrawLine(x/2,0,x/2,y)
				surface.DrawLine(0,y/2,x,y/2)
			end

			surface.SetDrawColor(Color(0,0,0))
			surface.SetMaterial(Material("vgui/gfx/vgui/solid_background"))
			surface.DrawTexturedRectRotated(x/4 - y/4,y/2,x/2 - y/2,y,0)
			surface.DrawTexturedRectRotated(x - x/4 + y/4,y/2,x/2 - y/2,y,0)
			
		end
	end
end

function SWEP:HUDShouldDraw( element )
	if self:GetNWInt("zoommode",0) ~= 0 and element == "CHudWeaponSelection" then return false end
	return true
end

function SWEP:PrintWeaponInfo( x, y, alpha )

	local InfoColor = Color(255,255, 100, alpha)

	if (self.InfoMarkup == nil ) then
	
		local Damage
		local Cone
		local Recoil
	
		--if game.SinglePlayer() then
		
			Damage = self.Primary.NumShots * self.Primary.Damage * GetConVarNumber("sv_css_damage_scale")
			Cone = self.Primary.Cone * GetConVarNumber("sv_css_cone_scale")
			Recoil = Damage * self.RecoilMul * GetConVarNumber("sv_css_recoil_scale")
			
			--[[
		else
			Damage = self.Primary.NumShots * self.Primary.Damage * LocalPlayer().css_damage_scale
			Cone = self.Primary.Cone * LocalPlayer().css_cone_scale
			Recoil = Damage * self.RecoilMul * LocalPlayer().css_recoil_scale
		end
		--]]
		
		local str
		local title_color = "<color=0,0,0,255>"
		local text_color = "<color=255,150,150,255>"
		
		str = "<font=HudSelectionText>"
		str = str .. title_color .. "Damage:</color> "..text_color..Damage.."</color>\n" 
		str = str .. title_color .. "Firerate:</color> "..text_color.. math.floor((self.Primary.Delay^-1)*60) .. " RPM" .."</color>\n"
		str = str .. title_color .. "Damage Per Second:</color> "..text_color..math.floor((self.Primary.Delay^-1) * Damage ).. "DPS" .. "</color>\n"
		str = str .. title_color .. "Recoil:</color> "..text_color.. math.floor(Recoil / 2) .. "%" .."</color>\n" 
		str = str .. title_color .. "Accuracy:</color> "..text_color.. 100 - (Cone*100) .. "%" .. "</color>\n"
		--str = str .. title_color .. "Weapon Rating:</color> "..text_color.. WeaponRating .. "</color>\n"
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

	if self.IsThrowing == true then
	
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
					if self.SpecialThrow == true then
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

	local foundp = false
	local founds = false
	
	for k,v in pairs(self.Owner:GetWeapons()) do
		if v:IsScripted() then
			if foundp == false then
				if weapons.GetStored(v:GetClass()).WeaponType == "Primary" then
					self.CanHolster = true
					self.Owner:SelectWeapon(self.Owner:GetWeapons()[k]:GetClass() )
					foundp = true
				end
			end
		end
	end
	
	if foundp == false then
		for k,v in pairs(self.Owner:GetWeapons()) do
			if v:IsScripted() then
				if founds == false then
					if weapons.GetStored(v:GetClass()).WeaponType == "Secondary" then
						self.CanHolster = true
						self.Owner:SelectWeapon(self.Owner:GetWeapons()[k]:GetClass() )
						founds = true
					end
				end
			end
		end
	end

	if founds == false and foundp == false then
		self.CanHolster = true
		self.Owner:SelectWeapon(self.Owner:GetWeapons()[1]:GetClass() )
	end

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
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay + 2)
	self.CanHolster = false
	self:SendWeaponAnim(ACT_VM_PULLPIN)
	
	self.IsThrowing = true
	
	self.ThrowAnimation = CurTime() + 0.85
	self.Throw = CurTime() + 1
	self.ThrowRemove = CurTime() + 2
	self.SpecialThrow = false
end

function SWEP:ThrowObject(object,force)
	if CLIENT then return end
	local EA =  self.Owner:EyeAngles()
	local pos = self.Owner:GetShootPos() + EA:Right() * 5 - EA:Up() * 4 + EA:Forward() * 8	

	local ent = ents.Create(object)		
		ent:SetPos(pos)
		ent:SetAngles(EA)
		ent:Spawn()
		ent:Activate()
		ent:SetOwner(self.Owner)
		ent:GetPhysicsObject():SetVelocity(self.Owner:GetVelocity() + EA:Forward() * force + EA:Up()*50)
		ent:GetPhysicsObject():AddAngleVelocity(Vector(1000,1000,1000))
		ent.Damage = 100
		ent.Radius = 100
end

function SWEP:QuickKnife()

end