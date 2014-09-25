
if CLIENT then
	SWEP.PrintName			= "CSS USP"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_usp", "csd", "y", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = true
end

SWEP.HoldType			= "pistol"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel			= "models/weapons/v_pist_usp.mdl"
SWEP.WorldModel			= "models/weapons/w_pist_usp.mdl"

SWEP.Primary.Damage			= 32
SWEP.Primary.NumShots 		= 1
SWEP.Primary.Sound			= Sound("weapons/usp/usp_unsil-1.wav")
SWEP.Primary.Cone			= .01
SWEP.Primary.ClipSize		= 12
SWEP.Primary.DefaultClip	= 12
SWEP.Primary.Delay			= .01
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = false

SWEP.Secondary.Sound 		= Sound("weapons/usp/usp1.wav")


SWEP.RecoilMul	= 0.5
SWEP.Type = "silenced" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 1
SWEP.EnableScope = false
SWEP.EnableCrosshair = true
