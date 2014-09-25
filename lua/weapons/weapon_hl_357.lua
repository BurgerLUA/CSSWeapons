
if CLIENT then
	SWEP.PrintName			= "HL2 REVOLVER"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_hl_357", "HL2MPTypeDeath", ".", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "pistol"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category			= "HL2"

SWEP.ViewModel			= "models/weapons/c_357.mdl"
SWEP.WorldModel			= "models/weapons/w_357.mdl"

SWEP.Primary.Damage			= 75
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/357/357_fire3.wav")
SWEP.Primary.Cone			= .005
SWEP.Primary.ClipSize		= 6
SWEP.Primary.DefaultClip	= 6
SWEP.Primary.Delay			= 0.4
SWEP.Primary.Ammo			= "357"
SWEP.Primary.Automatic = false


SWEP.RecoilMul	= 1
SWEP.Type = "other" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 1
SWEP.EnableScope = false
SWEP.EnableCrosshair = true