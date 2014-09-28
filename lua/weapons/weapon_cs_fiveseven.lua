
if CLIENT then
	SWEP.PrintName			= "CSS FIVESEVEN"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_fiveseven", "csd", "u", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = true
end

SWEP.HoldType			= "pistol"
SWEP.Base				= "weapon_cs_base"
SWEP.Category			= "Counter-Strike"
SWEP.Spawnable			= true

SWEP.ViewModel			= "models/weapons/cstrike/c_pist_fiveseven.mdl"
SWEP.WorldModel			= "models/weapons/w_pist_fiveseven.mdl"

SWEP.Primary.Damage			= 24
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/fiveseven/fiveseven-1.wav")
SWEP.Primary.Cone			= 0.01
SWEP.Primary.ClipSize		= 21
SWEP.Primary.DefaultClip	= 21
SWEP.Primary.Delay			= 0.01
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = false


SWEP.RecoilMul	= 0.5
SWEP.Type = "other" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 16
SWEP.EnableScope = false
SWEP.EnableCrosshair = true