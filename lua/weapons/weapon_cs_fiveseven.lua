if CLIENT then
	killicon.AddFont( "weapon_cs_fiveseven", "csd", "u", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/fiveseven")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "FIVESEVEN"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Secondary"

SWEP.Cost					= 750
SWEP.CSSMoveSpeed				= 250

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 1
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_pist_fiveseven.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_fiveseven.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "revolver"

SWEP.Primary.Damage			= 25
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("Weapon_FiveSeven.Single")
SWEP.Primary.Cone			= 0.006
SWEP.Primary.ClipSize		= 20
SWEP.Primary.SpareClip		= 100
SWEP.Primary.Delay			= 0.15 --1/(400/60)
SWEP.Primary.Ammo			= "css_57mm"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul				= 1
SWEP.SideRecoilMul			= 0.25
SWEP.VelConeMul				= 0.5
SWEP.HeatMul				= 1
SWEP.CoolMul				= 1

SWEP.HasScope 				= false
SWEP.ZoomAmount 			= 0.75
SWEP.HasCrosshair 			= true
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false 
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false
SWEP.HasDownRecoil			= false

SWEP.HasIronSights 			= true
SWEP.EnableIronCross		= true
SWEP.HasGoodSights			= true
SWEP.IronSightTime			= 0.125
SWEP.IronSightsPos 			= Vector(-5.921, 0, 1.679)
SWEP.IronSightsAng 			= Vector(0, 0, 0)

SWEP.DamageFalloff			= 2000