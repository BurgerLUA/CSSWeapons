
if CLIENT then
	SWEP.PrintName			= "CSS DESERT EAGLE"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_deserteagle", "csd", "f", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = true
end

SWEP.HoldType			= "revolver"
SWEP.Base				= "weapon_cs_base"
SWEP.Category			= "Counter-Strike"
SWEP.Spawnable			= true

SWEP.ViewModel			= "models/weapons/v_pist_deagle.mdl"
SWEP.WorldModel			= "models/weapons/w_pist_deagle.mdl"

SWEP.Primary.Damage			= 52
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/deagle/deagle-1.wav")
SWEP.Primary.Cone			= 0.015
SWEP.Primary.ClipSize		= 8
SWEP.Primary.DefaultClip	= 16
SWEP.Primary.Delay			= 0.3
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = false


SWEP.RecoilMul	= 0.5
SWEP.Type = "other" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 16
SWEP.EnableScope = false
SWEP.EnableCrosshair = true