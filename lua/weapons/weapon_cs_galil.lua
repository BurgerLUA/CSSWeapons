
if CLIENT then
	SWEP.PrintName			= "CSS GALIL"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 3
	killicon.AddFont( "weapon_cs_galil", "csd", "v", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "ar2"
SWEP.Base				= "weapon_cs_base"
SWEP.Category			= "Counter-Strike"
SWEP.Spawnable			= true

SWEP.ViewModel			= "models/weapons/v_rif_galil.mdl"
SWEP.WorldModel			= "models/weapons/w_rif_galil.mdl"

SWEP.Primary.Damage			= 29
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/galil/galil-1.wav")
SWEP.Primary.Cone			= 0.01
SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Delay			= 0.13
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = true

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "other" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 8
SWEP.EnableScope = false
SWEP.EnableCrosshair = true