if CLIENT then
	killicon.AddFont( "weapon_cs_sig552", "csd", "A", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/sg552")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "SIG552"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 3500
SWEP.CSSMoveSpeed				= 230

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 3
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_rif_sg552.mdl"
SWEP.WorldModel				= "models/weapons/w_rif_sg552.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "ar2"

SWEP.Primary.Damage			= 33
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("Weapon_SG552.Single")
SWEP.Primary.Cone			= 0.002
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip		= 90
SWEP.Primary.Delay			= 0.09 --1/(666/60)
SWEP.Primary.Ammo			= "css_556mm"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul				= 1
SWEP.SideRecoilMul			= 0.5
SWEP.VelConeMul				= 1.25
SWEP.HeatMul				= 1.125
SWEP.CoolMul				= 0.75

SWEP.HasScope 				= true
SWEP.ZoomAmount 			= 3
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
SWEP.IronSightTime			= 0.125
SWEP.IronSightsPos 			= Vector(-8, -10, -1)
SWEP.IronSightsAng 			= Vector(0, 0, 0)

SWEP.DamageFalloff			= 2000