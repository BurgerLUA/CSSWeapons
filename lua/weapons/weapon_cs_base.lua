AddCSLuaFile()

local AllFCVar = FCVAR_REPLICATED + FCVAR_ARCHIVE + FCVAR_NOTIFY + FCVAR_SERVER_CAN_EXECUTE

CreateConVar("sv_css_damage_scale", "1", AllFCVar , "This is the value that all damage from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_recoil_scale", "1", AllFCVar , "This is the value that all recoil from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_cone_scale", "1", AllFCVar , "This is the value that the spread from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_velcone_scale", "1", AllFCVar , "This is the value that the spread from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_heat_scale", "1", AllFCVar , "This is the value that the spread from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_cooltime_scale", "1", AllFCVar , "This is the value that the cooldown delay time from CSS weapons is multiplied by. Default is 1." )
CreateConVar("sv_css_cooldown_scale", "1", AllFCVar , "This is the value that the cooldown amount from CSS weapons is multiplied by. Default is 1." )
CreateConVar("sv_css_damagefalloff_scale", "0.5", AllFCVar , "This is the value that the damage falloff amount from CSS weapons is multiplied by. Default is 0.5." )

CreateConVar("sv_css_flashbang_dur", "1", AllFCVar , "This is the value that the flashbang duration effect is multiplied. Default is 1." )
CreateConVar("sv_css_smoke_dur", "10", AllFCVar , "This is the value that the smoke duration effect is multiplied. Default is 1." )
CreateConVar("sv_css_he_damage", "98", AllFCVar , "Damage dealt by CSS HE Grenades. Default is 98." )
CreateConVar("sv_css_he_radius", "400", AllFCVar , "Radius of CSS HE Grenade explosions. Default is 400." )

CreateConVar("sv_css_enable_penetration", "1", AllFCVar , "1 enable penetration through objects, 0 disables. Default is 1." )
CreateConVar("sv_css_penetration_scale", "1", AllFCVar , "Base damage lost per unit of penetration. Default is 1." )

CreateConVar("sv_css_ammo_loaded", "1", AllFCVar , "1 enables giving weapons already loaded. Default is 1." )
CreateConVar("sv_css_ammo_givespare", "1", AllFCVar , "1 enables giving spare ammo to players upon pickup. Default is 1." )
CreateConVar("sv_css_limit_equipped", "0", AllFCVar , "1 limits only one primary weapon and one secondary weapon. Equipment is unlimited. Default is 0." )

CreateConVar("sv_css_enable_drops", "1", AllFCVar , "1 enables players to drop css weapons on death, all other values disables it. Default is 1." )
CreateConVar("sv_css_timed_drops", "1", AllFCVar , "1 creates a removal time limit for weapons that drop. 0 never removes weapon drops." )
CreateConVar("sv_css_drop_timer", "60", AllFCVar , "This is the value in seconds that determines how long the weapons are removed after they are dropped. Default is 60." )


CreateConVar("sv_css_enable_c4nonadmin", "1", AllFCVar , "1 enables non-admins to use c4, all other values disables it. Default is 1." )
CreateConVar("sv_css_c4_time_explosion", "45", AllFCVar , "This is the value in seconds that the C4 detonates when planted. Default is 45." )
CreateConVar("sv_css_c4_time_defuse", "10", AllFCVar , "This is the value in seconds that the C4 is defused. Default is 10." )
CreateConVar("sv_css_c4_damage", "500", AllFCVar , "This is the value in points that determines maximum damage. Default is 500." )
CreateConVar("sv_css_c4_radius", "1500", AllFCVar , "This is the value in units that determines the maximum blast radius. Default is 1500." )
CreateConVar("sv_css_c4_notifyplayers", "1", AllFCVar , "1 enables players to receive cosmetic round winning notifications and sounds, all other values disables it. Default is 1." )
CreateConVar("sv_css_c4_timelimit", "0", AllFCVar , "Global delay in minutes in which you can plant C4. Default is 0." )


CreateConVar("sv_css_enable_ironsights", "1", AllFCVar , "1 enables ironsights, 0 disables. Default is 1." )

CreateConVar("sv_css_enable_damagesounds", "1", AllFCVar , "1 enables damage sounds, 0 disables. Default is 1." )
CreateConVar("sv_css_enable_deathsounds", "0", AllFCVar , "1 enables death sounds, 0 disables. Default is 1." )

--CreateConVar("sv_css_enable_speedmod", "0", AllFCVar , "1 enables speed mod, 0 disables. Default is 1." ) -LOCATED IN SH_CSS_SLOW.LUA

CreateConVar("sv_css_enable_customdamage", "0", AllFCVar , "1 enables custom damage. 0 disables. Default is 0." )

CreateConVar("sv_css_damage_bodyscale", "1", AllFCVar , "Scales bodyshot damage by this amount. Default is 1." )
CreateConVar("sv_css_damage_legscale", "0.75", AllFCVar , "Scales legshot damage by this amount. Default is 0.75." )
CreateConVar("sv_css_damage_armscale", "1", AllFCVar , "Scales armshot damage by this amount. Default is 1." )
CreateConVar("sv_css_damage_headscale", "4", AllFCVar , "Scales headshot damage by this amount. Default is 4." )

CreateConVar("sv_css_enable_customrecoil", "1", AllFCVar , "1 enables custom recoil, 0 disables." ) -- HIDDEN

CreateConVar("sv_css_quick", "0", AllFCVar , "1 enables quick grenades, 0 disables. Default is 1." )
CreateConVar("sv_css_enable_mags", "0", AllFCVar , "1 enables cosmetic magazine drops. Requires separate addon. Default is 0." )

CreateClientConVar("cl_css_customslots", "0", true, true )
CreateClientConVar("cl_css_viewmodel_fov", "45", true, true )

CreateClientConVar("cl_css_crosshair_style", "1", true, true )
CreateClientConVar("cl_css_crosshair_length", "15", true, true )
CreateClientConVar("cl_css_crosshair_width", "1", true, true )

CreateClientConVar("cl_css_crosshair_color_r", "50", true, true )
CreateClientConVar("cl_css_crosshair_color_g", "255", true, true )
CreateClientConVar("cl_css_crosshair_color_b", "50", true, true )
CreateClientConVar("cl_css_crosshair_color_a", "200", true, true )

CreateClientConVar("cl_css_crosshair_dynamic", "1", true, true )
CreateClientConVar("cl_css_crosshair_dot", "0", true, true )
CreateClientConVar("cl_css_crosshair_shadow", "0", true, true )
CreateClientConVar("cl_css_crosshair_smoothing", "1", true, true )
CreateClientConVar("cl_css_crosshair_smoothing_mul", "1", true, true )
CreateClientConVar("cl_css_crosshair_neversights", "0", true, true )
CreateClientConVar("cl_css_crosshair_offset", "0", true, true )
CreateClientConVar("cl_css_crosshair_fool", "1", true, true )

CreateClientConVar("cl_css_drawhitboxes", "0", true, true )

game.AddAmmoType({
	name = "css_12gauge",
	dmgtype = DMG_BULLET,
	tracer = TRACER_LINE_AND_WHIZ
})

game.AddAmmoType({
	name = "css_57mm",
	dmgtype = DMG_BULLET,
	tracer = TRACER_LINE_AND_WHIZ
})

game.AddAmmoType({
	name = "css_45acp",
	dmgtype = DMG_BULLET,
	tracer = TRACER_LINE_AND_WHIZ
})

game.AddAmmoType({
	name = "css_9mm",
	dmgtype = DMG_BULLET,
	tracer = TRACER_LINE_AND_WHIZ
})

game.AddAmmoType({
	name = "css_50ae",
	dmgtype = DMG_BULLET,
	tracer = TRACER_LINE_AND_WHIZ
})

game.AddAmmoType({
	name = "css_556mm",
	dmgtype = DMG_BULLET,
	tracer = TRACER_LINE_AND_WHIZ
})

game.AddAmmoType({
	name = "css_762mm",
	dmgtype = DMG_BULLET,
	tracer = TRACER_LINE_AND_WHIZ
})

game.AddAmmoType({
	name = "css_338",
	dmgtype = DMG_BULLET,
	tracer = TRACER_LINE_AND_WHIZ
})

game.AddAmmoType({
	name = "css_357sig",
	dmgtype = DMG_BULLET,
	tracer = TRACER_LINE_AND_WHIZ
})

game.AddAmmoType({
	name = "css_hegrenade",
	dmgtype = DMG_BLAST,
	tracer = TRACER_NONE
})

game.AddAmmoType({
	name = "css_flashgrenade",
	dmgtype = DMG_BLAST,
	tracer = TRACER_NONE
})

game.AddAmmoType({
	name = "css_smokegrenade",
	dmgtype = DMG_BLAST,
	tracer = TRACER_NONE
})

if CLIENT then
	
	language.Add("css_12gauge_ammo","12 Gauge")
	language.Add("css_57mm_ammo","5.7mm")
	language.Add("css_45acp_ammo",".45 ACP")
	language.Add("css_9mm_ammo","9mm")
	language.Add("css_50ae_ammo",".50 AE")
	language.Add("css_556mm_ammo","5.56MM")
	language.Add("css_762mm_ammo","7.62mm")
	language.Add("css_338_ammo",".338")
	language.Add("css_357sig_ammo",".357 SIG")
	
	language.Add("css_hegrenade_ammo","HE Grenade")
	language.Add("css_flashgrenade_ammo","Flash Grenade")
	language.Add("css_smokegrenade_ammo","Smoke Grenade")

	surface.CreateFont( "csd",{font = "csd",size = 64,weight = 0})
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "Counter Strike Source Weapon Base"
SWEP.Base					= "weapon_base"
SWEP.BurgerBase				= true
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 0
SWEP.MoveSpeed				= 250

SWEP.Spawnable				= false
SWEP.AdminOnly 				= false
SWEP.FuckBots				= false -- Bots don't spawn with this weapon

SWEP.Slot					= 3
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.ViewModelFOV			= 45
SWEP.UseHands				= true
SWEP.AddFOV					= 0
SWEP.IgnoreScopeHide		= false

SWEP.WorldModel				= "models/weapons/w_rif_ak47.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "ar2"

SWEP.Primary.Damage			= 36
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/ak47/ak47-1.wav")
SWEP.Primary.Cone			= 0.00125
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip		= 90
SWEP.Primary.DefaultClip	= 0 -- Unused
SWEP.Primary.Delay			= 0.1
SWEP.Primary.Ammo			= "css_762mm"
SWEP.Primary.Automatic 		= true

SWEP.DamageFalloff			= 10000

SWEP.ReloadSound 			= nil
SWEP.BurstSound				= nil
SWEP.LastBulletSound		= nil
SWEP.PumpSound				= nil
SWEP.MeleeSoundMiss			= nil
SWEP.MeleeSoundWallHit		= nil
SWEP.MeleeSoundFleshSmall	= nil
SWEP.MeleeSoundFleshLarge	= nil

SWEP.RecoilMul				= 1
SWEP.SideRecoilMul			= 0.5
SWEP.VelConeMul				= 1
SWEP.HeatMul				= 1
SWEP.CoolMul				= 1
SWEP.CoolSpeedMul			= 1
SWEP.PenetrationLossMul		= 1

SWEP.BurstSpeedOverride 	= 1
SWEP.BurstConeMul			= 1
SWEP.BurstHeatMul			= 1
SWEP.BurstZoomMul			= 1
SWEP.BurstRecoilMul			= 1
SWEP.BurstOverride			= 3

SWEP.HasScope 				= false
SWEP.ZoomAmount 			= 1
SWEP.HasCrosshair 			= true
SWEP.HasCSSZoom 			= false
SWEP.HasSpecialFire			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= true
SWEP.HasDownRecoil			= false
SWEP.HasDryFire				= false
SWEP.HasHL2Pump				= false -- Shotgun Pump
SWEP.HasPreThrow			= true -- Grenade Pre-Throw
SWEP.HasDual				= false

SWEP.HasIronSights 			= true
SWEP.EnableIronCross		= true
SWEP.IronSightTime			= 0.125
SWEP.IronSightsPos 			= Vector(-3, 20, 0)
SWEP.IronSightsAng 			= Vector(1.25, 1, 0)

SWEP.HasBuildUp				= false -- Uses Minigun Buildup
SWEP.UsesBuildUp			= false -- Uses Buildup for Custom Reasons
SWEP.BuildUpAmount			= 10
SWEP.BuildUpCoolAmount 		= 50

SWEP.CustomScope 			= nil
SWEP.CustomScopeSOverride	= nil
SWEP.CustomScopeCOverride	= Color(0,0,0,255)
SWEP.ColorOverlay			= Color(0,0,0,0) -- Color Overlay when Zoomed

SWEP.TracerOverride			= 1
SWEP.EnableTracer			= true
SWEP.TracerName				= "Tracer"

SWEP.BulletEnt				= nil -- Bullet Entity that is Spawned
SWEP.SourceOverride 		= Vector(0,0,0) -- Projectile Spawn Offset
SWEP.BulletAngOffset		= Angle(0,0,0) -- Rotate the Projectile by this amount

SWEP.ShootOffsetStrength	= Angle(0,0,0) -- Recoil for OP Snipers
SWEP.DisableReloadUntilEmpty = false
SWEP.IgnoreDrawDelay		= false -- Does this even work?
SWEP.EnableBlocking			= false -- Melee

-- I know what this is
SWEP.DrawAmmo				= true
SWEP.DrawCrosshair			= false
SWEP.Weight					= 0
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.Secondary.Ammo 		= "none"
SWEP.Secondary.SpareClip	= 0
SWEP.Secondary.ClipSize 	= -1
SWEP.Secondary.DefaultClip 	= -1
SWEP.Secondary.Automatic	= false

-- Not really used anymore but w/e
SWEP.Author					= "Burger"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions			= ""

--WTF IS THIS
SWEP.CSMuzzleFlashes 		= true
SWEP.CSMuzzleX				= false

if (CLIENT or game.SinglePlayer()) then
	SWEP.IsZoomed 			= false -- Data, Client
	SWEP.WasZoomed 			= false -- Data, Client
	SWEP.PunchAngleUp 		= Angle(0,0,0) -- Data, Client
	SWEP.PunchAngleDown 	= Angle(0,0,0) -- Data, Client
	SWEP.ClientCoolDown 	= 0	-- Data, Client
	SWEP.ClientCoolTime 	= 0 -- Data, Client
	SWEP.StoredCrosshair 	= nil -- Data, Client
	SWEP.BoltDelay 			= 0 -- Data, Client
	SWEP.NextZoomTime 		= 0
	SWEP.DesiredFOV			= GetConVar("fov_desired"):GetFloat()
end

if SERVER then
	SWEP.AlreadyGiven			= false -- Data, Server
	SWEP.HasMagIn				= true -- Data, Server
end

SWEP.ZoomMod 				= 0 -- Singleplayer Bullshit?

function SWEP:SetupDataTables( )

	self:NetworkVar("Float",0,"CoolDown")
	self:SetCoolDown(0)
	self:NetworkVar("Float",1,"CoolTime")
	self:SetCoolTime(0)
	self:NetworkVar("Float",2,"NextShell")
	self:SetNextShell(0)
	self:NetworkVar("Float",3,"ReloadFinish")
	self:SetReloadFinish(0)
	self:NetworkVar("Float",4,"AttachDelay")
	self:SetAttachDelay(0)
	self:NetworkVar("Float",5,"NextBulletDelay")
	self:SetNextBulletDelay(0)
	self:NetworkVar("Float",6,"BuildUp")
	self:SetBuildUp(0)
	self:NetworkVar("Float",7,"NextHL2Pump")
	self:SetNextHL2Pump(0)
	
	self:NetworkVar("Float",8,"ThrowAnimationTime")
	self:SetThrowAnimationTime(0)
	
	self:NetworkVar("Float",9,"ThrowRemoveTime")
	self:SetThrowRemoveTime(0)
	
	self:NetworkVar("Float",10,"ThrowTime")
	self:SetThrowTime(0)
	
	
	self:NetworkVar("Float",31,"SpecialFloat") -- For Special Stuff
	self:SetSpecialFloat(0)
	

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
	self:NetworkVar("Bool",5,"IsLeftFire")
	self:SetIsLeftFire( false )
	self:NetworkVar("Bool",6,"IsBlocking") -- For Special Stuff
	self:SetIsBlocking( false )
	self:NetworkVar("Bool",7,"NeedsHL2Pump")
	self:SetNeedsHL2Pump( false )
	
	self:NetworkVar("Bool",8,"CanHolster")
	self:SetCanHolster( true )
	self:NetworkVar("Bool",9,"IsThrowing")
	self:SetIsThrowing( false )
	
end

function SWEP:Initialize()

	self:SetHoldType( self.HoldType )
	
	if SERVER then
		if self.Owner:IsNPC() then
			self.Owner:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_PERFECT )
		end
	end

	if self.Primary.Sound then
		util.PrecacheSound(self.Primary.Sound)
	end
	
	if self.Secondary.Sound then
		util.PrecacheSound(self.Secondary.Sound)
	end
	
	if self.ReloadSound then
		util.PrecacheSound(self.ReloadSound)
	end
	
	if self.PumpSound then
		util.PrecacheSound(self.PumpSound)
	end
	
	if self.LastBulletSound then
		util.PrecacheSound(self.LastBulletSound)
	end
	
	if (CLIENT or game.SinglePlayer()) then
		if GetConVarNumber("cl_css_customslots") == 1 then
			if self.WeaponType == "Primary" then
				self.Slot = 2
			elseif self.WeaponType == "Secondary" then
				self.Slot = 1
			end
		end
	end
	
	if SERVER then

		if not self.GetMagModel then
			self.GetMagModel = string.Replace( self.WorldModel,"/w_" , "/unloaded/" )
			self.GetMagModel = string.Replace( self.GetMagModel , ".mdl" , "_mag.mdl")
		end

		if file.Exists(self.GetMagModel,"GAME") then
			self.GetMagModel = Model(self.GetMagModel)
		else
			self.GetMagModel = nil
		end
		
	end
	
end

function SWEP:EquipAmmo(ply)
	if GetConVarNumber("sv_css_ammo_givespare") == 1 or self.WeaponType == "Equipment" then
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
					if self.Owner:IsPlayer() then
						self.Owner:GiveAmmo(self.Primary.SpareClip,self.Primary.Ammo,false)
					end
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
							CSS_DropWeapon(self.Owner,v)
						end
					end
				end
			end
		elseif GetConVarNumber("sv_css_limit_equipped") == 2 then
			for k,v in pairs (self.Owner:GetWeapons()) do
				if v.BurgerBase ~= nil then
					if v ~= self then
						if self.Slot == v.Slot and not (v.WeaponType == "Free" or v.WeaponType == "Throwable") then
							CSS_DropWeapon(self.Owner,v)
						end
					end
				end
			end
		end
		
	end

	if IsValid(self.Owner:GetHands()) then
		self.Owner:GetHands():SetMaterial("")
	end
	
	self.Owner:DrawViewModel(true)

	if not self.IgnoreDrawDelay then
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
	else
		self:SendWeaponAnim(ACT_VM_RELOAD)
		self:EmitGunSound(self.ReloadSound)
	end
	
	if self.WeaponType ~= "Throwable" then
		self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration() )
	end
	
	return true
	
end

function SWEP:Holster()
	if not self:GetCanHolster() then return false end
	self:CancelReload()
	self:SetZoomed(false)
	return true
end

function SWEP:SetZoomed(shouldzoom)
	if shouldzoom then
		if game.SinglePlayer() then
			if self.Owner:IsPlayer() then
			
				local ZoomAmount = self.ZoomAmount
				
				if self.HasBurstFire and self:GetIsBurst() then
					ZoomAmount = ZoomAmount * self.BurstZoomMul
				end
			
				self.Owner:SetFOV( self.DesiredFOV / (1 + ZoomAmount), 0.1 )
			end
		else
			self.IsZoomed = true
		end
	else
		if game.SinglePlayer() then
			if self.Owner:IsPlayer() then
				self.Owner:SetFOV( self.DesiredFOV, 0.1 )
			end
		else
			self.IsZoomed = false
		end
	end
end

function SWEP:GetZoomed()
	if game.SinglePlayer() then
		return self.Owner:GetFOV() < self.DesiredFOV
	else
		return self.IsZoomed
	end
end

function SWEP:PrimaryAttack()
	
	if self:GetIsShotgunReload() and self:GetIsReloading() and not self.Owner:IsBot() then
		self:FinishShotgunReload()
	end

	if not self:CanPrimaryAttack() then	return end
	if not self:CanShoot() then return end
	self:TakePrimaryAmmo(1)
	
	self:WeaponDelay() -- don't predict, has delay
	self:AfterPump() -- don't predict, has animations
	self:HandleBurstDelay() -- don't predict
	self:HandleShootAnimations() -- don't predict, has animations

	self.Owner:SetAnimation(PLAYER_ATTACK1)
	
	self:ShootGun()

end

function SWEP:ShootGun()
	if (IsFirstTimePredicted() or game.SinglePlayer()) then
	
		if CLIENT then
			self:AfterZoom() -- Predict, Client Only
		end
		
		self:PreShootBullet() -- Predict
		self:WeaponSound() -- Predict
		self:AddRecoil() -- Predict
		
	end
end

function SWEP:HandleShootAnimations()
	if self.HasDual then
		if self:GetIsLeftFire() then
			self:WeaponAnimation(self:Clip1(),ACT_VM_SECONDARYATTACK)
			self:SetIsLeftFire(false)
		else
			self:WeaponAnimation(self:Clip1(),ACT_VM_PRIMARYATTACK)
			self:SetIsLeftFire(true)
		end
	else
		self:WeaponAnimation(self:Clip1(),ACT_VM_PRIMARYATTACK)
	end
end

function SWEP:CanShoot()
	if self:IsBusy() then return false end
	if self:IsUsing() then return false end
	if self.WeaponType == "Throwable" then 
		self:PreThrowObject() 
		return false 
	end
	return true
end

function SWEP:AfterPump()

	if self.HasPumpAction and self.HasHL2Pump then
		self:SetNextPrimaryFire(CurTime() + 10)
		self:SetNeedsHL2Pump(true)
		self:SetNextHL2Pump(CurTime() + self.Primary.Delay)
	end

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

	local FinalDelay =  self.Primary.Delay
	
	if self.HasBuildUp or self.UsesBuildUp then
		FinalDelay = FinalDelay + ( (self.Primary.Delay*5) * (100 - self:GetBuildUp()) * 0.01 )
	end
	
	if CLIENT then
		if self.HasBoltAction then
			self.BoltDelay = CurTime() + self.Primary.Delay
		end
	end

	if self.HasBurstFire then
		if self:GetIsBurst() then
			FinalDelay = FinalDelay * (self.BurstOverride*2)
		end
	end
	
	self:SetNextPrimaryFire(CurTime() + FinalDelay)
	
end

function SWEP:AfterZoom()
	if self.HasScope then
		if self.HasBoltAction then
			if self:GetZoomed() then
				self:SetZoomed(false)
				if CLIENT then
					self.WasZoomed = true
					self.BoltDelay = CurTime() + self.Owner:GetViewModel():SequenceDuration()
				end
			end
		end
	end
end

function SWEP:PreShootBullet() -- Should be predicted

	local Damage = self.Primary.Damage
	local Shots = self.Primary.NumShots
	local Cone = self:HandleCone(self.Primary.Cone,false)
	local Source = self.Owner:GetShootPos()
	local Direction = self.Owner:GetAimVector()
	
	if self.Owner:IsPlayer() then
		Direction = (self.Owner:EyeAngles() + self.Owner:GetPunchAngle()):Forward()
	end
	
	if Shots == 1 then
		self:ShootBullet(Damage,Shots,Cone,Source,Direction,self.EnableTracer,self.Owner)
	else
		for i=1, Shots do
		
			math.randomseed( os.time() + i*math.random(-100,100) )
			
			local Multi01 = math.random(-100,100) / 100
			local Multi02 = math.random(-100,100) / 100
			local Multi03 = math.random(-100,100) / 100
			
			local RandAngle = Angle(Cone*Multi01*45,Cone*Multi02*45,Cone*Multi03*45)
			local UselessVector, UsefulAngle = WorldToLocal(Vector(0,0,0), self.Owner:EyeAngles() , Vector(0,0,0), RandAngle )
			local NewDirection = ( UsefulAngle + self.Owner:GetPunchAngle() ):Forward()

			self:ShootBullet(Damage,1,0,Source,NewDirection,self.EnableTracer,self.Owner)
			
		end
	end
	
	if self.HasBuildUp or self.UsesBuildUp then
		self:SetBuildUp( math.Clamp(self:GetBuildUp() + self.BuildUpAmount - (self:GetBuildUp()/10) ,0,100 ) )
	end
	
	self:AddHeat(Damage,Shots)
	
	self:PostPrimaryFire()
	
	
end

function SWEP:PostPrimaryFire()




end

function SWEP:WeaponAnimation(clip,animation)

	--print("Animation")

	if self:GetIsShotgunReload() then
		self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
		return
	end
	
	if self:GetIsSilenced() then
		if clip == 0 and self.HasDryFire then
			self:SendWeaponAnim(ACT_VM_DRYFIRE_SILENCED)
		else
			self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_SILENCED)
		end
	else
		if clip == 0 and self.HasDryFire then
			self:SendWeaponAnim(ACT_VM_DRYFIRE)
		else
			self:SendWeaponAnim(animation)
		end
	end

end

function SWEP:WeaponSound()

	local GunSound = self.Primary.Sound
	local SoundMul = 1
	
	if self.LastBulletSound and self:Clip1() == 0 then
		GunSound = self.LastBulletSound
	end

	if self.HasSilencer then
		if self:GetIsSilenced() then
			GunSound = self.Secondary.Sound
			SoundMul = 0.1
		end
	end

	if self.HasBurstFire then
		if self.BurstSound != nil then
			if self:GetIsBurst() then
				GunSound = self.BurstSound
			end
		end
	end
	
	if GunSound ~= nil then
		self:EmitGunSound(GunSound, ((50 + self.Primary.Damage)/100)*SoundMul  )
	end

end

function SWEP:HandleCone(Cone,IsCrosshair)

	if self.HasBurstFire then
		if self:GetIsBurst() then
			Cone = Cone * self.BurstConeMul
		end
	elseif self.HasSilencer then
		if self:GetIsSilenced() then
			Cone = Cone*0.9
		end
	end

	local Velocity = self.Owner:GetVelocity():Length() 
	
	if not self.Owner:IsOnGround() then
		Velocity = 400
	elseif self.Owner:IsPlayer() and self.Owner:Crouching() then
		Cone = Cone * 0.75
	end
	
	Cone = Cone * GetConVarNumber("sv_css_cone_scale")
	
	if CLIENT and IsCrosshair  then
		Cone = Cone + (self.ClientCoolDown*self.HeatMul*0.01)
	else
		Cone = Cone + (self:GetCoolDown()*self.HeatMul*0.01)
	end
	
	local VelCone = math.Clamp( ( (Velocity * self.VelConeMul * GetConVarNumber("sv_css_velcone_scale")) ^ 1.75 ) * 0.000001, 0, 0.1)
	
	Cone = Cone + VelCone

	return Cone

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
	

	if self:IsUsing() then
		if self.HasSpecialFire then
			self:SpecialFire()
		end
	end
	
	if (IsFirstTimePredicted() or game.SinglePlayer()) then
		if self:IsUsing() then
			if self.HasBurstFire then
				self:SwitchFireMode()
			elseif self.HasSilencer then
				self:Silencer()
			end
		else
			if self.HasIronSights and GetConVar("sv_css_enable_ironsights"):GetFloat() == 0 then
				if self.HasSpecialFire then
					self:SpecialFire()
				elseif self.HasBurstFire then
					self:SwitchFireMode()
				elseif self.HasSilencer then
					self:Silencer()
				end
			elseif (CLIENT or game.SinglePlayer()) then
				if (self.HasIronSights and GetConVar("sv_css_enable_ironsights"):GetFloat() == 1) or self.HasScope then
					self:HandleZoom(1)
				end
			end
		end
	end

end

function SWEP:SpecialFire()


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
	--if self:IsBusy() then return end
	
	if self.HasScope then
		self.Owner:EmitSound("weapons/zoom.wav",0.01)
	end

	if self:GetZoomed() then
		self:SetZoomed(false)
	else
		self:SetZoomed(true)
	end

	self.NextZoomTime = CurTime() + delay
	
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
	
		local ZoomAmount = self.ZoomAmount
	
		if self.HasBurstFire and self:GetIsBurst() then
			ZoomAmount = ZoomAmount*self.BurstZoomMul
		end
		
		local ZoomMag = 1 + ( self.ZoomMod * ZoomAmount )
		
		fov = self.DesiredFOV / ZoomMag
		
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
	
		if (IsFirstTimePredicted() or game.SinglePlayer()) then
			self.Owner:EmitSound("weapons/clipempty_pistol.wav")
		end

		self:SetNextPrimaryFire(CurTime() + 0.25)
		return false
	end

	return true
	
end

function SWEP:GetRecoilMath()
	return self.Primary.Damage*self.Primary.NumShots*self.RecoilMul*self.Primary.Delay*1.875*GetConVarNumber("sv_css_recoil_scale")
end

function SWEP:GetRecoilFinal()

	local UpPunch = -self:GetRecoilMath()
	local SidePunch = 0
	
	if self.HasBurstFire and self:GetIsBurst() then
		UpPunch = UpPunch*self.BurstRecoilMul
	end
	
	local AvgBulletsShot = 0
	
	if SERVER or game.SinglePlayer() then
		AvgBulletsShot = self:GetCoolDown() / self:GetHeatMath(self.Primary.Damage,self.Primary.NumShots)
	else
		AvgBulletsShot = self.ClientCoolDown / self:GetHeatMath(self.Primary.Damage,self.Primary.NumShots)
	end
	
	UpPunch = UpPunch * ( 1 + AvgBulletsShot/ (1/self.Primary.Delay) )
	
	local PredictedUpPunch = -UpPunch
	
	if CLIENT then
		PredictedUpPunch = -UpPunch + -self.PunchAngleUp.p
	end
	
	local DelayMul = 1
	
	if self.Primary.Delay >= 0.5 then
		DelayMul = 0
	end
	
	if self.HasSideRecoil then
		if DelayMul == 1 then
			if AvgBulletsShot > 2*DelayMul then
				SidePunch = UpPunch*math.random(-1,1)*self.SideRecoilMul
			end
		else
			SidePunch = UpPunch*math.Rand(0,1)*self.SideRecoilMul
		end
	end
	
	if self.HasDownRecoil then
		if AvgBulletsShot > 3*DelayMul then
			UpPunch = UpPunch*math.random(-1,1)*0.5
		end
	end
	
	if self.HasScope and self.ZoomAmount > 4 and self:GetZoomed() then
		UpPunch = UpPunch*0.5
		SidePunch = SidePunch*0.5
	end
	
	return UpPunch, SidePunch

end

function SWEP:AddRecoil()

	if SERVER then
		if self.Owner:IsBot() then
			local UpPunch, SidePunch = self:GetRecoilFinal()
			self.Owner:SetEyeAngles(self.Owner:EyeAngles() + Angle(UpPunch*0.25,SidePunch*0.25,0))
		end
		return 
	end
	
	if CLIENT then
		local UpPunch, SidePunch = self:GetRecoilFinal()
		self.PunchAngleUp = self.PunchAngleUp + Angle(UpPunch,SidePunch,0) + Angle(self.ShootOffsetStrength.p*math.Rand(-0.5,0.5),self.ShootOffsetStrength.y*math.Rand(-0.5,0.5),0)
		self.PunchAngleDown = self.PunchAngleDown + Angle(UpPunch,SidePunch,0) + Angle(self.ShootOffsetStrength.p*math.Rand(-0.5,0.5),self.ShootOffsetStrength.y*math.Rand(-0.5,0.5),0)
	end

end

function SWEP:GetHeatMath(Damage,Shots)

	local DamageMod = Damage*Shots*0.01
	local ConeMod = (math.max(0.001,self.Primary.Cone)^-0.1)
	local WeightMod = (self.MoveSpeed / 250 )
	local BurstMod = 1

	if self.HasBurstFire and self:GetIsBurst() then
		BurstMod = self.BurstHeatMul
	end
	
	local CoolDown = DamageMod*ConeMod*WeightMod*GetConVarNumber("sv_css_heat_scale")*BurstMod
	
	return CoolDown
	
end

function SWEP:AddHeat(Damage,Shots)

	--[[
	if self.Owner and self.Owner:IsPlayer() and self.Owner:IsBot() then
		Damage = Damage*2
	end
	--]]
	
	local CoolDown = self:GetHeatMath(Damage,Shots)
	local CoolTime = CurTime() + (self.Primary.Delay + 0.1)*GetConVarNumber("sv_css_cooltime_scale")*self.CoolMul
	
	self:SetCoolDown( math.Clamp(self:GetCoolDown() + CoolDown,0,10) )
	self:SetCoolTime( CoolTime )
	
	if CLIENT and self.Owner == LocalPlayer() then
		self.ClientCoolDown = math.Clamp(self.ClientCoolDown + CoolDown,0,10)
		self.ClientCoolTime = CoolTime
	end
	
end

function SWEP:ShootBullet(Damage, Shots, Cone, Source, Direction,EnableTracer,LastEntity)
	
	if not IsFirstTimePredicted( ) then return end
	
	--[[
	
	local BulletTable = {
		pos = Source,
		speed = Direction*1000,
		energy = 1,
		owner = self.Owner
	}
	
	table.Add(CSS_AllBullets,{BulletTable})
	
	--]]
	
	if self and self.BulletEnt then
	
		if SERVER then
			
			local EyeTrace = self.Owner:GetEyeTrace()
			
			local HitPos = EyeTrace.HitPos
			
			local Dir = (HitPos - Source)
			Dir:Normalize()
			
			Source = Source + self.Owner:GetForward()*self.SourceOverride.y + self.Owner:GetRight()*self.SourceOverride.x + self.Owner:GetUp()*self.SourceOverride.z

			local Bullet = ents.Create(self.BulletEnt)	
			if Bullet:IsValid() then
				Bullet:SetPos(Source)
				Bullet:SetAngles( Dir:Angle() + self.BulletAngOffset + Angle(math.Rand(-Cone,Cone),math.Rand(-Cone,Cone),0)*45 )
				Bullet:SetOwner(self.Owner)
				Bullet:Spawn()
				Bullet:Activate()
			else
				SafeRemoveEntity(Bullet)
			end
		end
	
	else
	
		local bullet = {}
		bullet.Damage	= Damage * GetConVarNumber("sv_css_damage_scale")
		bullet.Num		= Shots
		bullet.Spread	= Vector(Cone, Cone, 0)
		bullet.Src		= Source
		bullet.Dir		= Direction
		bullet.AmmoType = self.Primary.Ammo
		bullet.HullSize = 0
		
		if EnableTracer then
			bullet.Tracer = self.TracerOverride
		else
			bullet.Tracer = 0
		end

		bullet.TracerName = self.TracerName
		
		bullet.Force	= nil
		bullet.Callback = function( attacker, tr, dmginfo)
		
			if attacker:IsPlayer() then
			
				local Weapon = attacker:GetActiveWeapon()

				if Weapon and Weapon.DamageFalloff then
					if Weapon.DamageFalloff > 0 then
						local Distance = tr.StartPos:Distance(tr.HitPos)
						local DamageMul = math.Clamp(GetConVarNumber("sv_css_damagefalloff_scale"),0,1)
						local DFMod = (1 - DamageMul) + math.min(1, ( (Weapon.DamageFalloff) / Distance ))*DamageMul
						dmginfo:ScaleDamage(DFMod)
					end
				end

				if GetConVarNumber("sv_css_enable_penetration") == 1 then
					if LastEntity ~= tr.Entity then
						self:WorldBulletSolution(tr.HitPos,Direction,Damage)
					end
				end
				
				if SERVER then
					if tr.Entity:GetClass() == "prop_vehicle_prisoner_pod" or tr.Entity:IsVehicle() then
						if tr.Entity:GetDriver() ~= NULL then
							tr.Entity:GetDriver():TakeDamageInfo(dmginfo)
						end
					end
				end
				
				if Weapon.TracerName == "AR2Tracer" then
				
					local Data = EffectData()
					Data:SetAngles(Angle(0,0,0))
					Data:SetColor(1)
					Data:SetDamageType(DMG_BULLET)
					if SERVER then
						Data:SetEntIndex(tr.Entity:EntIndex())
					end
					Data:SetEntity(tr.Entity)
					Data:SetFlags(3)
					Data:SetMagnitude(100)
					Data:SetNormal(tr.HitNormal)
					Data:SetOrigin(tr.HitPos)
					Data:SetRadius(128)
					Data:SetScale(1)
					Data:SetStart(tr.HitPos)
					Data:SetSurfaceProp(tr.SurfaceProps)
					
					util.Effect("AR2Impact",Data)
					
				end

			end
		end
		
		self.Owner:FireBullets(bullet)
		
	end
	
end

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

	local DamageMath = math.Round(Damage - (GetConVarNumber("sv_css_penetration_scale")*MatMul*math.max(0.1,self.PenetrationLossMul)*Amount),2)
	
	if DamageMath > 0 then
		if trace.StartSolid then
			self:WorldBulletSolution(data.endpos,Direction,DamageMath)
		else
			self:ShootBullet(DamageMath, 1, 0, data.endpos,Direction,false,HitEnt)
		end
	end


end

function SWEP:EmitGunSound(GunSound,Level)
	self.Weapon:EmitSound(GunSound)	
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

	if not self:GetCanHolster() then
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
	if self:Clip1() >= self.Primary.ClipSize then return end
	if self:GetNextPrimaryFire() > CurTime() then return end
	if self.WeaponType == "Throwable" then return end
	if (self:Clip1() > 0 and self.DisableReloadUntilEmpty) then return end
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
		self:SendWeaponAnim(ACT_SHOTGUN_RELOAD_START)
		self:SetNextShell(CurTime() + self.Owner:GetViewModel():SequenceDuration())
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
				if self.GetMagModel and self.HasMagIn then
				
					self.HasMagIn = false

					local mag = ents.Create("ent_cs_debris")
					mag:SetPos(self.Owner:GetShootPos() + self.Owner:GetUp()*-12 + self.Owner:GetRight()*3)
					mag:SetModel(self.GetMagModel)
					mag:SetAngles(self.Owner:EyeAngles())
					mag:Spawn()
					mag:Activate()
					SafeRemoveEntityDelayed(mag,30)
					
					if self.HasDual then
						local mag = ents.Create("ent_cs_debris")
						mag:SetPos(self.Owner:GetShootPos() + self.Owner:GetUp()*-12 + self.Owner:GetRight()*-3)
						mag:SetModel(self.GetMagModel)
						mag:SetAngles(self.Owner:EyeAngles() + Angle(1,1,1) )
						mag:Spawn()
						mag:Activate()
						SafeRemoveEntityDelayed(mag,30)
					end

				end
			end)
		end
	end
	
	self:SetIsReloading(true)
	
end

function SWEP:DrawWorldModel()
	--print("HELLO?")
	self:DrawModel()
end

function SWEP:GetViewModelPosition( pos, ang )

	--ang = LocalPlayer():EyeAngles()
	
	if ( !self.IronSightsPos ) then return pos, ang end
	
	local bIron = self:GetZoomed() or (self.EnableBlocking and self.Owner:KeyDown(IN_ATTACK2) )
	
	if ( bIron != self.bLastIron ) then
	
		self.bLastIron = bIron 
		self.fIronTime = CurTime()
		
		if ( bIron ) then 
			self.SwayScale 	= 0.1
			self.BobScale 	= 0.1
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
	
	if GetConVar("cl_css_crosshair_neversights"):GetFloat() == 1 and self.HasScope == false then
		Offset = Offset - Vector(Offset.x/2,0,Offset.z/2)
	end
	
	--[[
	if game.SinglePlayer() then
		Offset = Offset - Vector(0,Offset.y,0)
	end
-	-]]

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

	--print(self:GetWeaponWorldModel())


	self:HandleCoolDown() -- don't predict
	self:HandleBuildUp()
	self:HandleShotgunReloadThinkAnimations() -- don't predict
	self:EquipThink() -- don't predict, ever
	self:HandleBurstFireShoot() -- don't predict, ever
	self:HandleReloadThink() -- don't predict, ever
	
	
	self:SpareThink()
	
	if (CLIENT or game.SinglePlayer()) then
	
		local FOVMOD = math.max(90 - self.Owner:GetFOV(),GetConVarNumber("cl_css_viewmodel_fov") + self.AddFOV)
		
		if self.HasScope and self:GetZoomed() and not self.IgnoreScopeHide then
			FOVMOD = 100
		end

		self.ViewModelFOV = FOVMOD
		--self.DesiredFOV = GetConVar("fov_desired"):GetFloat()
		
		self:HandleBoltZoomMod()
		self:HandleZoomMod()

		if IsFirstTimePredicted() then 
			self:RemoveRecoil()
		end
		
	end
	
end

function SWEP:SpareThink()


end

function SWEP:HandleBuildUp()
	if self.HasBuildUp or self.UsesBuildUp then
		if self:GetCoolTime() <= CurTime() then
			self:SetBuildUp( math.Clamp(self:GetBuildUp() - 0.015*self.BuildUpCoolAmount,0,100) )
		end
	end
end

function SWEP:HandleBurstFireShoot()
	if self.HasBurstFire then
		if self:GetNextBulletDelay() <= CurTime() and self:GetBulletQueue() > 0 then
		
			self:SetNextBulletDelay(CurTime() + self:GetBurstMath())
			self:SetBulletQueue(self:GetBulletQueue() - 1)

			if (self:Clip1() > 0) or self:Clip1() == -1 and self:Ammo1() >= 1 then
			
				self:TakePrimaryAmmo(1)
				self:HandleShootAnimations()
				self:ShootGun()
				
			end
			
		end
	end
end

function SWEP:HandleReloadThink()

	if self:GetIsNormalReload() then
	
		--self:SetIsReloading(true)

		if self:GetReloadFinish() <= CurTime() and self:GetIsReloading() then

			if self.Owner:GetAmmoCount( self.Primary.Ammo ) >= self.Primary.ClipSize then
				self:SetClip1(self.Primary.ClipSize)
				self.Owner:RemoveAmmo(self.Primary.ClipSize,self.Primary.Ammo)
				self.HasMagIn = true
			else
				self:SetClip1(self.Owner:GetAmmoCount(self.Primary.Ammo))
				self.Owner:RemoveAmmo(self.Owner:GetAmmoCount(self.Primary.Ammo),self.Primary.Ammo)
				self.HasMagIn = true
			end

			--self:SendWeaponAnim(ACT_VM_IDLE)
			
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
				self:SetNextShell(CurTime()+self.Owner:GetViewModel():SequenceDuration())

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

function SWEP:CancelReload()
	--self:SendWeaponAnim( ACT_VM_IDLE )
	self:SetNextPrimaryFire(CurTime() + 0.1)
	self:SetIsReloading(false)
end

function SWEP:HandleShotgunReloadThinkAnimations()

	if self.HasPumpAction and self.HasHL2Pump then
		if self:GetNeedsHL2Pump() and self:GetNextHL2Pump() <= CurTime() then
			self:SendWeaponAnim( ACT_SHOTGUN_PUMP )
			self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration() )
			if CLIENT and IsFirstTimePredicted() then
				if self.PumpSound then
					self.Owner:EmitSound(self.PumpSound)
				end
			end
			self:SetNeedsHL2Pump(false)
		end
	end

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
				self:SetNextPrimaryFire( CurTime() + self.Owner:GetViewModel():SequenceDuration() )
			end
		end
	end
	
end

function SWEP:HandleCoolDown()

	local CoolMul = GetConVarNumber("sv_css_cooldown_scale")*0.1*self.CoolSpeedMul

	if self:GetCoolTime() <= CurTime() then
		if self:GetCoolDown() ~= 0 then
			self:SetCoolDown(math.Clamp(self:GetCoolDown() - CoolMul,0,10))
		end
	end
	
	if CLIENT and self.Owner == LocalPlayer() then
		if self.ClientCoolTime <= CurTime() then
			if self.ClientCoolDown ~= 0 then 
				self.ClientCoolDown = math.Clamp(self.ClientCoolDown - CoolMul,0,10)
			end
		end
	end

end

function SWEP:HandleZoomMod()
	if not game.SinglePlayer() then
		if self:GetZoomed() then
			if self.HasIronSights then
				self.ZoomMod = math.min(self.ZoomMod + 0.015*6,1)
			else
				self.ZoomMod = 1
			end
		else
			if self.HasIronSights then
				self.ZoomMod = math.max(self.ZoomMod - 0.015*6,0)
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

	local FrameMul = 0.015*15
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

	local Sensitivity = self.Owner:GetFOV() / self.DesiredFOV
	
	return Sensitivity
	
end

function SWEP:DrawHUDBackground()

	local x = ScrW()
	local y = ScrH()
	
	if LocalPlayer():ShouldDrawLocalPlayer() then
	
		local HitPos = LocalPlayer():GetEyeTrace().HitPos
		local Screen = HitPos:ToScreen()
		
		x = Screen.x * 2
		y = Screen.y * 2

	end
	
	local length = GetConVarNumber("cl_css_crosshair_length")
	local width = GetConVarNumber("cl_css_crosshair_width")
	
	local fovbonus = self.DesiredFOV / self.Owner:GetFOV()

	local r = GetConVarNumber("cl_css_crosshair_color_r")
	local g = GetConVarNumber("cl_css_crosshair_color_g")
	local b = GetConVarNumber("cl_css_crosshair_color_b")
	local a = GetConVarNumber("cl_css_crosshair_color_a")
	
	local VelCone = self.Owner:GetVelocity():Length()*0.0001
	
	if GetConVarNumber("cl_css_crosshair_dynamic") == 0 then
		Cone = math.Clamp(self.Primary.Cone*900,0,x/2)
	else
		Cone = math.Clamp(self:HandleCone(self.Primary.Cone,true) * 900,0,x/2)*fovbonus
	end
	
	local ConeToSend = Cone
	
	if not game.SinglePlayer() then
		if GetConVarNumber("cl_css_crosshair_smoothing") == 1 then
		
			if not self.StoredCrosshair then
				self.StoredCrosshair = Cone
			end
			
			local SmoothingMul = GetConVarNumber("cl_css_crosshair_smoothing_mul") * 0.015 * fovbonus
			
			if Cone > self.StoredCrosshair then
				self.StoredCrosshair = math.min(Cone,self.StoredCrosshair + 500 * SmoothingMul )
			elseif Cone < self.StoredCrosshair then
				self.StoredCrosshair = math.max(Cone,self.StoredCrosshair - 300 * SmoothingMul )
			end
			
			ConeToSend = self.StoredCrosshair

		end
	end
		
	if self.HasCrosshair or (self.Owner:IsPlayer() and self.Owner:IsBot()) then
		self:DrawCustomCrosshair(x,y,ConeToSend,length,width,r,g,b,a)
	end

	if self.HasScope then
		if self:GetZoomed() then
		
			if LocalPlayer():ShouldDrawLocalPlayer() then
				self:DrawCustomCrosshair(x,y,ConeToSend,length,width,r,g,b,a)
			else
				self:DrawCustomScope(x,y,ConeToSend,r,g,b,a)
			end
			
			if not self.IgnoreScopeHide then
				self.Owner:DrawViewModel(false)	
			end

		else
			self.Owner:DrawViewModel(true)
		end
	end
	
end

function SWEP:DrawCustomCrosshair(x,y,Cone,length,width,r,g,b,a)

	local XRound = math.floor(x/2)
	local YRound = math.floor(y/2)
	local WRound = math.floor(width/2)
	local LRound = math.floor(length/2)
	local SizeOffset = GetConVarNumber("cl_css_crosshair_offset")
	local FinalCone = math.floor( math.Max(Cone,WRound*2,LRound/2) + SizeOffset )
	
	local CrosshairShadow = GetConVarNumber("cl_css_crosshair_shadow")
	local CrosshairStyle = GetConVarNumber("cl_css_crosshair_style")
	local CrosshairDot = GetConVarNumber("cl_css_crosshair_dot")
	
	
	if !self:GetZoomed() or self.EnableIronCross or ( GetConVarNumber("cl_css_crosshair_neversights") == 1 and not self.HasScope) then

		if  WRound == 0 then
	
			if CrosshairStyle >= 1 and CrosshairStyle <= 4 then
			
				if CrosshairShadow >= 1 then
					-- Start of Shadow Stuff
					local x1 = XRound + FinalCone + LRound*2
					local x2 = XRound - FinalCone - LRound*2
					local y3 = YRound + FinalCone + LRound*2
					local y4 = YRound - FinalCone - LRound*2

					local Offset = 1
					local ShadowWidth = 3
					local ShadowLength = LRound*2 + Offset*3

					surface.SetDrawColor(Color(0,0,0,255))
					surface.DrawRect( x1 - LRound*2 - 1, YRound - Offset , ShadowLength, ShadowWidth )
					surface.DrawRect( x2 - 1, YRound - Offset , ShadowLength, ShadowWidth )
					surface.DrawRect( XRound - Offset, y3 - LRound*2 - 1 , ShadowWidth, ShadowLength )
					surface.DrawRect( XRound - Offset, y4 - 1 , ShadowWidth, ShadowLength )
					-- End of Shadow Stuff
				end
				
				-- Start of Normal Stuff
				if width > 1 then
			
					local x1 = XRound - WRound 
					local x2 = XRound - WRound
					local y3 = YRound - WRound
					local y4 = YRound - WRound
					
					local y1 = YRound + math.max(FinalCone,0)
					local y2 = YRound - (LRound*2) - math.max(FinalCone,0)
					local x3 = XRound + math.max(FinalCone,0)
					local x4 = XRound - (LRound*2) - math.max(FinalCone,0)

					surface.SetDrawColor(r,g,b,a)
					surface.DrawRect( x1, y1, WRound*2, LRound*2 )
					surface.DrawRect( x2, y2, WRound*2, LRound*2 )
					surface.DrawRect( x3, y3, LRound*2, WRound*2 )
					surface.DrawRect( x4, y4, LRound*2, WRound*2 )
			
				else
				
					local x1 = XRound + FinalCone + LRound*2
					local x2 = XRound - FinalCone - LRound*2
					local y3 = YRound + FinalCone + LRound*2
					local y4 = YRound - FinalCone - LRound*2
					
					surface.SetDrawColor(r,g,b,a)
					surface.DrawLine( x1, YRound, XRound+FinalCone, YRound )
					surface.DrawLine( x2, YRound, XRound-FinalCone, YRound )		
					surface.DrawLine( XRound, y3, XRound, YRound+FinalCone )		
					surface.DrawLine( XRound, y4, XRound, YRound-FinalCone )

				end
				-- End of Normal Stuff

			end
			
			if CrosshairDot >= 1 then
		
				local Max = math.max(1,width)
				
				--Start of Shadow Stuff
				if width <= 1 then
					surface.SetDrawColor(Color(0,0,0,255))
					surface.DrawRect( XRound - WRound - 1, YRound - WRound - 1 , Max + 2, Max + 2 )
				end
				-- End of Shadow Stuff
				
				-- Start of Normal Stuff
				surface.SetDrawColor(r,g,b,a)
				surface.DrawRect( XRound - WRound, YRound - WRound , Max, Max )
				-- End of Shadow Stuff

			end
			
			if CrosshairStyle >= 2 and CrosshairStyle <= 5 then
				
				local Offset = 0
		
				if CrosshairStyle == 4 then
					Offset = LRound*2
				elseif CrosshairStyle == 3 then
					Offset = LRound
				else
					Offset = 0
				end
			
				-- Start of Shadow Stuff
				surface.DrawCircle(x/2,y/2, FinalCone + Offset - 1, Color(0,0,0,a))
				surface.DrawCircle(x/2,y/2, FinalCone + Offset + 1, Color(0,0,0,a))
				-- End of Shadow Stuff
				
				-- Start of Normal Stuff
				surface.DrawCircle(XRound,YRound, FinalCone + Offset, Color(r,g,b,a))
			
				if width > 1 then
					surface.DrawCircle(XRound,YRound, FinalCone + Offset + 1, Color(r,g,b,a))
				end
				-- End of Normal Stuff
				
			end
			
		end
		
	end	
	
end

function SWEP:DrawCustomScope(x,y,Cone,r,g,b,a)

	local space = 1
	
	if self.ColorOverlay.a > 0 then
		surface.SetDrawColor(self.ColorOverlay)
		surface.DrawRect(0, 0, x, y )
	end
	
	surface.SetDrawColor(Color(0,0,0))
	
	if self.CustomScope == nil then
		surface.SetMaterial(Material("gui/sniper_corner"))
		surface.DrawTexturedRectRotated(x/2 - y/4,y/2 - y/4,y/2 + space,y/2 + space,0-180-180)
		surface.DrawTexturedRectRotated(x/2 - y/4,y/2 + y/4,y/2 + space,y/2 + space,90-180-180)
		surface.DrawTexturedRectRotated(x/2 + y/4,y/2 + y/4,y/2 + space,y/2 + space,180-180-180)
		surface.DrawTexturedRectRotated(x/2 + y/4,y/2 - y/4,y/2 + space,y/2 + space,270-180-180)

		if self.ZoomAmount > 6 then
			surface.DrawLine(x/2,0,x/2,y)
			surface.DrawLine(0,y/2,x,y/2)
		else
			surface.DrawCircle( x/2, y/2, 0.01 , Color(r,g,b,a) )
		end
		
	else
	
		local Size = y
		
		if self.CustomScopeSOverride then
			Size = self.CustomScopeSOverride
		end
	
		surface.SetDrawColor(self.CustomScopeCOverride)
		surface.SetMaterial(self.CustomScope)
		surface.DrawTexturedRectRotated(x/2,y/2,Size,Size,0)
		
		surface.SetDrawColor(Color(0,0,0,255))
		surface.SetMaterial(Material("vgui/scope_lens"))
		surface.DrawTexturedRectRotated(x/2,y/2,y,y,0)
		
	end
	
	local Size = math.Clamp(Cone,3,x/2*0.33)
			
	if Size > 6 then
		surface.DrawCircle( x/2, y/2, Size , Color(r,g,b,a) )
	end

	surface.SetDrawColor(Color(0,0,0))
	surface.SetMaterial(Material("vgui/gfx/vgui/solid_background"))
	surface.DrawTexturedRectRotated(x/4 - y/4,y/2,x/2 - y/2,y,0)
	surface.DrawTexturedRectRotated(x - x/4 + y/4,y/2,x/2 - y/2,y,0)
	
end

function SWEP:HUDShouldDraw( element )

	if self:GetZoomed() and element == "CHudWeaponSelection" then
		return false
	end
	
	return true
	
end

function SWEP:PrintWeaponInfo( x, y, alpha )

	local InfoColor = Color(255,255, 100, alpha)

	if (self.InfoMarkup == nil ) then
	
		local Ammo = language.GetPhrase( self.Primary.Ammo .. "_ammo" )
	
		local Damage = math.floor(self.Primary.NumShots * self.Primary.Damage * GetConVarNumber("sv_css_damage_scale"))	
		
		local Delay = self.Primary.Delay
		
		if self.HasHL2Pump then
			Delay = Delay + 1
		end

		local FireRate = math.floor((Delay^-1)*60)

		local ClipSize = self.Primary.ClipSize
		
		if ClipSize == -1 then
			ClipSize = 250
		end
		
		local ClipDamage = Damage * ClipSize
		local DPS = math.min(ClipDamage,math.floor(( 1 / Delay) * Damage ))
		local Cone = math.Round((self.Primary.Cone * GetConVarNumber("sv_css_cone_scale")) * (360/1),2)
		local Recoil = math.Round(self:GetRecoilMath() * 0.25,2)
		local KillTime = math.Round((math.ceil(100/Damage) - 1) * (Delay),2)
		local MissKillTime = math.Round( ( (math.ceil(100/Damage) - 1) * (Delay) ) + Delay,2)
		local DamageFalloff =  math.floor( (self.DamageFalloff  / 64) * 1.22 ) * 2
		
		local str
		local title_color = "<color=0,0,0,255>"
		local text_color = "<color=255,150,150,255>"
		
		str = "<font=HudSelectionText>"
		str = str .. title_color .. "Ammo:</color> "..text_color..Ammo.."</color>\n" 
		str = str .. title_color .. "Damage:</color> "..text_color..Damage.."</color>\n" 
		str = str .. title_color .. "Max Range:</color> "..text_color..DamageFalloff.. " meters" .."</color>\n" 
		str = str .. title_color .. "Firerate:</color> "..text_color.. FireRate .. " RPM" .."</color>\n"
		str = str .. title_color .. "Damage Per Second:</color> "..text_color.. DPS .. "DPS" .. "</color>\n"
		str = str .. title_color .. "Recoil:</color> "..text_color.. Recoil .. " degrees" .."</color>\n" 
		str = str .. title_color .. "Inaccuracy:</color> "..text_color.. Cone .. " degrees" .. "</color>\n"
		str = str .. title_color .. "Kill Time:</color> "..text_color.. KillTime .. " seconds" .. "</color>\n"
		str = str .. title_color .. "Miss Kill Time:</color> "..text_color.. MissKillTime .. " seconds" .. "</color>\n"
		str = str .. "</font>"
		
		self.InfoMarkup = markup.Parse( str, 250 )
	end
	
	surface.SetDrawColor( InfoColor )
	surface.SetTexture( self.SpeechBubbleLid )

	surface.DrawTexturedRect( x, y - 64 - 5, 128, 64 ) 
	draw.RoundedBox( 8, x - 5, y - 6, 260, self.InfoMarkup:GetHeight() + 18, InfoColor )
	
	self.InfoMarkup:Draw( x+5, y+5, nil, nil, alpha )
	
end

function SWEP:EquipThink()

	if self.WeaponType ~= "Throwable" then return end

	if self:GetIsThrowing() then
	
		if self:GetThrowAnimationTime() <= CurTime() then
			print("ANIMATING THROW")
			self:SendWeaponAnim(ACT_VM_THROW)
			self:SetThrowAnimationTime(CurTime() + 10)
		end
		
		if self:GetThrowTime() <= CurTime() then
			print("THROWING OBJECT")
			self.Owner:SetAnimation(PLAYER_ATTACK1) 
			self:ThrowObject(self.Object,1000)
			if self:Ammo1() > 0 then
				self:TakePrimaryAmmo(1)
			end
			self:SetThrowTime(CurTime() + 10)
		end
		
	if self:GetThrowRemoveTime() <= CurTime() then
		print("REMOVING OBJECT")
		self:SetCanHolster( true )
		self:SetIsThrowing( false )
		if self:Ammo1() > 0 then
			self:SendWeaponAnim(ACT_VM_DRAW)
		else
			self:SwitchToPrimary() -- Removing this does not change the bug
			if SERVER then
				self:Remove(self.Weapon)
			end
		end
	end
		
	end
	
end

function SWEP:SwitchToPrimary()

	if self.Owner:IsBot() then
		if SERVER then
			local Weapons = self.Owner:GetWeapons()
			self.Owner:SetActiveWeapon(Weapons[1])
			self.Owner:DrawWorldModel( true )
		end
	else
		self.Owner:ConCommand("lastinv")
	end
	
end

function SWEP:QuickThrow()
	self:PreThrowObject(true)
end

function SWEP:PreThrowObject(override)

	if self:IsUsing() and not override then return end
	
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	
	if self.HasPreThrow then
		self:SendWeaponAnim(ACT_VM_PULLPIN)
		self:SetThrowAnimationTime( CurTime() + 0.85 )
		self:SetThrowTime(CurTime() + 1.1)
		self:SetThrowRemoveTime(CurTime() + 2)
	else			
		self:SetThrowAnimationTime( 0 )
		self:SetThrowTime(CurTime() + 0.15)
		self:SetThrowRemoveTime(CurTime() + 1)
	end
	
	self:SetCanHolster( false )
	self:SetIsThrowing( true )
	
end

function SWEP:ThrowObject(object,force)

	if (CLIENT) then return end
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
		if object == "ent_hl2_gasparticle" then
			ent:GetPhysicsObject():SetVelocity( EA:Forward()*force + EA:Right()*math.random(-20,20) + EA:Up()*math.random(-20,20) + Vector(0,0,-10) )
		else
			ent:GetPhysicsObject():SetVelocity(self.Owner:GetVelocity() + EA:Forward() * force + EA:Up()*50)
		end
	else
		ent:SetVelocity(self.Owner:GetVelocity() + EA:Forward() * force)
	end

end

function SWEP:QuickKnife()

end

function SWEP:NewSwing(damage)

	if self.Owner:IsPlayer() then
		self.Owner:LagCompensation( true )
	end
	
	local Data = {}

	Data.start = self.Owner:GetShootPos()
	Data.endpos = self.Owner:GetShootPos() + self.Owner:EyeAngles():Forward()*75
	Data.filter = self.Owner
	Data.mins = Vector( -8 , -8 , -8 )
	Data.maxs = Vector( 8 , 8 , 8 )

	local Trace = util.TraceHull( Data )
	
	local HasHitTarget = false

	if Trace.Hit then
		HasHitTarget = true
		self:NewSendHitEvent(Trace.Entity,damage)
	else
		self:EmitGunSound(self.MeleeSoundMiss)
		HasHitTarget = false
	end
	
	if self.Owner:IsPlayer() then
		self.Owner:LagCompensation( false )
	end
	
	return HasHitTarget

end

function SWEP:NewSendHitEvent(victim,damage)

	if victim:IsPlayer() or victim:IsNPC() then
							
		local VictimAngles = victim:EyeAngles()
		local AttackerAngles = self.Owner:EyeAngles()
		VictimAngles:Normalize()
		AttackerAngles:Normalize()
		local NewAngles = VictimAngles - AttackerAngles
		NewAngles:Normalize()
		local Yaw = math.abs(NewAngles.y)
		
		if Yaw < 45 then
			damage = damage * 10
		end
		
		local ShouldDamage = true
		
		if victim and victim:IsPlayer() then
	
			VictimWeapon = victim:GetActiveWeapon()

			if VictimWeapon and VictimWeapon ~= NULL then
				if VictimWeapon.EnableBlocking then
				
					local VictimKeyDown = VictimWeapon:GetIsBlocking()
				
					if VictimKeyDown and VictimWeapon:GetNextSecondaryFire() <= CurTime() then

						local Range = 90
					
						if Yaw > 180 - Range/2 and Yaw < 180 + Range/2 then
							VictimWeapon:BlockDamage(damage*2)
							self:SetNextPrimaryFire(CurTime() + self.Primary.Delay*3)
							VictimWeapon:SetNextSecondaryFire(CurTime() + self.Primary.Delay*0.25)
							
							self:EmitGunSound("weapons/samurai/tf_katana_impact_object_02.wav")
							
							ShouldDamage = false
						end
						
					end
				end
			end

		end

		if ShouldDamage then
			self:NewStabDamage(damage, victim)
			if CLIENT then
				self:NewStabFleshEffect(victim)
			end
		end

	else
		self:NewStabDamage(damage, victim)
	end

end

function SWEP:NewStabDamage(damage, victim)

	if damage <= self.Primary.Damage then
		self:EmitGunSound(self.MeleeSoundFleshSmall)
	else
		self:EmitGunSound(self.MeleeSoundFleshLarge)
	end

	local dmginfo = DamageInfo()
	dmginfo:SetDamage( damage )
	dmginfo:SetDamageType( DMG_SLASH )
	dmginfo:SetAttacker( self.Owner )
	dmginfo:SetInflictor( self )
	dmginfo:SetDamageForce( self.Owner:GetForward() )
		
	if SERVER then
		victim:TakeDamageInfo( dmginfo )
	end
	
end

function SWEP:NewStabFleshEffect(victim)

	local StartPos = self.Owner:EyePos()
	local HitPos = victim:GetPos() + victim:OBBCenter()
	local NormalShit = (StartPos - HitPos):GetNormalized()
	
	local effect = EffectData()
	effect:SetOrigin(HitPos)
	effect:SetStart(StartPos)
	effect:SetNormal(NormalShit)
	effect:SetFlags(3)
	effect:SetScale(6)
	effect:SetColor(0)
	effect:SetDamageType(DMG_SLASH)
		
	if CLIENT then
		effect:SetEntity(victim)
	else
		effect:SetEntIndex(victim:EntIndex())
	end
	
	util.Effect("bloodspray", effect)
	util.Effect("BloodImpact", effect)

	util.Decal( "Blood", StartPos, StartPos + NormalShit*100)
	util.Decal( "Blood", victim:GetPos(), victim:GetPos())	
	
end

function SWEP:GetActivities()

	local ent = self

	local k, v, t

	t = { }

	for k, v in ipairs( ent:GetSequenceList( ) ) do
		table.insert( t, { id = k, act = ent:GetSequenceActivity( k ), actname = ent:GetSequenceActivityName( k ) } )
	end

	PrintTable(t)
  
end

function SWEP:SendSequence(anim)
	local vm = self.Owner:GetViewModel()
	vm:SendViewModelMatchingSequence( vm:LookupSequence( anim ) )
end

AccessorFunc(SWEP,"fNPCMinBurst","NPCMinBurst")
AccessorFunc(SWEP,"fNPCMaxBurst","NPCMaxBurst")
AccessorFunc(SWEP,"fNPCFireRate","NPCFireRate")
AccessorFunc(SWEP,"fNPCMinRestTime","NPCMinRest")
AccessorFunc(SWEP,"fNPCMaxRestTime","NPCMaxRest")