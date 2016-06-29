if CLIENT then
	killicon.AddFont( "weapon_cs_usp", "csd", "y", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/usp45")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "USP"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Secondary"

SWEP.Cost					= 500
SWEP.CSSMoveSpeed				= 250

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 1
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_pist_usp.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_usp.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "revolver"

SWEP.Primary.Damage			= 34
SWEP.Primary.NumShots 		= 1
SWEP.Primary.Sound			= Sound("Weapon_USP.Single")
SWEP.Primary.Cone			= 0.004
SWEP.Primary.ClipSize		= 12
SWEP.Primary.SpareClip		= 100
SWEP.Primary.Delay			= 0.15 --1/(400/60)
SWEP.Primary.Ammo			= "css_45acp"
SWEP.Primary.Automatic 		= false

SWEP.WorldModel1			= "models/weapons/w_pist_usp.mdl"
SWEP.WorldModel2 			= "models/weapons/w_pist_usp_silencer.mdl"
SWEP.Secondary.Sound 		= Sound("Weapon_USP.SilencedShot")

SWEP.RecoilMul				= 1
SWEP.SideRecoilMul			= 0.25
SWEP.VelConeMul				= 1
SWEP.HeatMul				= 1
SWEP.CoolMul				= 1

SWEP.HasScope 				= false
SWEP.ZoomAmount 			= 0.75
SWEP.HasCrosshair 			= true
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= true
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false
SWEP.HasDownRecoil			= false
SWEP.HasDryFire				= true

SWEP.HasIronSights 			= true
SWEP.EnableIronCross		= true
SWEP.HasGoodSights			= true
SWEP.IronSightTime			= 0.125
SWEP.IronSightsPos 			= Vector(-5, 0, 2)
SWEP.IronSightsAng 			= Vector(0, 1, 0)

SWEP.DamageFalloff			= 2000