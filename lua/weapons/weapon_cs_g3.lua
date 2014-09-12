
if CLIENT then
	SWEP.PrintName			= "CSS G3"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 4
	killicon.AddFont( "weapon_cs_g3", "csd", "i", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = true
end

SWEP.HoldType			= "ar2"
SWEP.Base				= "weapon_cs_base"
SWEP.Category			= "Counter-Strike"
SWEP.Spawnable			= true

SWEP.ViewModel			= "models/weapons/v_snip_g3sg1.mdl"
SWEP.WorldModel			= "models/weapons/w_snip_g3sg1.mdl"

SWEP.Primary.Damage			= 79
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/g3sg1/g3sg1-1.wav")
SWEP.Primary.Cone			= 0.005
SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Delay			= 0.25
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = true

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "sniper" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 8
SWEP.EnableScope = true
SWEP.EnableCrosshair = false