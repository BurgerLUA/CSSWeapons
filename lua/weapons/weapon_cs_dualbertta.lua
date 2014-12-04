
if CLIENT then
	killicon.AddFont( "weapon_cs_dualbertta", "csd", "s", Color( 255, 80, 0, 255 ) )

	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/elites")
end

SWEP.PrintName			= "9MM DUAL BERTTA"
SWEP.Slot				= 1
SWEP.SlotPos			= 1
SWEP.VModelFlip 		= false

SWEP.HoldType				= "duel"
SWEP.Base					= "weapon_cs_base"
SWEP.Category				= "Counter-Strike"
SWEP.Spawnable				= true

SWEP.ViewModel 				= "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_elite.mdl"

SWEP.Primary.Damage			= 38
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/elite/elite-1.wav")
SWEP.Primary.Cone			= 0.005
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip	= 120
SWEP.Primary.Delay			= 1/(750/60)
SWEP.Primary.Ammo			= "Battery"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul 				= 1
SWEP.EnableScope 			= false
SWEP.ZoomAmount				= 0
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false 
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false
SWEP.HasIronSights 			= false
SWEP.IronSightTime			= 1

SWEP.IronSightsPos = Vector(0, 0, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)