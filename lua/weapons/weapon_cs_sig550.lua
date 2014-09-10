
if CLIENT then
	SWEP.PrintName			= "CSS SIG550"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 4
	killicon.AddFont( "weapon_cs_sig550", "csd", "o", Color(255, 100, 100, 100) )
	SWEP.ViewModelFlip = true
end

SWEP.HoldType			= "ar2"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel			= "models/weapons/v_snip_sg550.mdl"
SWEP.WorldModel			= "models/weapons/w_snip_sg550.mdl"

SWEP.Primary.Damage			= 69
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/sg550/sg550-1.wav")
SWEP.Primary.Cone			= .001
SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 60
SWEP.Primary.Delay			= 0.3
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = true

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "sniper" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 6
SWEP.EnableScope = true
SWEP.EnableCrosshair = false