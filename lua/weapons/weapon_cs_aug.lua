if CLIENT then
	killicon.AddFont( "weapon_cs_aug", "csd", "e", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon		= surface.GetTextureID("vgui/gfx/vgui/aug")
end 

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "AUG"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 3500
SWEP.CSSMoveSpeed				= 221

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 3
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_rif_aug.mdl"
SWEP.WorldModel				= "models/weapons/w_rif_aug.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "smg"

SWEP.Primary.Damage			= 32
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("Weapon_AUG.Single")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip		= 90
SWEP.Primary.Delay			= 0.09
SWEP.Primary.Ammo			= "css_556mm"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul				= 1
SWEP.SideRecoilMul			= 0.5
SWEP.VelConeMul				= 1.25
SWEP.HeatMul				= 1.125
SWEP.CoolMul				= 1

SWEP.HasScope 				= true
SWEP.ZoomAmount				= 3
SWEP.HasCrosshair 			= true
SWEP.HasCSSZoom 			= true

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
SWEP.IronSightTime			= 0.25
SWEP.IronSightsPos 			= Vector(-7, -5, 2)
SWEP.IronSightsAng 			= Vector(0, 0, -30)

SWEP.DamageFalloff			= 4000

SWEP.ZoomDelay				= 0.25