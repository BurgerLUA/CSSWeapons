
if CLIENT then
	SWEP.PrintName			= "CSS P90"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_p90", "csd", "m", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = true
end

SWEP.HoldType			= "smg"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel			= "models/weapons/v_smg_p90.mdl"
SWEP.WorldModel			= "models/weapons/w_smg_p90.mdl"

SWEP.Primary.Damage			= 25
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/p90/p90-1.wav")
SWEP.Primary.Cone			= .03
SWEP.Primary.ClipSize		= 50
SWEP.Primary.DefaultClip	= 50
SWEP.Primary.Delay			= .10
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = true

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "sniper" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 2
SWEP.EnableScope = true
SWEP.EnableCrosshair = true
