if CLIENT then
	killicon.AddFont( "weapon_cs_ump", "csd", "q", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon = surface.GetTextureID("vgui/gfx/vgui/ump45")
end

SWEP.PrintName			= ".45 UMP"
SWEP.Slot				= 2
SWEP.SlotPos			= 1
SWEP.VModelFlip = false

SWEP.HoldType				= "smg"
SWEP.Base					= "weapon_cs_base"
SWEP.Spawnable				= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel 				= "models/weapons/cstrike/c_smg_ump45.mdl"
SWEP.WorldModel				= "models/weapons/w_smg_ump45.mdl"

SWEP.Primary.Damage			= 29
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/ump45/ump45-1.wav")
SWEP.Primary.Cone			= .03
SWEP.Primary.ClipSize		= 25
SWEP.Primary.SpareClip		= 100
SWEP.Primary.Delay			= 1/(666/60)
SWEP.Primary.Ammo			= "SniperPenetratedRound"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul				= 0.85
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