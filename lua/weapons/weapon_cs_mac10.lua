if CLIENT then
	killicon.AddFont( "weapon_cs_mac10", "csd", "l", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/mac10")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "MAC-10"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 1400
SWEP.CSSMoveSpeed				= 250

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 2
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_smg_mac10.mdl"
SWEP.WorldModel				= "models/weapons/w_smg_mac10.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "pistol"

SWEP.Primary.Damage			= 29
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("Weapon_MAC10.Single")
SWEP.Primary.Cone			= 0.02
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip		= 100
SWEP.Primary.Delay			= 0.075 --1/(800/60)
SWEP.Primary.Ammo			= "css_45acp"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul				= 1
SWEP.SideRecoilMul			= 0.25
SWEP.VelConeMul				= 0.75
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
SWEP.IronSightsPos 			= Vector(-7, 0, -1)
SWEP.IronSightsAng 			= Vector(6, -2, 0)

SWEP.DamageFalloff			= 500