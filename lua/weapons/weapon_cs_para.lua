
if CLIENT then
	SWEP.PrintName			= "CSS M249 PARA"
	SWEP.Slot				= 4
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_para", "csd", "z", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "shotgun"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category			= "Counter-Strike"

SWEP.ViewModel			= "models/weapons/cstrike/c_mach_m249para.mdl"
SWEP.WorldModel			= "models/weapons/w_mach_m249para.mdl"

SWEP.Primary.Damage			= 31
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/m249/m249-1.wav")
SWEP.Primary.Cone			= .015
SWEP.Primary.ClipSize		= 100
SWEP.Primary.SpareClip	= 200
SWEP.Primary.Delay			= .09
SWEP.Primary.Ammo			= "AirboatGun"
SWEP.Primary.Automatic = true

SWEP.RecoilMul				= 0.6
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 0
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
