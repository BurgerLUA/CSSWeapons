
if CLIENT then
	killicon.AddFont( "weapon_cs_mac10", "csd", "l", Color( 255, 80, 0, 255 ) )

	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/mac10")
end

SWEP.PrintName			= ".45ACP MAC10"
SWEP.Slot				= 2
SWEP.SlotPos			= 1
SWEP.ViewModelFlip 		= false

SWEP.HoldType				= "smg"
SWEP.Base					= "weapon_cs_base"
SWEP.Category				= "Counter-Strike"
SWEP.Spawnable				= true

SWEP.ViewModel				= "models/weapons/cstrike/c_smg_mac10.mdl"
SWEP.WorldModel				= "models/weapons/w_smg_mac10.mdl"

SWEP.Primary.Damage			= 28
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/mac10/mac10-1.wav")
SWEP.Primary.Cone			= 0.03
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip	= 100
SWEP.Primary.Delay			= 0.07
SWEP.Primary.Ammo			= "SniperPenetratedRound"
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
SWEP.HasSideRecoil			= true
SWEP.HasIronSights 			= false
SWEP.IronSightTime			= 1

SWEP.IronSightsPos = Vector(0, 0, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)