
if CLIENT then
	SWEP.PrintName			= "CSS XM1014"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_xm1014", "csd", "B", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = true
end

SWEP.HoldType			= "shotgun"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category			= "Counter-Strike"

SWEP.ViewModel			= "models/weapons/v_shot_xm1014.mdl"
SWEP.WorldModel			= "models/weapons/w_shot_xm1014.mdl"

SWEP.Primary.Damage			= 105/12
SWEP.Primary.NumShots		= 12
SWEP.Primary.Sound			= Sound("weapons/xm1014/xm1014-1.wav")
SWEP.Primary.Cone			= .1
SWEP.Primary.ClipSize		= 7
SWEP.Primary.DefaultClip	= 14
SWEP.Primary.Delay			= 0.3
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = false

SWEP.CoolDown = 0
SWEP.RecoilMul	= 0.75
SWEP.Type = "shotgun" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 1
SWEP.EnableScope = false
SWEP.EnableCrosshair = true