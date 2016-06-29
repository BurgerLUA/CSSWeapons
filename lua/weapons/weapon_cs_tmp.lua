if CLIENT then
	killicon.AddFont( "weapon_cs_tmp", "csd", "d", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/tmp")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "TMP"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 1250
SWEP.CSSMoveSpeed				= 250

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 2
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_smg_tmp.mdl"
SWEP.WorldModel				= "models/weapons/w_smg_tmp.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "smg"

SWEP.Primary.Damage			= 26
SWEP.Primary.NumShots 		= 1
SWEP.Primary.Sound			= Sound("Weapon_TMP.Single")
SWEP.Primary.Cone			= 0.024
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip		= 120
SWEP.Primary.Delay			= 0.07 --1/(857/60)
SWEP.Primary.Ammo			= "css_9mm"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul				= 1
SWEP.SideRecoilMul			= 0.25
SWEP.VelConeMul				= 1
SWEP.HeatMul				= 1
SWEP.CoolMul				= 1

SWEP.HasScope 				= false
SWEP.ZoomAmount 			= 0.5
SWEP.HasCrosshair 			= true
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= true
SWEP.HasDownRecoil			= true

SWEP.HasIronSights 			= true
SWEP.EnableIronCross		= true
SWEP.HasGoodSights			= true
SWEP.IronSightTime			= 0.125
SWEP.IronSightsPos 			= Vector(-5.921, 0, 1.679)
SWEP.IronSightsAng 			= Vector(0, 0, 0)

SWEP.DamageFalloff			= 500