
if CLIENT then
	SWEP.PrintName			= "CSS AUG"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_aug", "csd", "e", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = true
end 

SWEP.HoldType			= "ar2"
SWEP.Base				= "weapon_cs_base"
SWEP.Category			= "Counter-Strike"
SWEP.Spawnable			= true

SWEP.ViewModel			= "models/weapons/cstrike/c_rif_aug.mdl"
SWEP.WorldModel			= "models/weapons/w_rif_aug.mdl"

SWEP.Primary.Damage			= 31
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/aug/aug-1.wav")
SWEP.Primary.Cone			= .01
SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 60
SWEP.Primary.Delay			= 0.11
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = true


SWEP.RecoilMul	= 0.6
SWEP.Type = "sniper" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 4
SWEP.EnableScope = true
SWEP.EnableCrosshair = true