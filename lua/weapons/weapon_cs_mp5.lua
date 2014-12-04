
if CLIENT then
	killicon.AddFont( "weapon_cs_mp5", "csd", "x", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/mp5")
end

SWEP.PrintName			= "9MM MP5"
SWEP.Slot				= 2
SWEP.SlotPos			= 1
SWEP.ViewModelFlip 		= false

SWEP.HoldType				= "smg"
SWEP.Base					= "weapon_cs_base"
SWEP.Spawnable				= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel				= "models/weapons/cstrike/c_smg_mp5.mdl"
SWEP.WorldModel				= "models/weapons/w_smg_mp5.mdl"
SWEP.MagModel				= "models/weapons/unloaded/smg_mp5_mag.mdl"

SWEP.Primary.Damage			= 25
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/mp5navy/mp5-1.wav")
SWEP.Primary.Cone			= .01
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip	= 120
SWEP.Primary.Delay			= 1/(750/60)
SWEP.Primary.Ammo			= "Battery"
SWEP.Primary.Automatic 		= true


SWEP.RecoilMul				= 0.75
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 1
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= true
SWEP.HasIronSights 			= false
SWEP.IronSightTime			= 1

SWEP.IronSightsPos = Vector(0, 0, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)