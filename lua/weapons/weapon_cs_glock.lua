
if CLIENT then
	killicon.AddFont( "weapon_cs_glock", "csd", "c", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon		= surface.GetTextureID("vgui/gfx/vgui/glock18")
end

SWEP.PrintName			= "9MM GLOCK"
SWEP.Slot				= 1
SWEP.SlotPos			= 1
SWEP.VModelFlip 		= false

SWEP.HoldType				= "revolver"
SWEP.Base					= "weapon_cs_base"
SWEP.Category				= "Counter-Strike"
SWEP.Spawnable				= true

SWEP.ViewModel 				= "models/weapons/cstrike/c_pist_glock18.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_glock18.mdl"

SWEP.Primary.Damage			= 28
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/glock/glock18-1.wav")
SWEP.Primary.Cone			= 0.015
SWEP.Primary.ClipSize		= 20
SWEP.Primary.SpareClip		= 120
SWEP.Primary.Delay			= 1/(400/60)
SWEP.Primary.Ammo			= "Battery"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul				= 0
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 1
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= true
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false
SWEP.HasIronSights 			= false
SWEP.IronSightTime			= 0.1

SWEP.IronSightsPos = Vector(-5.796, 0, 2.72)
SWEP.IronSightsAng = Vector(0.5, -0.051, 0)