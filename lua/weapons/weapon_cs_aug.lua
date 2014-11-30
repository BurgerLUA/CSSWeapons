
if CLIENT then
	SWEP.PrintName			= "5.56MM AUG"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_aug", "csd", "e", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip 		= false
	SWEP.WepSelectIcon		= surface.GetTextureID("vgui/gfx/vgui/aug")
end 

SWEP.HoldType				= "ar2"
SWEP.Base					= "weapon_cs_base"
SWEP.Category				= "Counter-Strike"
SWEP.Spawnable				= true

SWEP.ViewModel				= "models/weapons/cstrike/c_rif_aug.mdl"
SWEP.WorldModel				= "models/weapons/w_rif_aug.mdl"

SWEP.Primary.Damage			= 31
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/aug/aug-1.wav")
SWEP.Primary.Cone			= .01
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip	= 90
SWEP.Primary.Delay			= 1/(666/60)
SWEP.Primary.Ammo			= "AirboatGun"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul 				= 0.75
SWEP.EnableScope 			= true
SWEP.ZoomAmount				= 4
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