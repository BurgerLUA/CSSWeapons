if CLIENT then
	killicon.AddFont( "weapon_cs_ak47", "csd", "b", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/ak47")
end


SWEP.PrintName			= "7.62MM AK47"
SWEP.Slot				= 3
SWEP.SlotPos			= 1
SWEP.VModelFlip 		= false

SWEP.HoldType				= "ar2"
SWEP.Base					= "weapon_cs_base"
SWEP.Spawnable				= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel 				= "models/weapons/cstrike/c_rif_ak47.mdl"
--SWEP.OtherModel			= "models/weapons/cstrike/c_rif_ak47.mdl"


SWEP.WorldModel				= "models/weapons/w_rif_ak47.mdl"

SWEP.Primary.Damage			= 35
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/ak47/ak47-1.wav")
SWEP.Primary.Cone			= .002
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip		= 90
SWEP.Primary.Delay			= 1/(600/60)
SWEP.Primary.Ammo			= "StriderMinigun"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul				= 1
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 1.5
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false
SWEP.HasIronSights 			= false
SWEP.IronSightTime			= 0.25

SWEP.IronSightsPos = Vector(-6.6, 0, 1.96)
SWEP.IronSightsAng = Vector(2.5, 0, 0.5)