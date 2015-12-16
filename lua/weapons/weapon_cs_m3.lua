if CLIENT then
	killicon.AddFont( "weapon_cs_m3", "csd", "k", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/m3")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "12 GAUGE M3SUPER90"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 1700
SWEP.MoveSpeed				= 220

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 2
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_shot_m3super90.mdl"
SWEP.WorldModel				= "models/weapons/w_shot_m3super90.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "shotgun"

SWEP.Primary.Damage			= 120/12 --Not CSS Damage but the issue is that this pack doesn't use range
SWEP.Primary.NumShots		= 12
SWEP.Primary.Sound			= Sound("weapons/m3/m3-1.wav")
SWEP.Primary.Cone			= (0.04000 + 0.01000)*1.3
SWEP.Primary.ClipSize		= 8
SWEP.Primary.SpareClip		= 32
SWEP.Primary.Delay			= 0.88 --1/(68/60)
SWEP.Primary.Ammo			= "Buckshot"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul				= 1
SWEP.VelConeMul				= 1.5

SWEP.HasScope 				= false
SWEP.ZoomAmount 			= 0.25
SWEP.HasCrosshair 			= true
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= true
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false

SWEP.HasIronSights 			= true
SWEP.EnableIronCross		= true
SWEP.HasGoodSights			= true
SWEP.IronSightTime			= 0.25
SWEP.IronSightsPos 			= Vector(-6, 0, 1.5)
SWEP.IronSightsAng 			= Vector(0, 0, 0)