if CLIENT then
	killicon.AddFont( "weapon_cs_g3", "csd", "i", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/g3sg1")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "7.62MM G3SG1"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 5000
SWEP.MoveSpeed				= 210

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 3
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_snip_g3sg1.mdl"
SWEP.WorldModel				= "models/weapons/w_snip_g3sg1.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "ar2"

SWEP.Primary.Damage			= 80
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/g3sg1/g3sg1-1.wav")
SWEP.Primary.Cone			= 0.00125
SWEP.Primary.ClipSize		= 20
SWEP.Primary.SpareClip		= 90
SWEP.Primary.Delay			= 0.25 --1/(240/60)
SWEP.Primary.Ammo			= "StriderMinigun"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul 				= 1.25
SWEP.SideRecoilMul			= 1
SWEP.VelConeMul				= 5
SWEP.HeatMul				= 1

SWEP.HasScope 				= true
SWEP.ZoomAmount 			= 7
SWEP.HasCrosshair 			= false
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false 
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= true
SWEP.HasDownRecoil			= false

SWEP.HasIronSights 			= false
SWEP.EnableIronCross		= false
SWEP.HasGoodSights			= false
SWEP.IronSightTime			= 0.125
SWEP.IronSightsPos 			= Vector(-5.921, 0, 1.679)
SWEP.IronSightsAng 			= Vector(0, 0, 0)

SWEP.DamageFalloff			= 4000