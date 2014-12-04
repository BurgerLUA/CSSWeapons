
if CLIENT then
	killicon.AddFont( "weapon_cs_sig552", "csd", "A", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/sg552")
end

SWEP.PrintName			= "5.56MM SIG552"
SWEP.Slot				= 3
SWEP.SlotPos			= 1
SWEP.VModelFlip 		= false

SWEP.HoldType				= "ar2"
SWEP.Base					= "weapon_cs_base"
SWEP.Spawnable				= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel 				= "models/weapons/cstrike/c_rif_sg552.mdl"
SWEP.WorldModel				= "models/weapons/w_rif_sg552.mdl"

SWEP.Primary.Damage			= 32
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/sg552/sg552-1.wav")
SWEP.Primary.Cone			= .01
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip		= 90
SWEP.Primary.Delay			= 1/(666/60)
SWEP.Primary.Ammo			= "AirboatGun"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul				= 1
SWEP.EnableScope 			= true
SWEP.ZoomAmount 			= 2
SWEP.EnableCrosshair 		= true
SWEP.HasCSSZoom 			= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false
SWEP.HasIronSights 			= false
SWEP.IronSightTime			= 1

SWEP.IronSightsPos = Vector(0, 0, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)
