if CLIENT then
	killicon.AddFont( "weapon_cs_awp", "csd", "r", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/awp")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= ".338 AWP"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 4750
SWEP.MoveSpeed				= 210

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 4
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_snip_awp.mdl"
SWEP.WorldModel				= "models/weapons/w_snip_awp.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "ar2"

SWEP.Primary.Damage			= 115
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/awp/awp1.wav")
SWEP.Primary.Cone			= 0.08080
SWEP.Primary.ClipSize		= 10
SWEP.Primary.SpareClip		= 30
SWEP.Primary.Delay			= 1.5 --1/(41/60)
SWEP.Primary.Ammo			= "SniperRound"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul				= 2
SWEP.VelConeMul				= 3

SWEP.HasScope 				= true
SWEP.ZoomAmount 			= 9
SWEP.HasCrosshair 			= false
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= true
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= true

SWEP.HasIronSights 			= false
SWEP.EnableIronCross		= false
SWEP.HasGoodSights			= false
SWEP.IronSightTime			= 0
SWEP.IronSightsPos 			= Vector(0, 0, 0)
SWEP.IronSightsAng 			= Vector(0, 0, 0)
