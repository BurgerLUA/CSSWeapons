if CLIENT then
	killicon.AddFont( "weapon_cs_famas", "csd", "t", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/famas")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "FAMAS"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 2250
SWEP.CSSMoveSpeed				= 220

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 3
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_rif_famas.mdl"
SWEP.WorldModel				= "models/weapons/w_rif_famas.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "ar2"

SWEP.Primary.Damage			= 30
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("Weapon_FAMAS.Single")
SWEP.Primary.Cone			= 0.0033
SWEP.Primary.ClipSize		= 25
SWEP.Primary.SpareClip		= 90
SWEP.Primary.Delay			= 0.09 --1/(666/60)
SWEP.Primary.Ammo			= "css_556mm"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul				= 1
SWEP.SideRecoilMul			= 0.25
SWEP.VelConeMul				= 1
SWEP.HeatMul				= 1
SWEP.CoolMul				= 0.5

SWEP.HasScope 				= false
SWEP.ZoomAmount 			= 1
SWEP.HasCrosshair 			= true
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire			= true
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= true
SWEP.HasDownRecoil			= false

SWEP.BurstConeMul			= 1.5
SWEP.BurstHeatMul			= 0.5
SWEP.BurstRecoilMul			= 0.75
SWEP.BurstSpeedOverride		= 1.25

SWEP.HasIronSights 			= true
SWEP.EnableIronCross		= true
SWEP.HasGoodSights			= true
SWEP.IronSightTime			= 0.125
SWEP.IronSightsPos 			= Vector(-3, 0, 1)
SWEP.IronSightsAng 			= Vector(0, 0, 0)

SWEP.DamageFalloff			= 3000