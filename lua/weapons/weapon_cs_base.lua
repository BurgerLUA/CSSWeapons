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
	
	language.Add("none_ammo", "" )

	surface.CreateFont( "csd",{font = "csd",size = 64,weight = 0})
end

local IsSingleplayer = false

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "Counter Strike Source Weapon Base"
SWEP.Base					= "weapon_base"
SWEP.BurgerBase				= true
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 0
SWEP.CSSMoveSpeed				= 250

SWEP.Spawnable				= false
SWEP.AdminOnly 				= false
SWEP.FuckBots				= false -- Bots don't spawn with this weapon

SWEP.Slot					= 3
SWEP.SlotPos				= 1

SWEP.Weight					= 0
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false


SWEP.ViewModel 				= "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.ViewModelFOV			= 45
SWEP.UseHands				= true
SWEP.AddFOV					= 0
SWEP.IgnoreScopeHide		= false

SWEP.WorldModel				= "models/weapons/w_rif_ak47.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "ar2"
SWEP.UseThisWorldModel		= nil

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

SWEP.DamageType				= 1

-- 1 = Normal
-- 2 = Ar2

SWEP.FatalHeadshot			= false

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

SWEP.SideRecoilBasedOnDual	= false

SWEP.ReloadTimeAdd			= 0

SWEP.BurstSpeedOverride 	= 1
SWEP.BurstConeMul			= 1
SWEP.BurstHeatMul			= 1
SWEP.BurstZoomMul			= 1
SWEP.BurstRecoilMul			= 1
SWEP.BurstOverride			= 3
SWEP.BurstCoolMul			= 1
SWEP.BurstSpeedAbs			= nil
SWEP.BurstAnimationOverride = nil
SWEP.BurstAnimationOnce		= false

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
SWEP.HasHolster 			= false

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

SWEP.ZoomInSound			= Sound("weapons/zoom.wav")
SWEP.ZoomOutSound			= Sound("weapons/zoom.wav")

SWEP.ZoomDelay				= 0

SWEP.CrosshairOverrideMat	= nil
SWEP.CrosshairOverrideSize	= nil

SWEP.EnableCustomTracer		= true
SWEP.CustomTracerColor		= Color(255,255,0,255)

SWEP.CustomShootEffectsTable = nil

SWEP.BulletEnt				= nil -- Bullet Entity that is Spawned
SWEP.SourceOverride 		= Vector(0,0,0) -- Projectile Spawn Offset
SWEP.BulletAngOffset		= Angle(0,0,0) -- Rotate the Projectile by this amount

SWEP.ShootOffsetStrength	= Angle(0,0,0) -- Recoil for OP Snipers
SWEP.DisableReloadUntilEmpty = false
SWEP.IgnoreDrawDelay		= false -- Does this even work?
SWEP.EnableBlocking			= false -- Melee

SWEP.MagDelayMod			= 0.75
SWEP.MagMoveMod 			= Vector(0,0,0)
SWEP.MagAngMod				= Angle(0,0,0)

SWEP.AlwaysBurst			= false

SWEP.HasIdle				= false
SWEP.IdleOffset 			= 0

SWEP.DelayOverride			= false

SWEP.EnableDropping 		= true

SWEP.UsesBlocking			= false

SWEP.MeleeDelay				= 0.05
--SWEP.MeleeDecal				= "ManhackCut"
SWEP.MeleeDamageType		= DMG_SLASH
SWEP.MeleeRange				= 40

-- I know what this is
SWEP.DrawAmmo				= true
SWEP.DrawCrosshair			= false
SWEP.Weight					= 0

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

SWEP.EnableDefaultScope		= true

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
	self:NetworkVar("Float",11,"NextHolster")
	self:SetNextHolster(-1)
	self:NetworkVar("Float",12,"NextIdle")
	self:SetNextIdle(0)
	self:NetworkVar("Float",13,"NextMelee")
	self:SetNextMelee(0)
	self:NetworkVar("Float",14,"NextMeleeDamage")
	self:SetNextMeleeDamage(0)
	self:NetworkVar("Float",15,"BulletsPerSecond")
	self:SetBulletsPerSecond(0)
	self:NetworkVar("Float",16,"ClashTime")
	self:SetClashTime(0)
	self:NetworkVar("Float",17,"ScopeOffsetX")
	self:SetScopeOffsetX(0)
	self:NetworkVar("Float",18,"ScopeOffsetY")
	self:SetScopeOffsetY(0)
	--[[
	self:NetworkVar("Float",19,"ZoomOverlayDelay")
	self:SetZoomOverlayDelay(0)
	--]]
	
	self:NetworkVar("Float",31,"SpecialFloat") -- For Special Stuff
	self:SetSpecialFloat(0)

	self:NetworkVar("Int",0,"BulletQueue")
	self:SetBulletQueue(0)


	self:NetworkVar("Bool",0,"IsReloading")
	self:SetIsReloading( false )
	self:NetworkVar( "Bool",1,"IsBurst" )
	if self.AlwaysBurst then 
		self:SetIsBurst( true )
	else
		self:SetIsBurst( false )
	end
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
	self:NetworkVar("Bool",10,"QueueHolster")
	self:SetQueueHolster( false )
	self:NetworkVar("Bool",11,"ForceHolster")
	self:SetForceHolster( false )
	self:NetworkVar("Bool",12,"SharedZoom")
	self:SetSharedZoom( false )
	self:NetworkVar("Bool",13,"ShouldMelee")
	self:SetShouldMelee( false )
	self:NetworkVar("Bool",14,"IsAttacking")
	self:SetIsAttacking( false )
	
	self:NetworkVar("Entity",1,"NextHolsterWeapon")
	self:SetNextHolsterWeapon( nil )
	self:NetworkVar("Entity",2,"NextMeleeEnt")
	self:SetNextMeleeEnt( nil )
	
end

function SWEP:Initialize()

	if game.SinglePlayer() then
		IsSingleplayer = true
	end
	
	self:SetHoldType( self.HoldType )
	
	--[[

	if self.Primary.Sound and self.Primary.Sound ~= NULL then
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
	
	if self.ViewModel then
		util.PrecacheModel(self.ViewModel)
	end
	
	--]]
	
	
	
	if (CLIENT or IsSingleplayer) then
		if GetConVar("cl_css_customslots"):GetFloat() == 1 then
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
	
	
	self:SpecialInitialize()
	
	if SERVER and self.Owner:IsNPC() then
		self:NPCInit()
	end
	
	if self.Owner:IsPlayer() then
		self:SCK_Initialize()
	end
	
end

function SWEP:NPCInit()
	self.Owner:SetCurrentWeaponProficiency( WEAPON_PROFICIENCY_PERFECT )
end

function SWEP:GetCapabilities()
	return bit.bor( CAP_WEAPON_RANGE_ATTACK1, CAP_INNATE_RANGE_ATTACK1 )
end

function SWEP:SpecialInitialize()


end

function SWEP:EquipAmmo(ply)
	if GetConVar("sv_css_ammo_givespare"):GetFloat() == 1 or self.WeaponType == "Equipment" then
		ply:GiveAmmo(self.Primary.SpareClip,self.Primary.Ammo,false)
	elseif self.WeaponType == "Throwable" then
		ply:GiveAmmo(1,self.Primary.Ammo,false)
	end
end

function SWEP:OwnerChanged()
	if SERVER then
		timer.Simple(0.1, function()
			if self.AlreadyGiven == false then
			
				if GetConVar("sv_css_ammo_loaded"):GetFloat() == 1 then
					self:SetClip1(self.Primary.ClipSize)
				end

				if GetConVar("sv_css_ammo_givespare"):GetFloat() == 1 then
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

	self:SetZoomed(false)

	self:CheckInventory()

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
	
	self:SpecialDeploy()
	
	return true
	
end

function SWEP:SpecialDeploy()


end



function SWEP:CheckInventory()
	if SERVER then
		if GetConVar("sv_css_limit_equipped"):GetFloat() == 1 then
			for k,v in pairs (self.Owner:GetWeapons()) do
				if v.BurgerBase ~= nil then
					if v ~= self then
						if self.WeaponType == v.WeaponType and not (v.WeaponType == "Free" or v.WeaponType == "Throwable") then
							print("DROP WEAPON PLEASE")
							CSS_DropWeapon(self.Owner,v)
						end
					end
				end
			end
		elseif GetConVar("sv_css_limit_equipped"):GetFloat() == 2 then
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
end


function SWEP:Holster(nextweapon)

	if not self:GetCanHolster() then return false end
	
	self:CancelReload()
	self:SetZoomed(false)

	if self.HasHolster then
	
		if self:GetForceHolster() == true then
			self:SCK_Holster()
			self:SetForceHolster(false)
			return true
		elseif self:GetQueueHolster() == true then
			self:SCK_Holster()
			local NextWeapon = self:GetNextHolsterWeapon()
			self:SetNextHolsterWeapon( nil )
			self:SetQueueHolster( false )
			self:SetNextHolster( -1 )
			self:SetForceHolster(true)
			if SERVER then
				if self.Owner and self.Owner ~= NULL and NextWeapon and NextWeapon ~= NULL then
					self.Owner:SelectWeapon( NextWeapon:GetClass() )
				end
			end
			return false
		else
		
		
			self:SetQueueHolster( true )
			self:SendWeaponAnim( ACT_VM_HOLSTER )
			
			if self.Owner and self.Owner ~= NULL and self.Owner:GetViewModel() and self.Owner:GetViewModel() ~= NULL then
				local ViewDur = self.Owner:GetViewModel():SequenceDuration()
				
				self:SetNextHolster( CurTime() + ViewDur )
				self:SetNextPrimaryFire(CurTime() + ViewDur )
			end
			
			if SERVER then
				self:SetNextHolsterWeapon(nextweapon)
			end
			
			
			return false
		end
	end
	
	self:SCK_Holster()
	return true
	
end

function SWEP:HolsterThink()
	if SERVER then
		if self.HasHolster and self:GetQueueHolster() then
			if self:GetNextHolster() <= CurTime() then
				self:Holster(  self:GetNextHolsterWeapon() )
			end
		end
	end
end

function SWEP:SetZoomed(shouldzoom)

	self:SetSharedZoom(shouldzoom)

	if shouldzoom then
		if IsSingleplayer then
			if self.Owner:IsPlayer() then
			
				local ZoomAmount = self.ZoomAmount
				
				if (self.HasBurstFire or AlwaysBurst) and self:GetIsBurst() then
					ZoomAmount = ZoomAmount * self.BurstZoomMul
				end
			
				self.Owner:SetFOV( self.DesiredFOV / (1 + ZoomAmount), 0.1 )
			end
		else
			self.IsZoomed = true
		end
	else
		if IsSingleplayer then
			if self.Owner:IsPlayer() then
				self.Owner:SetFOV( self.DesiredFOV, 0.1 )
			end
		else
			self.IsZoomed = false
		end
	end
end

function SWEP:GetZoomed()
	if IsSingleplayer then
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
	
	self:ShootGun() -- don't predict, has firebullets

end

function SWEP:ShootGun()

	self:PreShootBullet() -- don't predict

	if (IsFirstTimePredicted() or IsSingleplayer) then
	
		if CLIENT then
			self:AfterZoom() -- Predict, Client Only
		end
		
		self:AddRecoil() -- Predict
		self:WeaponSound() -- Predict

	end
	
end

function SWEP:HandleShootAnimations()
	if self.BurstAnimationOverride and self:GetIsBurst() then
		self:WeaponAnimation(self:Clip1(),self.BurstAnimationOverride)
	elseif self.HasDual then
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
		self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration() + self.ReloadTimeAdd)
		return 
	end
	
end

function SWEP:HandleBurstDelay()
	if self.HasBurstFire or self.AlwaysBurst then
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
	
	if self.HasBuildUp then
		FinalDelay = FinalDelay + ( (self.Primary.Delay*5) * (100 - self:GetBuildUp()) * 0.01 )
	end
	
	if CLIENT then
		if self.HasBoltAction then
			self.BoltDelay = CurTime() + self.Primary.Delay
		end
	end

	if self.HasBurstFire or self.AlwaysBurst then
		if self:GetIsBurst() then
			if self.BurstSpeedAbs then
				FinalDelay = self.BurstSpeedAbs
			else
				FinalDelay = FinalDelay * (self.BurstOverride*2)
			end
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

function SWEP:GetScopeSway(Cone) 
	local x = math.sin(CurTime()*0.5)*Cone*0.5*0.5
	local y = math.cos(CurTime())*Cone*0.5
	return x,y
end

function SWEP:PreShootBullet() -- Should be predicted

	local Damage = self.Primary.Damage
	local Shots = self.Primary.NumShots
	
	local Cone = 0
	
	if IsFirstTimePredicted() then
		Cone = self:HandleCone(self.Primary.Cone,false)
	end

	self:SetBulletsPerSecond( self:GetBulletsPerSecond() + 1 )
	
	local Source = self.Owner:GetShootPos()
	local ShootDir = self.Owner:GetAimVector()
	
	if self.Owner:IsPlayer() then
		ShootDir = self.Owner:GetEyeTrace().Normal
	end
	
	local NormalAngle = ShootDir:Angle()
	local WithPunchAngles = (NormalAngle + self.Owner:GetPunchAngle())
	WithPunchAngles:Normalize()

	if Shots == 1 then
		local Multi01 = math.random(-100,100) / 100
		local Multi02 = math.random(-100,100) / 100
		local RandAngle = Angle(Cone*Multi01*45,Cone*Multi02*45,0)
		local NewVector, NewAngle = LocalToWorld(Vector(0,0,0),WithPunchAngles,Vector(0,0,0),RandAngle)
		self:ShootBullet(Damage,Shots,0,Source,	NewAngle:Forward(),self.Owner)
	else
		local ConeMinusPrimary = Cone - self.Primary.Cone
		local Multi01 = math.random(-100,100) / 100
		local Multi02 = math.random(-100,100) / 100
		local RandAngle = Angle(ConeMinusPrimary*Multi01*45,ConeMinusPrimary*Multi02*45,0)
		local NewVector, NewAngle = LocalToWorld(Vector(0,0,0),WithPunchAngles,Vector(0,0,0),RandAngle)
		
		NewAngle:Normalize()
		
		for i=1, Shots do 
			math.randomseed(CurTime() + i)
			local NewMulti01 = math.random(-100,100) / 100
			math.randomseed(CurTime() + i + Shots)
			local NewMulti02 = math.random(-100,100) / 100
			local NewRandAngle = Angle(self.Primary.Cone*NewMulti01*45,self.Primary.Cone*NewMulti02*45,0) + NewAngle
			NewRandAngle:Normalize()
			self:ShootBullet(Damage,Shots,0,Source,NewRandAngle:Forward(),self.Owner)
		end
		
		
	end
	
	if IsFirstTimePredicted() then
		if self.HasBuildUp or self.UsesBuildUp then
			self:SetBuildUp( math.Clamp(self:GetBuildUp() + self.BuildUpAmount - (self:GetBuildUp()/10) ,0,100 ) )
		end
		
		self:AddHeat(Damage,Shots)
		
		if self.HasIdle then
			self:SetNextIdle(CurTime() + self.IdleOffset)
		end
		
	end

	self:PostPrimaryFire()
	
end

function SWEP:PostPrimaryFire()

end

function SWEP:WeaponAnimation(clip,animation)

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

	if self.HasBurstFire or self.AlwaysBurst then
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

function SWEP:SpecialCone(Cone,IsCrosshair)
	return Cone
end

function SWEP:HandleCone(Cone,IsCrosshair)

	--IsCrosshair = false

	Cone = self:SpecialCone(Cone,IsCrosshair)

	if (self.HasBurstFire or self.AlwaysBurst) then
		if self:GetIsBurst() then
			Cone = Cone * self.BurstConeMul
		end
	elseif self.HasSilencer then
		if self:GetIsSilenced() then
			Cone = Cone*0.9
		end
	end
		
	if self.Owner:IsPlayer() and self.Owner:Crouching() then
		Cone = Cone * 0.75
	end
	
	Cone = Cone * GetConVar("sv_css_cone_scale"):GetFloat()
	
	if (CLIENT) and IsCrosshair and not IsSingleplayer  then
		Cone = Cone + (self.ClientCoolDown*self.HeatMul*0.01)
	else
		Cone = Cone + (self:GetCoolDown()*self.HeatMul*0.01)
	end
	
	local VelCone = self:GetMovementIntensity()
	
	Cone = Cone + VelCone

	return Cone

end

function SWEP:GetMovementVelocity()
	local Velocity = self.Owner:GetVelocity():Length() 
	if (!self.Owner:IsOnGround() and !(self.Owner:WaterLevel() > 0)) then
		Velocity = 400
	end
	return Velocity
end

function SWEP:GetMovementIntensity()
	return math.Clamp( ( (self:GetMovementVelocity() * self.VelConeMul * GetConVar("sv_css_velcone_scale"):GetFloat()) ^ 1.75 ) * 0.000001, 0, 0.1)
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
	
	if (IsFirstTimePredicted() or IsSingleplayer) then
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
			elseif (CLIENT or IsSingleplayer) then
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

	if not (IsFirstTimePredicted() or IsSingleplayer) then return end
	
	local Message = "Semi-Automatic"

	if self.Primary.Automatic then
		Message = "Automatic"
	end

	if self:GetIsBurst() then
		self:SetIsBurst(false)
		if (CLIENT or IsSingleplayer) then
			self:EmitGunSound("weapons/smg1/switch_single.wav",0.01)
		end
		self.Owner:PrintMessage( HUD_PRINTCENTER, "Switched to "..Message )
	else
		self:SetIsBurst(true)
		if (CLIENT or IsSingleplayer) then
			self:EmitGunSound("weapons/smg1/switch_burst.wav",0.01)
		end
		self.Owner:PrintMessage( HUD_PRINTCENTER, "Switched to Burst Fire Mode" )
	end

end

function SWEP:Silencer()

	if self:IsBusy() then return end
		
	if self:GetIsSilenced() then
		self:SendWeaponAnim(ACT_VM_DETACH_SILENCER)
		if not (IsFirstTimePredicted() or IsSingleplayer) then return end
		self.WorldModel = self.WorldModel1
		self:SetIsSilenced(false)
	else
		self:SendWeaponAnim(ACT_VM_ATTACH_SILENCER)
		if not (IsFirstTimePredicted() or IsSingleplayer) then return end
		self.WorldModel = self.WorldModel2
		self:SetIsSilenced(true)
	end
	
	self:SetAttachDelay(CurTime() + self.Owner:GetViewModel():SequenceDuration())
	
end

function SWEP:HandleZoom(delay)

	if not (IsFirstTimePredicted() or IsSingleplayer) then return end
	if not self:CanBoltZoom() then return end
	--if self:IsBusy() then return end

	if self:GetZoomed() then
		self:SetZoomed(false)		
		if self.HasScope then
			self.Owner:EmitSound(self.ZoomOutSound,0.01)
			if self.ZoomDelay > 0 then
				self:SetZoomOverlayDelay(0)
			end
		end
	else
		if self.HasScope then
			self.Owner:EmitSound(self.ZoomInSound,0.01)
			if self.ZoomDelay > 0 then
				self:SetZoomOverlayDelay(CurTime() + self.ZoomDelay)
			end
		end
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

	if not IsSingleplayer then
	
		local ZoomAmount = self.ZoomAmount
	
		if (self.HasBurstFire or self.AlwaysBurst) and self:GetIsBurst() then
			ZoomAmount = ZoomAmount*self.BurstZoomMul
		end

		local ZoomMag = 1 + ( self.ZoomMod * ZoomAmount )
		
		fov = fov / ZoomMag
		
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
	
		if (IsFirstTimePredicted() or IsSingleplayer) then
			self.Owner:EmitSound("weapons/clipempty_pistol.wav")
		end

		self:SetNextPrimaryFire(CurTime() + 0.25)
		return false
	end

	return true
	
end

function SWEP:GetRecoilMath()
	return self.Primary.Damage*self.Primary.NumShots*self.RecoilMul*self.Primary.Delay*1.875*GetConVar("sv_css_recoil_scale"):GetFloat()
end

function SWEP:GetRecoilFinal()

	local UpPunch = -self:GetRecoilMath()
	local SidePunch = 0
	
	if (self.HasBurstFire or self.AlwaysBurst) and self:GetIsBurst() then
		UpPunch = UpPunch*self.BurstRecoilMul
	end
	
	local AvgBulletsShot = 0
	
	if self.Primary.Automatic == true then
		if SERVER or IsSingleplayer then
			AvgBulletsShot = self:GetCoolDown() / self:GetHeatMath(self.Primary.Damage,self.Primary.NumShots)
		else
			AvgBulletsShot = self.ClientCoolDown / self:GetHeatMath(self.Primary.Damage,self.Primary.NumShots)
		end
	end
	
	UpPunch = UpPunch * ( 1 + AvgBulletsShot/ (1/self.Primary.Delay) )
	
	local PredictedUpPunch = -UpPunch
	
	if CLIENT then
		PredictedUpPunch = -UpPunch + -self.PunchAngleUp.p
	end
	
	local DelayMul = 1
	
	if self.Primary.Delay >= 0.5 and not self.DelayOverride then
		DelayMul = 0
	end
	
	if self.HasSideRecoil then
	
		if self.SideRecoilBasedOnDual then
			if self:GetIsLeftFire() then
				SidePunch = UpPunch*1*self.SideRecoilMul
			else
				SidePunch = UpPunch*-1*self.SideRecoilMul
			end
		elseif DelayMul == 1 then
			if AvgBulletsShot > 2*DelayMul then
				SidePunch = UpPunch*math.random(-1,1)*self.SideRecoilMul
			end
		else
			SidePunch = UpPunch*self.SideRecoilMul
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

--[[
if SERVER then
	SWEP.BotPunch = Angle(0,0,0)
end
--]]

function SWEP:AddRecoil()
	if CLIENT or IsSingleplayer then
		local UpPunch, SidePunch = self:GetRecoilFinal()
		self.PunchAngleUp = self.PunchAngleUp + Angle(UpPunch,SidePunch,0) + Angle(self.ShootOffsetStrength.p*math.Rand(-0.5,0.5),self.ShootOffsetStrength.y*math.Rand(-0.5,0.5),0)
		self.PunchAngleDown = self.PunchAngleDown + Angle(UpPunch,SidePunch,0) + Angle(self.ShootOffsetStrength.p*math.Rand(-0.5,0.5),self.ShootOffsetStrength.y*math.Rand(-0.5,0.5),0)
	end

end

function SWEP:GetHeatMath(Damage,Shots)

	local DamageMod = Damage*Shots*0.01
	local ConeMod = (math.max(0.001,self.Primary.Cone)^-0.1)
	local WeightMod = (self.CSSMoveSpeed / 250 )
	local BurstMod = 1

	if (self.HasBurstFire or self.AlwaysBurst) and self:GetIsBurst() then
		BurstMod = self.BurstHeatMul
	end
	
	local CoolDown = DamageMod*ConeMod*WeightMod*GetConVar("sv_css_heat_scale"):GetFloat()*BurstMod
	
	return CoolDown
	
end

function SWEP:AddHeat(Damage,Shots)

	--[[
	if self.Owner and self.Owner:IsPlayer() and self.Owner:IsBot() then
		Damage = Damage*2
	end
	--]]
	
	local CoolDown = self:GetHeatMath(Damage,Shots)
	local CoolTime = (self.Primary.Delay + 0.1)*GetConVar("sv_css_cooltime_scale"):GetFloat()*self.CoolMul
	
	if self.HasBurstFire and self:GetIsBurst() then
		CoolTime = CoolTime * self.BurstCoolMul
	end
	
	self:SetCoolDown( math.Clamp(self:GetCoolDown() + CoolDown,0,10) )
	self:SetCoolTime( CurTime() + CoolTime )
	
	if CLIENT and self.Owner == LocalPlayer() then
		self.ClientCoolDown = math.Clamp(self.ClientCoolDown + CoolDown,0,10)
		self.ClientCoolTime = CurTime() + CoolTime
	end
	
end

function SWEP:ShootPhysicalObject(Source,Cone)

	local EyeTrace = self.Owner:GetEyeTrace()
	local TheEyePos = self.Owner:EyePos()
	
	local HitPos = EyeTrace.HitPos
	
	Source = Source + self.Owner:GetForward()*self.SourceOverride.y + self.Owner:GetRight()*self.SourceOverride.x + self.Owner:GetUp()*self.SourceOverride.z
	
	local Dir = (HitPos - TheEyePos)
	Dir:Normalize()
	local FinalAngles = Dir:Angle() + self.BulletAngOffset + Angle(math.Rand(-Cone,Cone),math.Rand(-Cone,Cone),0)*45
	FinalAngles:Normalize()

	local Bullet = ents.Create(self.BulletEnt)	
	if Bullet:IsValid() then
		Bullet:SetPos(Source)
		Bullet:SetAngles( FinalAngles )
		Bullet:SetOwner(self.Owner)
		Bullet:Spawn()
		Bullet:Activate()
		--print("HELLO?")
	else
		SafeRemoveEntity(Bullet)
		--error("WARNING: INVALID ENTITY: " .. Bullet)
	end

	if IsFirstTimePredicted() then
		self:TracerCreation(Source + Dir*100,Source,Dir,self.Owner)
	end

end


function SWEP:ShootBullet(Damage, Shots, Cone, Source, Direction,LastEntity)

	if self and self.BulletEnt then
		if SERVER then
			self:ShootPhysicalObject(Source,Cone)
		end
	else
		local bullet = {}
		bullet.Damage	= Damage * GetConVar("sv_css_damage_scale"):GetFloat()
		bullet.Num		= 1
		bullet.Spread	= Vector(Cone, Cone, 0)
		bullet.Src		= Source
		bullet.Dir		= Direction
		bullet.AmmoType = self.Primary.Ammo
		bullet.HullSize = 0
		bullet.Tracer 	= 0
		bullet.Force	= nil
		bullet.Callback = function(attacker,tr,dmginfo)
			self:BulletCallback(Damage,Direction,LastEntity,attacker,tr,dmginfo)
		end
		self.Owner:FireBullets(bullet)
	end
end

function SWEP:BulletCallback(Damage,Direction,PreviousHitEntity,attacker,tr,dmginfo)

	local CurrentHitEntity = tr.Entity
		
	if IsFirstTimePredicted() then
		self:TracerCreation(tr.HitPos,tr.StartPos,Direction,PreviousHitEntity)
	end

	if attacker:IsPlayer() then
	
		local Weapon = attacker:GetActiveWeapon()

		if Weapon and Weapon.DamageFalloff then
			if Weapon.DamageFalloff > 0 then
			
				local MatterScale = GetConVar("sv_css_damagefalloff_scale"):GetFloat()
			
				local Falloff = Weapon.DamageFalloff
				local Distance = tr.StartPos:Distance(tr.HitPos)
				local DamageScale = math.Clamp(math.min( (2) - (Distance/Falloff),1),0,1)

				dmginfo:ScaleDamage(math.Clamp(DamageScale,MatterScale,1))
				
			end
		end

		if GetConVar("sv_css_enable_penetration"):GetFloat() == 1 then
			if not CurrentHitEntity:IsPlayer() then
				self:WorldBulletSolution(tr.HitPos,Direction,Damage,CurrentHitEntity)
			end
		end
		
		if SERVER then
			if tr.Entity:GetClass() == "prop_vehicle_prisoner_pod" or CurrentHitEntity:IsVehicle() then
				if CurrentHitEntity:GetDriver() ~= NULL then
					CurrentHitEntity:GetDriver():TakeDamageInfo(dmginfo)
				end
			end
		end
		
	end

end

function SWEP:WorldBulletSolution(Pos,Direction,Damage,PreviousHitEntity)

	local Amount = 3
	
	local data = {}
	
	data.start = Pos + Direction
	data.endpos = Pos + Direction*Amount
	
	local trace = util.TraceLine(data)
	local CurrentHitEntity = trace.Entity
	
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

	local DamageMath = math.Round(Damage - (GetConVar("sv_css_penetration_scale"):GetFloat()*MatMul*math.max(0.1,self.PenetrationLossMul)*Amount),2)
	
	if DamageMath > 0 then
		if trace.StartSolid or (PreviousHitEntity == CurrentHitEntity) then
			self:WorldBulletSolution(data.endpos,Direction,DamageMath,CurrentHitEntity)
		else
			EnableCustomTracers = false
			EnableOriginalTracers = false
			self:ShootBullet(DamageMath, 1, 0, data.endpos,Direction,CurrentHitEntity)
			
			local BackTraceData = {}
			BackTraceData.start = Pos + Direction
			BackTraceData.endpos = Pos - Direction*Amount
			
			local BackTrace = util.TraceLine(BackTraceData)
			
			if IsFirstTimePredicted() then
				self:BulletEffect(BackTrace.HitPos,BackTrace.StartPos,BackTrace.Entity,BackTrace.SurfaceProps)
			end
			
		end
	end


end

function SWEP:TracerCreation(origin,start,direction,HitEntity)

	if self.EnableCustomTracer then
		local TracerData = self:GenerateEffectData(origin,start,HitEntity,true)
		util.Effect( "bur_css_bullet_01", TracerData )
	end

	if self.CustomShootEffectsTable then
		local TracerData = self:GenerateEffectData(origin,start,HitEntity,false)
		for num,effectname in pairs(self.CustomShootEffectsTable) do
			util.Effect( effectname, TracerData )
		end
	end

end

function SWEP:GenerateEffectData(origin,start,HitEntity,IsCSSTracer)

	local Data = EffectData()
	Data:SetOrigin( origin )
	Data:SetStart( start )
	if HitEntity == self.Owner then
	
		if self.HasDual and self:GetIsLeftFire() then
			Data:SetAttachment( 2 )
		else
			Data:SetAttachment( 1 )
		end
	

		Data:SetEntity( self.Weapon )
	else
		Data:SetAttachment( 0 )
		Data:SetEntity( NULL )
	end	
	
	if IsCSSTracer then
		Data:SetMagnitude(self.Primary.Damage)
		Data:SetRadius(self.DamageFalloff)
		Data:SetDamageType(self.DamageType)
	end

	return Data

end



if SERVER then
	util.AddNetworkString("CSS_GunSounds")
end

function SWEP:EmitGunSound(GunSound,Level)
	
	if GunSound and GunSound ~= NULL then
		self.Weapon:EmitSound(GunSound)	
	end

	--[[
	if SERVER then
	
		local Position = self.Owner:GetPos()
	
		if IsFirstTimePredicted() then
			net.Start("CSS_GunSounds")
				net.WriteFloat(self.Weapon:EntIndex())
			net.Broadcast()
		end
		
	end
	--]]
	
end

if CLIENT then
	net.Receive("CSS_GunSounds", function(len)
	
		local ply = LocalPlayer()
	
		local ID = net.ReadFloat()
		
		local Gun = Entity(ID)
		
		if Gun.Owner == ply then return end
		
		local GunSound = Gun.Primary.Sound
		
		local RealSoundTable = sound.GetProperties(GunSound)
		local RealDistance = ply:GetPos():Distance(Gun:GetPos())
		
		local Range = (Gun.Primary.Damage * Gun.Primary.NumShots)*500

		local VolumeMod = math.Clamp( 1 - (RealDistance/Range),0,1)

		local FakePos = ply:GetPos() + (- Gun:GetPos() + ply:GetPos() ):Angle():Forward()*100
	
		
		EmitSound(RealSoundTable.sound,FakePos,ID,CHAN_WEAPON,VolumeMod,140,0,80)

	end)



end

function SWEP:BulletEffect(HitPos,StartPos,HitEntity,SurfaceProp)
	
	if HitEntity:IsPlayer() then return end
	
	local effect = EffectData()
	effect:SetOrigin(HitPos)
	effect:SetStart(StartPos)
	effect:SetSurfaceProp(SurfaceProp)
	effect:SetDamageType(DMG_BULLET)
	
	if (CLIENT or IsSingleplayer) then
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
	
	if (CLIENT or IsSingleplayer) then
		if self.ReloadSound then
			if not self.HasPumpAction then
				self:EmitGunSound(self.ReloadSound)
			end
		end
	end

	if self.HasPumpAction then
		self:SendWeaponAnim(ACT_SHOTGUN_RELOAD_START)
		self:SetNextShell(CurTime() + self.Owner:GetViewModel():SequenceDuration() + self.ReloadTimeAdd)
		self:SetIsShotgunReload(true)
	else
		self:SetReloadFinish(CurTime() + self.Owner:GetViewModel():SequenceDuration() * (1/self.Owner:GetViewModel():GetPlaybackRate()) + self.ReloadTimeAdd )
		self:SetIsNormalReload(true)
	end
	
	self.Owner:SetAnimation(PLAYER_RELOAD)
	
	if self.HasScope then
		self:SetZoomed(false)
		self.NextZoomTime = CurTime() + self.Owner:GetViewModel():SequenceDuration() * (1/self.Owner:GetViewModel():GetPlaybackRate() + self.ReloadTimeAdd)
	end
	
	if SERVER then
		if GetConVar("sv_css_enable_mags"):GetFloat() == 1 then
			timer.Simple(self.MagDelayMod, function()
				if self.GetMagModel and self.HasMagIn then
				
					self.HasMagIn = false

					local EyeAngle = self.Owner:EyeAngles()
					
					local mag = ents.Create("ent_cs_debris")
					mag:SetPos(self.Owner:GetShootPos() + self.Owner:GetUp()*-12 + self.Owner:GetRight()*3)
					mag:SetModel(self.GetMagModel)
					mag:SetAngles(EyeAngle + self.MagAngMod)			
					mag:Spawn()
					mag:Activate()
					if not self.HasDual then	
						local Phys = mag:GetPhysicsObject()
						if Phys ~= nil and Phys ~= NULL  then
							Phys:SetVelocity(self.MagMoveMod.x*EyeAngle:Right() + self.MagMoveMod.y*EyeAngle:Forward() + self.MagMoveMod.z*EyeAngle:Up())
						end
					end
					SafeRemoveEntityDelayed(mag,30)
					
					if self.HasDual then
						local mag = ents.Create("ent_cs_debris")
						mag:SetPos(self.Owner:GetShootPos() + self.Owner:GetUp()*-12 + self.Owner:GetRight()*-3)
						mag:SetModel(self.GetMagModel)
						mag:SetAngles(EyeAngle + Angle(1,1,1) + self.MagAngMod )
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

function SWEP:GetViewModelPosition( pos, ang )

	--ang = LocalPlayer():EyeAngles()
	
	if ( !self.IronSightsPos ) then return pos, ang end
	
	local bIron = self:GetZoomed() or (self.EnableBlocking and self.Owner:KeyDown(IN_ATTACK2) ) or self:GetSharedZoom() or self.WasZoomed
	
	if ( bIron != self.bLastIron ) then
	
		self.bLastIron = bIron 
		self.fIronTime = CurTime()
		
		self.SwayScale 	= math.Clamp(self.VelConeMul * 0.5,0.5,2)
		self.BobScale 	= math.Clamp(self.VelConeMul * 0.5,0.5,2)
	
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
	if IsSingleplayer then
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

	self:HandleCoolDown() -- don't predict
	self:HandleBuildUp()
	self:HandleShotgunReloadThinkAnimations() -- don't predict
	self:EquipThink() -- don't predict, ever
	self:HandleBurstFireShoot() -- don't predict, ever
	self:HandleReloadThink() -- don't predict, ever
	self:SpareThink()
	self:SwingThink()
	self:HolsterThink()
	self:IdleThink()
	self:HandleBulletsPerSecond()
	self:HandleZoomDelay()
	
	if (CLIENT or IsSingleplayer) then
		
		local FOVMOD = ( (90 + GetConVar("cl_css_viewmodel_fov"):GetFloat())/2 + self.AddFOV) * 0.75
		
		if self.HasScope and self:GetZoomed() and not self.IgnoreScopeHide then
			if self.ZoomDelay <= 0 or self:GetZoomOverlayDelay() == -1 then
				FOVMOD = 120
			end
		end

		self.ViewModelFOV = FOVMOD
		
		self:HandleBoltZoomMod()
		self:HandleZoomMod()

		if IsFirstTimePredicted() then 
			self:RemoveRecoil()
		end
	
	end
	
end

if CLIENT then
	SWEP.ZoomOverlayDelay = 0
end

function SWEP:GetZoomOverlayDelay()
	return self.ZoomOverlayDelay
end

function SWEP:SetZoomOverlayDelay(num)
	self.ZoomOverlayDelay = num
end

function SWEP:HandleZoomDelay()
	if CLIENT then
		if self:GetZoomOverlayDelay() > 0 and self:GetZoomOverlayDelay() <= CurTime()  then
			self:SetZoomOverlayDelay(-1)
		end
	end
end

function SWEP:HandleBulletsPerSecond()
	if self:GetCoolTime() <= CurTime() then
		self:SetBulletsPerSecond( math.Clamp(self:GetBulletsPerSecond() - FrameTime(),0,100) )
	end
end

function SWEP:IdleThink()
	if self.HasIdle then
		if self:GetNextIdle() <= CurTime() and self:GetNextPrimaryFire() <= CurTime() then
			if not self:IsBusy() then
				self:SendWeaponAnim(ACT_VM_IDLE)
				self:SetNextIdle(CurTime() + self.Owner:GetViewModel():SequenceDuration())
			end
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
	if self.HasBurstFire or self.AlwaysBurst then
		if self:GetNextBulletDelay() <= CurTime() and self:GetBulletQueue() > 0 then
		
			self:SetNextBulletDelay(CurTime() + self:GetBurstMath())
			self:SetBulletQueue(self:GetBulletQueue() - 1)

			if (self:Clip1() > 0) or self:Clip1() == -1 and self:Ammo1() >= 1 then
			
				self:TakePrimaryAmmo(1)
				
				
				if not self.BurstAnimationOnce then
					if self:GetBulletQueue() ~= self.BurstOverride - 1 then
						self:HandleShootAnimations()
					end
				end

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
				self:SetNextShell(CurTime()+self.Owner:GetViewModel():SequenceDuration() + self.ReloadTimeAdd)

				if (CLIENT or IsSingleplayer) then
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
	self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration() + self.ReloadTimeAdd)
	self:SetIsShotgunReload(false)
	self:SetIsReloading(false)
end

function SWEP:CancelReload()
	--self:SendWeaponAnim( ACT_VM_IDLE )
	self:SetNextPrimaryFire(CurTime() + 0.1)
	self:SetIsReloading(false)
end

function SWEP:HL2Pump()
	if self.HasPumpAction and self.HasHL2Pump then
		if self:GetNeedsHL2Pump() and self:GetNextHL2Pump() <= CurTime() then
			self:SendWeaponAnim( ACT_SHOTGUN_PUMP )
			self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration() + self.ReloadTimeAdd)
			if CLIENT and IsFirstTimePredicted() then
				if self.PumpSound then
					self.Owner:EmitSound(self.PumpSound)
				end
			end
			self:SetNeedsHL2Pump(false)
		end
	end
end

function SWEP:HandleShotgunReloadThinkAnimations()

	self:HL2Pump()

	if self:GetIsShotgunReload() then
		if self:GetNextShell() <= CurTime() then
			if self.Owner:GetAmmoCount( self.Primary.Ammo ) > 0 and self:Clip1() < self.Primary.ClipSize then 
				self:SendWeaponAnim(ACT_VM_RELOAD)

				if (CLIENT or IsSingleplayer) then
					if self.ReloadSound then
						self:EmitGunSound(self.ReloadSound)
					end
				end
				
			else
				self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
				self:SetNextPrimaryFire( CurTime() + self.Owner:GetViewModel():SequenceDuration() + self.ReloadTimeAdd )
			end
		end
	end
	
end

function SWEP:HandleCoolDown()

	local CoolMul = GetConVar("sv_css_cooldown_scale"):GetFloat()*0.1*self.CoolSpeedMul
	
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
	if not IsSingleplayer then
		if self:GetZoomed() then
			if self.ZoomDelay <= 0 or self:GetZoomOverlayDelay() == -1 then
				if self.HasIronSights then
					self.ZoomMod = math.min(self.ZoomMod + 0.015*6,1)
				else
					self.ZoomMod = 1
				end
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

	--[[
	if SERVER and self.Owner:IsBot() then
		local Math = self.BotPunch - self.BotPunch*FrameTime()*10
		self.BotPunch = Math
		return
	end
	--]]

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
	
	local length = GetConVar("cl_css_crosshair_length"):GetFloat()
	local width = 1
	
	local fovbonus = self.DesiredFOV / self.Owner:GetFOV()

	local r = GetConVar("cl_css_crosshair_color_r"):GetFloat()
	local g = GetConVar("cl_css_crosshair_color_g"):GetFloat()
	local b = GetConVar("cl_css_crosshair_color_b"):GetFloat()
	local a = GetConVar("cl_css_crosshair_color_a"):GetFloat()
	
	local VelCone = self.Owner:GetVelocity():Length()*0.0001
	
	if GetConVar("cl_css_crosshair_dynamic"):GetFloat() == 0 then
		Cone = math.Clamp(self.Primary.Cone*900,0,x/2)
	else
		Cone = math.Clamp(self:HandleCone(self.Primary.Cone,true) * 900,0,x/2)*fovbonus
	end
	
	local ConeToSend = Cone
	
	if not IsSingleplayer then
		if GetConVar("cl_css_crosshair_smoothing"):GetFloat() == 1 then
		
			if not self.StoredCrosshair then
				self.StoredCrosshair = Cone
			end
			
			local SmoothingMul = GetConVar("cl_css_crosshair_smoothing_mul"):GetFloat() * 0.015 * fovbonus
			
			if Cone > self.StoredCrosshair then
				self.StoredCrosshair = math.min(Cone,self.StoredCrosshair + 500 * SmoothingMul )
			elseif Cone < self.StoredCrosshair then
				self.StoredCrosshair = math.max(Cone,self.StoredCrosshair - 300 * SmoothingMul )
			end
			
			ConeToSend = self.StoredCrosshair

		end
	end
	
	if self.HasScope then
		if self:GetZoomed() then
			if self.ZoomDelay <= 0 or self:GetZoomOverlayDelay() == -1 then
		
				if LocalPlayer():ShouldDrawLocalPlayer() then
					self:DrawCustomCrosshair(x,y,ConeToSend,length,width,r,g,b,a)
				else
					self:DrawCustomScope(x,y,ConeToSend,r,g,b,a)
				end
				
				if not self.IgnoreScopeHide then
					self.Owner:DrawViewModel(false)	
				end
			end
		else
			self.Owner:DrawViewModel(true)
		end
	end
		
	if self.HasCrosshair or (self.Owner:IsPlayer() and self.Owner:IsBot()) then
		self:DrawCustomCrosshair(x,y,ConeToSend,length,width,r,g,b,a)
	end

	self:DrawSpecial(ConeToSend)
	
end

function SWEP:DrawCustomCrosshair(x,y,Cone,length,width,r,g,b,a)

	local XRound = math.floor(x/2)
	local YRound = math.floor(y/2)
	local WRound = math.floor(width/2)
	local LRound = math.floor(length/2)
	
	if CSS_ContextMenuIsOpen then
		XRound, YRound = self:ClientCursorClamp()
	end

	if self.CrosshairOverrideMat then
		surface.SetDrawColor(Color(255,255,255,255))
		surface.SetMaterial(self.CrosshairOverrideMat)
		surface.DrawTexturedRectRotated(XRound,YRound,self.CrosshairOverrideSize,self.CrosshairOverrideSize,0)
	else
	
		local SizeOffset = GetConVar("cl_css_crosshair_offset"):GetFloat()
		local FinalCone = math.floor( math.Max(Cone,WRound*2,LRound/2) + SizeOffset )
		
		local CrosshairShadow = GetConVar("cl_css_crosshair_shadow"):GetFloat()
		local CrosshairStyle = GetConVar("cl_css_crosshair_style"):GetFloat()
		local CrosshairDot = GetConVar("cl_css_crosshair_dot"):GetFloat()
		
		if !self:GetZoomed() or self.EnableIronCross or ( GetConVar("cl_css_crosshair_neversights"):GetFloat() == 1 and not self.HasScope) then

			if  WRound == 0 then
			
				if CrosshairStyle >= 2 and CrosshairStyle <= 5 then
					
					local Offset = 0
			
					if CrosshairStyle == 4 then
						Offset = LRound*2
					elseif CrosshairStyle == 3 then
						Offset = LRound
					else
						Offset = 0
					end
				
					if CrosshairShadow >= 1 then
						surface.DrawCircle(x/2,y/2, FinalCone + Offset - 1, Color(0,0,0,a))
						surface.DrawCircle(x/2,y/2, FinalCone + Offset + 1, Color(0,0,0,a))
					end
					
				end

				if CrosshairStyle >= 1 and CrosshairStyle <= 4 then
				
					if CrosshairShadow >= 1 then
						-- Start of Shadow Stuff
						local x1 = XRound + FinalCone + LRound*2
						local x2 = XRound - FinalCone - LRound*2
						local y3 = YRound + FinalCone + LRound*2
						local y4 = YRound - FinalCone - LRound*2

						local Offset = 1
						local ShadowWidth = 3
						local ShadowLength = LRound*2 + Offset*3 - 1

						surface.SetDrawColor(Color(0,0,0,255))
						surface.DrawRect( x1 - LRound*2, YRound - Offset , ShadowLength, ShadowWidth )
						surface.DrawRect( x2 - 1, YRound - Offset , ShadowLength, ShadowWidth )
						surface.DrawRect( XRound - Offset, y3 - LRound*2 , ShadowWidth, ShadowLength )
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
					
					if CrosshairShadow >= 1 then
						--Start of Shadow Stuff
						if width <= 1 then
							surface.SetDrawColor(Color(0,0,0,255))
							surface.DrawRect( XRound - WRound - 1, YRound - WRound - 1 , Max + 2, Max + 2 )
						end
						-- End of Shadow Stuff
					end
					
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
					
					-- Start of Normal Stuff
					surface.DrawCircle(XRound,YRound, FinalCone + Offset, Color(r,g,b,a))
					-- End of Normal Stuff
					
				end
				
			end
			
		end	
		
	end
	
end

function SWEP:DrawSpecial(ConeToSend)


end

if CLIENT then
	SWEP.DynamicScopeDesiredOffsetX = 0
	SWEP.DynamicScopeDesiredOffsetY = 0
	SWEP.DynamicScopeOffsetX = 0
	SWEP.DynamicScopeOffsetY = 0
	
	SWEP.ScopeMoveTime = 0
	SWEP.ScopeMoveTimeStored = 0
end

function SWEP:DrawCustomScope(x,y,Cone,r,g,b,a)

	local space = 1
	
	local PositionOffsetX = 0
	local PositionOffsetY = 0
	
	if CSS_ContextMenuIsOpen then
		PositionOffsetX, PositionOffsetY = self:ClientCursorClamp()
		PositionOffsetX = PositionOffsetX - x/2
		PositionOffsetY = PositionOffsetY - y/2	
	end

	--[[
	local XSub = 100*FrameTime()
	local YSub = 100*FrameTime()

	if self.DynamicScopeDesiredOffsetX > 0 and self.DynamicScopeDesiredOffsetX - XSub > 0 then
		self.DynamicScopeDesiredOffsetX = self.DynamicScopeDesiredOffsetX - XSub
	elseif self.DynamicScopeDesiredOffsetX < 0 and self.DynamicScopeDesiredOffsetX - XSub < 0 then
		self.DynamicScopeDesiredOffsetX = self.DynamicScopeDesiredOffsetX + XSub
	else
		self.DynamicScopeDesiredOffsetX = 0
	end
	
	if self.DynamicScopeDesiredOffsetY > 0 and self.DynamicScopeDesiredOffsetY - YSub > 0 then
		self.DynamicScopeDesiredOffsetY = self.DynamicScopeDesiredOffsetY - YSub
	elseif self.DynamicScopeDesiredOffsetY < 0 and self.DynamicScopeDesiredOffsetY - YSub < 0 then
		self.DynamicScopeDesiredOffsetY = self.DynamicScopeDesiredOffsetY + YSub
	else
		self.DynamicScopeDesiredOffsetY = 0
	end

	self.DynamicScopeOffsetX = self.DynamicScopeOffsetX - (self.DynamicScopeOffsetX - self.DynamicScopeDesiredOffsetX)*FrameTime()
	self.DynamicScopeOffsetY = self.DynamicScopeOffsetY - (self.DynamicScopeOffsetY - self.DynamicScopeDesiredOffsetY)*FrameTime()
	
	
	PositionOffsetX = PositionOffsetX + self.DynamicScopeOffsetX
	PositionOffsetY = PositionOffsetY + self.DynamicScopeOffsetY
	--]]
	
	--[[
	local MoveVel = self:GetMovementVelocity()
	

	if MoveVel ~= 0 then
		self.ScopeMoveTime = self.ScopeMoveTime + 1*math.pi*FrameTime()
		self.ScopeMoveTimeStored = math.sin(self.ScopeMoveTime)*50
	else 
		if self.ScopeMoveTimeStored > 0 then
			self.ScopeMoveTimeStored = math.Clamp(self.ScopeMoveTimeStored - FrameTime(),0,1)
		elseif self.ScopeMoveTimeStored < 0 then
			self.ScopeMoveTimeStored = math.Clamp(self.ScopeMoveTimeStored + FrameTime(),-1,0)
		else
			self.ScopeMoveTimeStored = 0
		end
	end
	
	PositionOffsetX = PositionOffsetX + self.ScopeMoveTimeStored
	--]]
	
	--[[
	local Size = math.Clamp(Cone,3,x/2*0.33)/2
	
	local OffsetX = math.sin(CurTime())*Size
	local OffsetY = math.cos(CurTime())*Size
	
	self.DynamicScopeOffsetX = self.DynamicScopeOffsetX - (self.DynamicScopeOffsetX - OffsetX)*FrameTime()*10
	self.DynamicScopeOffsetY = self.DynamicScopeOffsetY - (self.DynamicScopeOffsetY - OffsetY)*FrameTime()*10
	
	PositionOffsetX = PositionOffsetX + self.DynamicScopeOffsetX
	PositionOffsetY = PositionOffsetY + self.DynamicScopeOffsetY
	--]]
	
	if self.ColorOverlay.a > 0 then
		surface.SetDrawColor(self.ColorOverlay)
		surface.DrawRect(0-x/2 + PositionOffsetX, 0-y/2 + PositionOffsetY, x*2, y*2 )
	end
	
	if self.CustomScope == nil then
	
		if self.EnableDefaultScope then
			surface.SetDrawColor(Color(0,0,0))
			surface.SetMaterial(Material("gui/sniper_corner"))
			
			--[[
			surface.DrawTexturedRectRotated(x/2 - y/4 + PositionOffsetX,y/2 - y/4 + PositionOffsetY,y/2 + space,y/2 + space,0-180-180)
			surface.DrawTexturedRectRotated(x/2 - y/4 + PositionOffsetX,y/2 + y/4 + PositionOffsetY,y/2 + space,y/2 + space,90-180-180)
			surface.DrawTexturedRectRotated(x/2 + y/4 + PositionOffsetX,y/2 + y/4 + PositionOffsetY,y/2 + space,y/2 + space,180-180-180)
			surface.DrawTexturedRectRotated(x/2 + y/4 + PositionOffsetX,y/2 - y/4 + PositionOffsetY,y/2 + space,y/2 + space,270-180-180)
			--]]
			
			local CenterX = x/2
			local ScopeSize = y
			local ScopeSegmentSize = ScopeSize/2
			
			
			surface.DrawTexturedRectRotated(CenterX - ScopeSegmentSize/2 + PositionOffsetX,ScopeSegmentSize - ScopeSegmentSize/2 + PositionOffsetY,ScopeSegmentSize + space,ScopeSegmentSize + space,0-180-180)
			surface.DrawTexturedRectRotated(CenterX - ScopeSegmentSize/2 + PositionOffsetX,ScopeSegmentSize + ScopeSegmentSize/2 + PositionOffsetY,ScopeSegmentSize + space,ScopeSegmentSize + space,90-180-180)
			surface.DrawTexturedRectRotated(CenterX + ScopeSegmentSize/2 + PositionOffsetX,ScopeSegmentSize + ScopeSegmentSize/2 + PositionOffsetY,ScopeSegmentSize + space,ScopeSegmentSize + space,180-180-180)
			surface.DrawTexturedRectRotated(CenterX + ScopeSegmentSize/2 + PositionOffsetX,ScopeSegmentSize - ScopeSegmentSize/2 + PositionOffsetY,ScopeSegmentSize + space,ScopeSegmentSize + space,270-180-180)
			
			
			
		end
		
		if self.ZoomAmount > 6 then
			surface.SetDrawColor(Color(0,0,0))
			surface.DrawLine(x/2 + PositionOffsetX,0 + PositionOffsetY,x/2 + PositionOffsetX,y + PositionOffsetY)
			surface.DrawLine(0 + PositionOffsetX,y/2 + PositionOffsetY,x + PositionOffsetX,y/2 + PositionOffsetY)
		else
			if !self.EnableIronCross then
				surface.DrawCircle( x/2 + PositionOffsetX, y/2 + PositionOffsetY, 1 , Color(r,g,b,a) )
			end
		end
		
	else
	
		local Size = y
		
		if self.CustomScopeSOverride then
			Size = self.CustomScopeSOverride
		end
	
		surface.SetDrawColor(self.CustomScopeCOverride)
		surface.SetMaterial(self.CustomScope)
		surface.DrawTexturedRectRotated(x/2 + PositionOffsetX,y/2 + PositionOffsetY,Size,Size,0)
		
		if self.EnableDefaultScope then
			surface.SetDrawColor(Color(0,0,0,255))
			surface.SetMaterial(Material("vgui/scope_lens"))
			surface.DrawTexturedRectRotated(x/2 + PositionOffsetX,y/2 + PositionOffsetY,y,y,0)
		end
		
	end
	
	if !self.EnableIronCross then
		local Size = math.Clamp(Cone,3,x/2*0.33)
				
		if Size > 6 then
			surface.DrawCircle( x/2 + PositionOffsetX, y/2 + PositionOffsetY, Size , Color(r,g,b,a) )
		end
	end

	if self.EnableDefaultScope then
		surface.SetDrawColor(Color(0,0,0))
		
		local CenterX = x/2
		local ScopeSize = y
		local ScopeSegmentSize = ScopeSize/2
		
		surface.DrawRect( 0 + PositionOffsetX, 0 + PositionOffsetY, CenterX - ScopeSegmentSize, ScopeSize ) -- Left
		surface.DrawRect( CenterX + ScopeSegmentSize + PositionOffsetX, 0 + PositionOffsetY, CenterX - ScopeSegmentSize, ScopeSize ) -- Right

	end
	
	surface.SetDrawColor(Color(0,0,0))
	
	surface.DrawRect( x + PositionOffsetX, 0 + PositionOffsetY, x, y) -- Right
	surface.DrawRect(-x + PositionOffsetX, 0 + PositionOffsetY, x, y) -- Left
	surface.DrawRect( -x + PositionOffsetX, y + PositionOffsetY, x*3, y) -- Bottom
	surface.DrawRect( -x + PositionOffsetX, -y + PositionOffsetY, x*3, y) -- Top
	
end

function SWEP:ClientCursorClamp()
	local x,y = input.GetCursorPos()
	x = math.Clamp(x,0,ScrW())
	y = math.Clamp(y,0,ScrH())
	return x,y
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
	
		local Damage = math.floor(self.Primary.NumShots * self.Primary.Damage * GetConVar("sv_css_damage_scale"):GetFloat())	
		
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
		local Cone = math.Round((self.Primary.Cone * GetConVar("sv_css_cone_scale"):GetFloat()) * (360/1),2)
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
			self:SendWeaponAnim(ACT_VM_THROW)
			self:SetThrowAnimationTime(CurTime() + 10)
		end
		
		if self:GetThrowTime() <= CurTime() then
			self.Owner:SetAnimation(PLAYER_ATTACK1) 
			self:ThrowObject(self.Object,1000)
			if self:Ammo1() > 0 then
				self:TakePrimaryAmmo(1)
			end
			self:SetThrowTime(CurTime() + 10)
		end
		
	if self:GetThrowRemoveTime() <= CurTime() then
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

	
	if self.Owner and self.Owner ~= NULL then
		if self.Owner:IsBot() then
			if SERVER then
				local Weapons = self.Owner:GetWeapons()
				
				local WeaponFound = false
				
				for k,v in pairs(Weapons) do
					if not WeaponFound and self.Owner:HasWeapon(v:GetClass()) and v.Category == "Counter-Strike" then
						self.Owner:SetActiveWeapon(v)
						self.Owner:DrawWorldModel( true )
						WeaponFound = true
					end
				end
				
			end
		elseif SERVER or (CLIENT and self.Owner == LocalPlayer()) then
			self.Owner:ConCommand("lastinv")
		end
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

function SWEP:NewSwing(damage,delay,entoverride,delayoverride)

	if delay then
		self:SetClashTime(CurTime() + delay)
	end

	if self.MeleeDelay > 0 then
		self:SetShouldMelee(true)
		self:SetNextMeleeDamage(damage)
		if delayoverride then
			self:SetNextMelee(CurTime() + delayoverride)
		else
			self:SetNextMelee(CurTime() + self.MeleeDelay)
		end
		self:SetNextMeleeEnt(entoverride)
		self:EmitGunSound(self.MeleeSoundMiss)
	else
		local Returner = self:Swing(damage,entoverride)
		if not Returner then
			self:EmitGunSound(self.MeleeSoundMiss)
		end
		return Returner
	end
	
end

function SWEP:SwingThink()

	if self:GetShouldMelee() and self:GetNextMelee() <= CurTime() then
	
		if self:GetNextMeleeEnt() then
			self:Swing(self:GetNextMeleeDamage(),self:GetNextMeleeEnt())	
		else
			self:Swing(self:GetNextMeleeDamage())
		end
			
		self:SetShouldMelee(false)
		self:SetNextMeleeDamage(0)
		self:SetNextMelee(0)
		self:SetNextMeleeEnt(nil)
		
	end

end

function SWEP:Swing(damage,entoverride)

	if self.Owner:IsPlayer() then
		self.Owner:LagCompensation( true )
	end
	
	if entoverride and entoverride ~= NULL then
	
		self:NewSendHitEvent(entoverride,damage,nil)
		
		if self.Owner:IsPlayer() then
			self.Owner:LagCompensation( false )
		end
		
		return entoverride
	else
	
		local Data = {}

		Data.start = self.Owner:GetShootPos()
		Data.endpos = self.Owner:GetShootPos() + self.Owner:EyeAngles():Forward() * (self.MeleeRange)
		Data.filter = self.Owner
		Data.mins = Vector( -8 , -8 , -8 )
		Data.maxs = Vector( 8 , 8 , 8 )

		local Trace = util.TraceHull( Data )
		
		local HasHitTarget = nil

		if Trace.Hit then
			HasHitTarget = Trace.Entity
		else		
			HasHitTarget = nil
		end
		
		self:NewSendHitEvent(HasHitTarget,damage,Data)
		
		if self.Owner:IsPlayer() then
			self.Owner:LagCompensation( false )
		end
		
		return HasHitTarget
	end

end

function SWEP:NewSendHitEvent(victim,damage,TraceData)

	if victim and victim ~= NULL and (victim:IsPlayer() or victim:IsNPC()) then
							
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
		
		VictimWeapon = victim:GetActiveWeapon()

		if VictimWeapon and VictimWeapon ~= NULL then
			if VictimWeapon.WeaponType == "Melee" then
				if (VictimWeapon:GetIsBlocking() and VictimWeapon:GetNextSecondaryFire() <= CurTime()) or ( VictimWeapon:GetClashTime() >= CurTime() and math.abs(VictimWeapon:GetClashTime() - self:GetClashTime()) > self.MeleeDelay ) then
					local Range = 90
					if Yaw > 180 - Range/2 and Yaw < 180 + Range/2 then
						VictimWeapon:BlockDamage(damage,self.Owner)
						self:SetShouldMelee(false)
						VictimWeapon:SetShouldMelee(false)	
						self:EmitGunSound("weapons/samurai/tf_katana_impact_object_02.wav")
						ShouldDamage = false
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
	
		local NewTraceData = {}
		
		NewTraceData.start = TraceData.start
		NewTraceData.endpos = TraceData.endpos + (TraceData.endpos - TraceData.start):GetNormalized()*20
		NewTraceData.filter = TraceData.filter
		
		local NewTraceResult = util.TraceLine(NewTraceData)
	
	
		if IsFirstTimePredicted() then
			--util.Decal(self.MeleeDecal,NewTraceResult.HitPos - NewTraceResult.HitNormal ,NewTraceResult.HitPos + NewTraceResult.HitNormal)
			
			if NewTraceResult.Hit then
			
				local effect = EffectData()
				effect:SetOrigin(NewTraceResult.HitPos)
				effect:SetStart(NewTraceResult.HitPos + NewTraceResult.HitNormal)
				effect:SetNormal(NewTraceResult.HitNormal)
				effect:SetDamageType(self.MeleeDamageType)
				
				if victim and victim ~= NULL then
					if CLIENT then
						effect:SetEntity(victim)
					else
						effect:SetEntIndex(victim:EntIndex())
					end
				end
				
				util.Effect("Impact", effect)
				
				self:NewStabDamage(damage, victim)

			else
				if self.MeleeDelay == 0 then
					self:EmitGunSound(self.MeleeSoundMiss)
				end
			end
			
		end
		
		
		
	end

end

function SWEP:BlockDamage()


end

function SWEP:NewStabDamage(damage, victim)

	if victim and victim ~= NULL then

		if (victim:IsPlayer() or victim:IsNPC()) then
			if damage <= self.Primary.Damage then
				self:EmitGunSound(self.MeleeSoundFleshSmall)
			else
				self:EmitGunSound(self.MeleeSoundFleshLarge)
			end
		else
			self:EmitGunSound(self.MeleeSoundWallHit)
		end
		
		local dmginfo = DamageInfo()
		dmginfo:SetDamage( damage )
		dmginfo:SetDamageType( self.MeleeDamageType )
		dmginfo:SetAttacker( self.Owner )
		dmginfo:SetInflictor( self )
		--dmginfo:SetDamageForce( self.Owner:GetForward() )
			
		if SERVER then
			victim:TakeDamageInfo( dmginfo )
		end
		
	else
		self:EmitGunSound(self.MeleeSoundWallHit)
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
	effect:SetDamageType(self.MeleeDamageType)
		
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

	if CLIENT then

		local ent = self

		local k, v, t

		t = { }

		for k, v in ipairs( ent:GetSequenceList( ) ) do
			table.insert( t, { id = k, act = ent:GetSequenceActivity( k ), actname = ent:GetSequenceActivityName( k ) } )
		end

		PrintTable(t)
		print("--------------------")
		PrintTable(self:GetSequenceList())
		
	end
  
end


function SWEP:SendSequence(anim)
	local vm = self.Owner:GetViewModel()
	vm:SendViewModelMatchingSequence( vm:LookupSequence( anim ) )
end

function SWEP:SCK_OnRemove()
	self:SCK_Holster()
end

function SWEP:DrawWorldModel()
	self:SCK_DrawWorldModel()
end

function SWEP:ViewModelDrawn()
	self:SCK_ViewModelDrawn()
end

function SWEP:OnRemove()
	self:SCK_OnRemove()
end

--------------------------------
--SWEP CONTSTRUCTION KIT STUFF--
--------------------------------

function SWEP:SCK_Initialize()
	// other initialize code goes here
	if CLIENT then
	
		// Create a new table for every weapon instance
		self.VElements = table.FullCopy( self.VElements )
		self.WElements = table.FullCopy( self.WElements )
		self.ViewModelBoneMods = table.FullCopy( self.ViewModelBoneMods )
		self:SCK_CreateModels(self.VElements) // create viewmodels
		self:SCK_CreateModels(self.WElements) // create worldmodels
		
		// init view model bone build function
		if IsValid(self.Owner) then
			local vm = self.Owner:GetViewModel()
			if IsValid(vm) then
				self:SCK_ResetBonePositions(vm)
				
				// Init viewmodel visibility
				if (self.ShowViewModel == nil or self.ShowViewModel) then
					vm:SetColor(Color(255,255,255,255))
				else
					// we set the alpha to 1 instead of 0 because else ViewModelDrawn stops being called
					vm:SetColor(Color(255,255,255,1))
					// ^ stopped working in GMod 13 because you have to do Entity:SetRenderMode(1) for translucency to kick in
					// however for some reason the view model resets to render mode 0 every frame so we just apply a debug material to prevent it from drawing
					vm:SetMaterial("Debug/hsv")			
				end
			end
		end
		
	end
end

function SWEP:SCK_Holster()
	
	if CLIENT and IsValid(self.Owner) then
		local vm = self.Owner:GetViewModel()
		if IsValid(vm) then
			self:SCK_ResetBonePositions(vm)
		end
	end
	
	return true
end

if CLIENT then
	SWEP.vRenderOrder = nil
	function SWEP:SCK_ViewModelDrawn()
		
		local vm = self.Owner:GetViewModel()
		if !IsValid(vm) then return end
		
		if (!self.VElements) then return end
		
		self:SCK_UpdateBonePositions(vm)
		if (!self.vRenderOrder) then
			
			// we build a render order because sprites need to be drawn after models
			self.vRenderOrder = {}
			for k, v in pairs( self.VElements ) do
				if (v.type == "Model") then
					table.insert(self.vRenderOrder, 1, k)
				elseif (v.type == "Sprite" or v.type == "Quad") then
					table.insert(self.vRenderOrder, k)
				end
			end
			
		end
		for k, name in ipairs( self.vRenderOrder ) do
		
			local v = self.VElements[name]
			if (!v) then self.vRenderOrder = nil break end
			if (v.hide) then continue end
			
			local model = v.modelEnt
			local sprite = v.spriteMaterial
			
			if (!v.bone) then continue end
			
			local pos, ang = self:SCK_GetBoneOrientation( self.VElements, v, vm )
			
			if (!pos) then continue end
			
			if (v.type == "Model" and IsValid(model)) then
				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				model:SetAngles(ang)
				//model:SetModelScale(v.size)
				local matrix = Matrix()
				matrix:Scale(v.size)
				model:EnableMatrix( "RenderMultiply", matrix )
				
				if (v.material == "") then
					model:SetMaterial("")
				elseif (model:GetMaterial() != v.material) then
					model:SetMaterial( v.material )
				end
				
				if (v.skin and v.skin != model:GetSkin()) then
					model:SetSkin(v.skin)
				end
				
				if (v.bodygroup) then
					for k, v in pairs( v.bodygroup ) do
						if (model:GetBodygroup(k) != v) then
							model:SetBodygroup(k, v)
						end
					end
				end
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(true)
				end
				
				render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
				render.SetBlend(v.color.a/255)
				model:DrawModel()
				render.SetBlend(1)
				render.SetColorModulation(1, 1, 1)
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(false)
				end
				
			elseif (v.type == "Sprite" and sprite) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				render.SetMaterial(sprite)
				render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
				
			elseif (v.type == "Quad" and v.draw_func) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
				cam.Start3D2D(drawpos, ang, v.size)
					v.draw_func( self )
				cam.End3D2D()
			end
			
		end
		
	end
	SWEP.wRenderOrder = nil

	function SWEP:SCK_DrawWorldModel()
		
		if (self.ShowWorldModel == nil or self.ShowWorldModel) then
			self:DrawModel()
		end
		
		if (!self.WElements) then return end
		
		if (!self.wRenderOrder) then
			self.wRenderOrder = {}
			for k, v in pairs( self.WElements ) do
				if (v.type == "Model") then
					table.insert(self.wRenderOrder, 1, k)
				elseif (v.type == "Sprite" or v.type == "Quad") then
					table.insert(self.wRenderOrder, k)
				end
			end
		end
		
		if (IsValid(self.Owner)) then
			bone_ent = self.Owner
		else
			// when the weapon is dropped
			bone_ent = self
		end
		
		for k, name in pairs( self.wRenderOrder ) do
		
			local v = self.WElements[name]
			if (!v) then self.wRenderOrder = nil break end
			if (v.hide) then continue end
			
			local pos, ang
			
			if (v.bone) then
				pos, ang = self:SCK_GetBoneOrientation( self.WElements, v, bone_ent )
			else
				pos, ang = self:SCK_GetBoneOrientation( self.WElements, v, bone_ent, "ValveBiped.Bip01_R_Hand" )
			end
			
			if (!pos) then continue end
			
			local model = v.modelEnt
			local sprite = v.spriteMaterial
			
			if (v.type == "Model" and IsValid(model)) then
				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				model:SetAngles(ang)
				//model:SetModelScale(v.size)
				local matrix = Matrix()
				matrix:Scale(v.size)
				model:EnableMatrix( "RenderMultiply", matrix )
				
				if (v.material == "") then
					model:SetMaterial("")
				elseif (model:GetMaterial() != v.material) then
					model:SetMaterial( v.material )
				end
				
				if (v.skin and v.skin != model:GetSkin()) then
					model:SetSkin(v.skin)
				end
				
				if (v.bodygroup) then
					for k, v in pairs( v.bodygroup ) do
						if (model:GetBodygroup(k) != v) then
							model:SetBodygroup(k, v)
						end
					end
				end
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(true)
				end
				
				render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
				render.SetBlend(v.color.a/255)
				model:DrawModel()
				render.SetBlend(1)
				render.SetColorModulation(1, 1, 1)
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(false)
				end
				
			elseif (v.type == "Sprite" and sprite) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				render.SetMaterial(sprite)
				render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
				
			elseif (v.type == "Quad" and v.draw_func) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
				cam.Start3D2D(drawpos, ang, v.size)
					v.draw_func( self )
				cam.End3D2D()
			end
			
		end
		
	end
	function SWEP:SCK_GetBoneOrientation( basetab, tab, ent, bone_override )
		
		local bone, pos, ang
		if (tab.rel and tab.rel != "") then
			
			local v = basetab[tab.rel]
			
			if (!v) then return end
			
			// Technically, if there exists an element with the same name as a bone
			// you can get in an infinite loop. Let's just hope nobody's that stupid.
			pos, ang = self:SCK_GetBoneOrientation( basetab, v, ent )
			
			if (!pos) then return end
			
			pos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
			ang:RotateAroundAxis(ang:Up(), v.angle.y)
			ang:RotateAroundAxis(ang:Right(), v.angle.p)
			ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
		else
		
			bone = ent:LookupBone(bone_override or tab.bone)
			if (!bone) then return end
			
			pos, ang = Vector(0,0,0), Angle(0,0,0)
			local m = ent:GetBoneMatrix(bone)
			if (m) then
				pos, ang = m:GetTranslation(), m:GetAngles()
			end
			
			if (IsValid(self.Owner) and self.Owner:IsPlayer() and 
				ent == self.Owner:GetViewModel() and self.ViewModelFlip) then
				ang.r = -ang.r // Fixes mirrored models
			end
		
		end
		
		return pos, ang
	end
	function SWEP:SCK_CreateModels( tab )
		if (!tab) then return end
		// Create the clientside models here because Garry says we can't do it in the render hook
		for k, v in pairs( tab ) do
			if (v.type == "Model" and v.model and v.model != "" and (!IsValid(v.modelEnt) or v.createdModel != v.model) and 
					string.find(v.model, ".mdl") and file.Exists (v.model, "GAME") ) then
				
				v.modelEnt = ClientsideModel(v.model, RENDER_GROUP_VIEW_MODEL_OPAQUE)
				if (IsValid(v.modelEnt)) then
					v.modelEnt:SetPos(self:GetPos())
					v.modelEnt:SetAngles(self:GetAngles())
					v.modelEnt:SetParent(self)
					v.modelEnt:SetNoDraw(true)
					v.createdModel = v.model
				else
					v.modelEnt = nil
				end
				
			elseif (v.type == "Sprite" and v.sprite and v.sprite != "" and (!v.spriteMaterial or v.createdSprite != v.sprite) 
				and file.Exists ("materials/"..v.sprite..".vmt", "GAME")) then
				
				local name = v.sprite.."-"
				local params = { ["$basetexture"] = v.sprite }
				// make sure we create a unique name based on the selected options
				local tocheck = { "nocull", "additive", "vertexalpha", "vertexcolor", "ignorez" }
				for i, j in pairs( tocheck ) do
					if (v[j]) then
						params["$"..j] = 1
						name = name.."1"
					else
						name = name.."0"
					end
				end

				v.createdSprite = v.sprite
				v.spriteMaterial = CreateMaterial(name,"UnlitGeneric",params)
				
			end
		end
		
	end
	
	local allbones
	local hasGarryFixedBoneScalingYet = false

	function SWEP:SCK_UpdateBonePositions(vm)
		
		if self.ViewModelBoneMods then
			
			if (!vm:GetBoneCount()) then return end
			
			// !! WORKAROUND !! //
			// We need to check all model names :/
			local loopthrough = self.ViewModelBoneMods
			if (!hasGarryFixedBoneScalingYet) then
				allbones = {}
				for i=0, vm:GetBoneCount() do
					local bonename = vm:GetBoneName(i)
					if (self.ViewModelBoneMods[bonename]) then 
						allbones[bonename] = self.ViewModelBoneMods[bonename]
					else
						allbones[bonename] = { 
							scale = Vector(1,1,1),
							pos = Vector(0,0,0),
							angle = Angle(0,0,0)
						}
					end
				end
				
				loopthrough = allbones
			end
			// !! ----------- !! //
			
			for k, v in pairs( loopthrough ) do
				local bone = vm:LookupBone(k)
				if (!bone) then continue end
				
				// !! WORKAROUND !! //
				local s = Vector(v.scale.x,v.scale.y,v.scale.z)
				local p = Vector(v.pos.x,v.pos.y,v.pos.z)
				local ms = Vector(1,1,1)
				if (!hasGarryFixedBoneScalingYet) then
					local cur = vm:GetBoneParent(bone)
					while(cur >= 0) do
						local pscale = loopthrough[vm:GetBoneName(cur)].scale
						ms = ms * pscale
						cur = vm:GetBoneParent(cur)
					end
				end
				
				s = s * ms
				// !! ----------- !! //
				
				if vm:GetManipulateBoneScale(bone) != s then
					vm:ManipulateBoneScale( bone, s )
				end
				if vm:GetManipulateBoneAngles(bone) != v.angle then
					vm:ManipulateBoneAngles( bone, v.angle )
				end
				if vm:GetManipulateBonePosition(bone) != p then
					vm:ManipulateBonePosition( bone, p )
				end
			end
		else
			self:SCK_ResetBonePositions(vm)
		end
		   
	end
	 
	function SWEP:SCK_ResetBonePositions(vm)
		
		if (!vm:GetBoneCount()) then return end
		for i=0, vm:GetBoneCount() do
			vm:ManipulateBoneScale( i, Vector(1, 1, 1) )
			vm:ManipulateBoneAngles( i, Angle(0, 0, 0) )
			vm:ManipulateBonePosition( i, Vector(0, 0, 0) )
		end
		
	end

	/**************************
		Global utility code
	**************************/

	// Fully copies the table, meaning all tables inside this table are copied too and so on (normal table.Copy copies only their reference).
	// Does not copy entities of course, only copies their reference.
	// WARNING: do not use on tables that contain themselves somewhere down the line or you'll get an infinite loop
	function table.FullCopy( tab )
		if (!tab) then return nil end
		
		local res = {}
		for k, v in pairs( tab ) do
			if (type(v) == "table") then
				res[k] = table.FullCopy(v) // recursion ho!
			elseif (type(v) == "Vector") then
				res[k] = Vector(v.x, v.y, v.z)
			elseif (type(v) == "Angle") then
				res[k] = Angle(v.p, v.y, v.r)
			else
				res[k] = v
			end
		end
		
		return res
		
	end
	
end