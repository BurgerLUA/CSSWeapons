
if CLIENT then
	SWEP.PrintName			= "HL2 SMG"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_hl_smg1", "HL2MPTypeDeath", "/", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "smg"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category			= "HL2"

SWEP.ViewModel			= "models/weapons/c_smg1.mdl"
SWEP.WorldModel			= "models/weapons/w_smg1.mdl"

SWEP.Primary.Damage			= 13
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/smg1/smg1_fire1.wav")
SWEP.Primary.Cone			= .01
SWEP.Primary.ClipSize		= 45
SWEP.Primary.DefaultClip	= 45
SWEP.Primary.Delay			= 0.07
SWEP.Primary.Ammo			= "smg"
SWEP.Primary.Automatic = true

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "selective" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 1
SWEP.EnableScope = false
SWEP.EnableCrosshair = true
