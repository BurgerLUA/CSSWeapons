
if CLIENT then
	SWEP.PrintName			= ".357SIG P228"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_p228", "csd", "y", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip 		= false
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/p228")
end

SWEP.HoldType				= "revolver"
SWEP.Base					= "weapon_cs_base"
SWEP.Spawnable				= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel				= "models/weapons/cstrike/c_pist_p228.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_p228.mdl"

SWEP.Primary.Damage			= 39
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/p228/p228-1.wav")
SWEP.Primary.Cone			= .01
SWEP.Primary.ClipSize		= 13
SWEP.Primary.SpareClip	= 52
SWEP.Primary.Delay			= 1/(400/60)
SWEP.Primary.Ammo			= "GaussEnergy"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul				= 0.5
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 1
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false
SWEP.HasIronSights 			= false
SWEP.IronSightTime			= 0.1

SWEP.IronSightsPos = Vector(-6, 0, 2.92)
SWEP.IronSightsAng = Vector(-0.5, -0.101, 0)


