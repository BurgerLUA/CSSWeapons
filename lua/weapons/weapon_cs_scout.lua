
if CLIENT then
	SWEP.PrintName			= "CSS SCOUT"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 4
	killicon.AddFont( "weapon_cs_scout", "csd", "r", Color(255, 100, 100, 100) )
	SWEP.ViewModelFlip = true
end

SWEP.HoldType			= "ar2"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel			= "models/weapons/v_snip_scout.mdl"
SWEP.WorldModel			= "models/weapons/w_snip_scout.mdl"

SWEP.Primary.Damage			= 74
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/scout/scout_fire-1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 10
SWEP.Primary.Delay			= 1.2
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = false

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "sniper" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 8
SWEP.EnableScope = true
SWEP.EnableCrosshair = false
