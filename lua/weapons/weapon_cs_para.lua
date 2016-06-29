if CLIENT then
	killicon.AddFont( "weapon_cs_para", "csd", "z", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/m249")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "M249 PARA"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 5750
SWEP.CSSMoveSpeed				= 220

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 3
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_mach_m249para.mdl"
SWEP.WorldModel				= "models/weapons/w_mach_m249para.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "ar2"

SWEP.Primary.Damage			= 35
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("Weapon_M249.Single")
SWEP.Primary.Cone			= 0.0075
SWEP.Primary.ClipSize		= 100
SWEP.Primary.SpareClip		= 200
SWEP.Primary.Delay			= 0.08 --1/(750/60)
SWEP.Primary.Ammo			= "css_556mm"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul				= 1
SWEP.SideRecoilMul			= 0.25
SWEP.VelConeMul				= 1
SWEP.HeatMul				= 0.5
SWEP.CoolMul				= 1.5

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
SWEP.IronSightsPos 			= Vector(-6, 10, -2)
SWEP.IronSightsAng 			= Vector(2, 0, 0)

SWEP.DamageFalloff			= 2500