
if CLIENT then
	killicon.AddFont( "weapon_cs_m3", "csd", "k", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/m3")
end

SWEP.PrintName			= "12 GAUGE M3SUPER90"
SWEP.Slot				= 2
SWEP.SlotPos			= 1
SWEP.ViewModelFlip 		= false


SWEP.HoldType				= "shotgun"
SWEP.Base					= "weapon_cs_base"
SWEP.Category				= "Counter-Strike"
SWEP.Spawnable				= true

SWEP.ViewModel				= "models/weapons/cstrike/c_shot_m3super90.mdl"
SWEP.WorldModel				= "models/weapons/w_shot_m3super90.mdl"

SWEP.Primary.Damage			= 120/9
SWEP.Primary.NumShots		= 9
SWEP.Primary.Sound			= Sound("weapons/m3/m3-1.wav")
SWEP.Primary.Cone			= 0.05
SWEP.Primary.ClipSize		= 8
SWEP.Primary.SpareClip	= 32
SWEP.Primary.Delay			= 1/(68/60)
SWEP.Primary.Ammo			= "Buckshot"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul				= 1
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 1
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= true
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false
SWEP.HasIronSights 			= false
SWEP.IronSightTime			= 1

SWEP.IronSightsPos = Vector(0, 0, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)