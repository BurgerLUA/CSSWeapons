
if CLIENT then
	SWEP.PrintName			= "CSS SIG522"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 3
	killicon.AddFont( "weapon_cs_sig552", "csd", "A", Color(255, 100, 100, 100) )
	SWEP.ViewModelFlip = true
end

SWEP.HoldType			= "ar2"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel			= "models/weapons/v_rif_sg552.mdl"
SWEP.WorldModel			= "models/weapons/w_rif_sg552.mdl"

SWEP.Primary.Damage			= 32
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/sg552/sg552-1.wav")
SWEP.Primary.Cone			= .01
SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 60
SWEP.Primary.Delay			= 0.2
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = true

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "sniper" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 3
SWEP.EnableScope = true
SWEP.EnableCrosshair = true
