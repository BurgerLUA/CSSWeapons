if CLIENT then
	killicon.AddFont( "weapon_cs_scout", "csd", "n", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/scout")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "SCOUT SNIPER"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 2750
SWEP.CSSMoveSpeed				= 260

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 3
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_snip_scout.mdl"
SWEP.WorldModel				= "models/weapons/w_snip_scout.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "ar2"

SWEP.Primary.Damage			= 75
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("Weapon_Scout.Single")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= 10
SWEP.Primary.SpareClip		= 90
SWEP.Primary.Delay			= 1.25 --1/(48/60)
SWEP.Primary.Ammo			= "css_762mm"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul				= 0.1
SWEP.SideRecoilMul			= 1
SWEP.VelConeMul				= 0
SWEP.HeatMul				= 1
SWEP.CoolMul				= 1

SWEP.HasScope 				= true
SWEP.ZoomAmount 			= 9
SWEP.HasCrosshair 			= false
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= true
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false
SWEP.HasDownRecoil			= false

SWEP.HasIronSights 			= false
SWEP.EnableIronCross		= false
SWEP.HasGoodSights			= false
SWEP.IronSightTime			= 0.25
SWEP.IronSightsPos 			= Vector(-6, -5, 3)
SWEP.IronSightsAng 			= Vector(0, 0, 0)

SWEP.DamageFalloff			= 5000

SWEP.ZoomDelay				= 0.25

SWEP.HasIdle				= false