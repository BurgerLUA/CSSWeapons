
if CLIENT then
	SWEP.PrintName			= "CSS AWP"
	SWEP.Slot				= 4
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_awp", "csd", "r", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = true
end

SWEP.HoldType			= "ar2"
SWEP.Base				= "weapon_cs_base"
SWEP.Category			= "Counter-Strike"
SWEP.Spawnable			= true

SWEP.ViewModel			= "models/weapons/v_snip_awp.mdl"
SWEP.WorldModel			= "models/weapons/w_snip_awp.mdl"

SWEP.Primary.Damage			= 114
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/awp/awp1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Delay			= 1.75
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = false

SWEP.CoolDown = 0
SWEP.RecoilMul	= 2
SWEP.Type = "sniper" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 10
SWEP.EnableScope = true
SWEP.EnableCrosshair = false

SWEP.ZoomOutAfterShot = true