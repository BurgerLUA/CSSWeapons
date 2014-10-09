
if CLIENT then
	SWEP.PrintName			= "CSS M3"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_m3", "csd", "k", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType				= "shotgun"
SWEP.Base					= "weapon_cs_base"
SWEP.Category				= "Counter-Strike"
SWEP.Spawnable				= true

SWEP.ViewModel				= "models/weapons/cstrike/c_shot_m3super90.mdl"
SWEP.WorldModel				= "models/weapons/w_shot_m3super90.mdl"

SWEP.Primary.Damage			= 9.5
SWEP.Primary.NumShots		= 12
SWEP.Primary.Sound			= Sound("weapons/m3/m3-1.wav")
SWEP.Primary.Cone			= 0.05
SWEP.Primary.ClipSize		= 8
SWEP.Primary.DefaultClip	= 32
SWEP.Primary.Delay			= 1
SWEP.Primary.Ammo			= "Buckshot"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul				= 0.5
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 0
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= true
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false