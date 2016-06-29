if CLIENT then
	killicon.AddFont( "weapon_cs_ump", "csd", "q", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon = surface.GetTextureID("vgui/gfx/vgui/ump45")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "UMP"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 1700
SWEP.CSSMoveSpeed				= 250

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 2
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_smg_ump45.mdl"
SWEP.WorldModel				= "models/weapons/w_smg_ump45.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "smg"

SWEP.Primary.Damage			= 30
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("Weapon_UMP45.Single")
SWEP.Primary.Cone			= 0.004
SWEP.Primary.ClipSize		= 25
SWEP.Primary.SpareClip		= 100
SWEP.Primary.Delay			= 0.09 --1/(666/60)
SWEP.Primary.Ammo			= "css_45acp"
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
SWEP.HasDownRecoil			= false

SWEP.HasIronSights 			= true
SWEP.EnableIronCross		= true
SWEP.HasGoodSights			= true
SWEP.IronSightTime			= 0.125
SWEP.IronSightsPos 			= Vector(-5.921, 0, 1.679)
SWEP.IronSightsAng 			= Vector(0, 0, 0)

SWEP.DamageFalloff			= 1000