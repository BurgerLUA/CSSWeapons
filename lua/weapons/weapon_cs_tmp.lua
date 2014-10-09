
if CLIENT then
	SWEP.PrintName			= "CSS TMP"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_tmp", "csd", "d", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "smg"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel			= "models/weapons/cstrike/c_smg_tmp.mdl"
SWEP.WorldModel			= "models/weapons/w_smg_tmp.mdl"

SWEP.Primary.Damage			= 25
SWEP.Primary.NumShots 		= 1
SWEP.Primary.Sound			= Sound("weapons/tmp/tmp-1.wav")
SWEP.Primary.Cone			= .03
SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Delay			= 0.1
SWEP.Primary.Ammo			= "Battery"
SWEP.Primary.Automatic = true

SWEP.RecoilMul				= 0.5
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 0
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false