
if CLIENT then
	SWEP.PrintName			= "(WIP) CSS FAMAS"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 3
	killicon.AddFont( "weapon_cs_famas", "csd", "t", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "ar2"
SWEP.Base				= "weapon_cs_base"
SWEP.Category			= "Counter-Strike"
SWEP.Spawnable			= true

SWEP.ViewModel			= "models/weapons/v_rif_famas.mdl"
SWEP.WorldModel			= "models/weapons/w_rif_famas.mdl"

SWEP.Primary.Damage			= 29
SWEP.Primary.Sound			= Sound("weapons/famas/famas-1.wav")
SWEP.Primary.NumShots		= 1
SWEP.Primary.Cone			= 0.01
SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Delay			= 0.15
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = true

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "other" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 16
SWEP.EnableScope = false
SWEP.EnableCrosshair = true