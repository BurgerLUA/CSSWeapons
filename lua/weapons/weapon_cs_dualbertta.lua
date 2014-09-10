
if CLIENT then
	SWEP.PrintName			= "(WIP) CSS DUAL BERTTA"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_dualbertta", "csd", "s", Color(255, 100, 100, 100) )
	SWEP.ViewModelFlip = true
end

SWEP.HoldType			= "pistol"
SWEP.Base				= "weapon_cs_base"
SWEP.Category			= "Counter-Strike"
SWEP.Spawnable			= true

SWEP.ViewModel			= "models/weapons/v_pist_elite.mdl"
SWEP.WorldModel			= "models/weapons/w_pist_elite.mdl"

SWEP.Primary.Damage			= 44
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/elite/elite-1.wav")
SWEP.Primary.Cone			= 0.01
SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Delay			= 0.005
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = false

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "cant" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 16
SWEP.EnableScope = true
SWEP.EnableCrosshair = false