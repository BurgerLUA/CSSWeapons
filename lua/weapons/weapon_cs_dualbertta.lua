if CLIENT then
	killicon.AddFont( "weapon_cs_dualbertta", "csd", "s", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/elites")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "DUAL BERETTAS"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Secondary"

SWEP.Cost					= 800
SWEP.CSSMoveSpeed				= 250

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 1
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_elite.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "duel"

SWEP.Primary.Damage			= 45
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("Weapon_ELITE.Single")
SWEP.Primary.Cone			= 0.0075
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip		= 120
SWEP.Primary.Delay			= 0.12 --1/(750/60)
SWEP.Primary.Ammo			= "css_9mm"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul				= 1
SWEP.SideRecoilMul			= 0.25
SWEP.VelConeMul				= 1
SWEP.HeatMul				= 1
SWEP.CoolMul				= 1

SWEP.HasScope 				= false
SWEP.ZoomAmount				= 0.5
SWEP.HasCrosshair 			= true
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false 
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false
SWEP.HasDownRecoil			= false
SWEP.HasDual				= true

SWEP.HasIronSights 			= true
SWEP.EnableIronCross		= true
SWEP.HasGoodSights			= true
SWEP.IronSightTime			= 0.125
SWEP.IronSightsPos 			= Vector(0, 20, 3)
SWEP.IronSightsAng 			= Vector(0, 0, 0)

SWEP.DamageFalloff			= 1000

SWEP.GetMagModel			= "models/weapons/unloaded/pist_fiveseven_mag.mdl"

SWEP.EnableTracer			= false
