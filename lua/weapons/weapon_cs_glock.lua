
if CLIENT then
	SWEP.PrintName			= "CSS GLOCK"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_glock", "csd", "c", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = true
end

SWEP.HoldType			= "pistol"
SWEP.Base				= "weapon_cs_base"
SWEP.Category			= "Counter-Strike"
SWEP.Spawnable			= true

SWEP.ViewModel			= "models/weapons/v_pist_glock18.mdl"
SWEP.WorldModel			= "models/weapons/w_pist_glock18.mdl"

SWEP.Primary.Damage			= 25
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/glock/glock18-1.wav")
SWEP.Primary.Cone			= 0.015
SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Delay			= 0.01
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = false


SWEP.RecoilMul	= 0
SWEP.Type = "selective" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 1
SWEP.EnableScope = false
SWEP.EnableCrosshair = true