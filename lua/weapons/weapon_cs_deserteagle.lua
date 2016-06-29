if CLIENT then
	killicon.AddFont( "weapon_cs_deserteagle", "csd", "f", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/deserteagle")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "DESERT EAGLE"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Secondary"

SWEP.Cost					= 650
SWEP.CSSMoveSpeed				= 250

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 1
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_pist_deagle.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_deagle.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "revolver"

SWEP.Primary.Damage			= 54
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("Weapon_DEagle.Single")
SWEP.Primary.Cone			= 0.003
SWEP.Primary.ClipSize		= 7
SWEP.Primary.SpareClip		= 35
SWEP.Primary.Delay			= 0.225
SWEP.Primary.Ammo			= "css_50ae"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul				= 2
SWEP.SideRecoilMul			= 1
SWEP.VelConeMul				= 1
SWEP.HeatMul				= 3
SWEP.CoolMul				= 0.75

SWEP.HasScope 				= false
SWEP.ZoomAmount 			= 0.75
SWEP.HasCrosshair			= true
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= true
SWEP.HasDownRecoil			= false

SWEP.HasIronSights 			= true
SWEP.EnableIronCross		= true
SWEP.HasGoodSights			= true
SWEP.IronSightTime			= 0.125
SWEP.IronSightsPos 			= Vector(-6.3, 0, 1)
SWEP.IronSightsAng 			= Vector(0, 0, 0)

SWEP.DamageFalloff			= 3000
