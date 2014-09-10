
if CLIENT then
	SWEP.PrintName			= "CSS M3"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_m3", "csd", "k", Color(255, 100, 100, 100) )
	SWEP.ViewModelFlip = true
end

SWEP.HoldType			= "shotgun"
SWEP.Base				= "weapon_cs_base"
SWEP.Category			= "Counter-Strike"
SWEP.Spawnable			= true

SWEP.ViewModel			= "models/weapons/v_shot_m3super90.mdl"
SWEP.WorldModel			= "models/weapons/w_shot_m3super90.mdl"

SWEP.Primary.Damage			= 114/12
SWEP.Primary.NumShots		= 12
SWEP.Primary.Sound			= Sound("weapons/m3/m3-1.wav")
SWEP.Primary.Cone			= 0.1
SWEP.Primary.ClipSize		= 8
SWEP.Primary.DefaultClip	= 8
SWEP.Primary.Delay			= 1
SWEP.Primary.Ammo			= "shotgun"
SWEP.Primary.Automatic = false

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "shotgun" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 16
SWEP.EnableScope = false
SWEP.EnableCrosshair = true