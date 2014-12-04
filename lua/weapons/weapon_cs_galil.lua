
if CLIENT then	
	killicon.AddFont( "weapon_cs_galil", "csd", "v", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/galil")
end

SWEP.PrintName			= "5.56MM GALIL"
SWEP.Slot				= 3
SWEP.SlotPos			= 1
SWEP.ViewModelFlip 		= false

SWEP.HoldType				= "ar2"
SWEP.Base					= "weapon_cs_base"
SWEP.Category				= "Counter-Strike"
SWEP.Spawnable				= true

SWEP.ViewModel				= "models/weapons/cstrike/c_rif_galil.mdl"
SWEP.WorldModel				= "models/weapons/w_rif_galil.mdl"

SWEP.Primary.Damage			= 29
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/galil/galil-1.wav")
SWEP.Primary.Cone			= 0.01
SWEP.Primary.ClipSize		= 20
SWEP.Primary.SpareClip	= 90
SWEP.Primary.Delay			= 1/(666/60)
SWEP.Primary.Ammo			= "AirboatGun"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul				= 1
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
SWEP.IronSightTime			= 1

SWEP.IronSightsPos = Vector(0, 0, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)