if CLIENT then
	killicon.AddFont( "weapon_cs_m4", "csd", "w", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/m4a1")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "5.56MM M4A1"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 3100
SWEP.MoveSpeed				= 230

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 3
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_rif_m4a1.mdl"
SWEP.WorldModel				= "models/weapons/w_rif_m4a1.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "ar2"

SWEP.Primary.Damage			= 33
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/m4a1/m4a1_unsil-1.wav")
SWEP.Primary.Cone			= 0.0055
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip		= 90
SWEP.Primary.Delay			= 0.09 --1/(666/60)
SWEP.Primary.Ammo			= "AirboatGun"
SWEP.Primary.Automatic 		= true

SWEP.WorldModel1			= "models/weapons/w_rif_m4a1.mdl"
SWEP.WorldModel2 			= "models/weapons/w_rif_m4a1_silencer.mdl"
SWEP.Secondary.Sound		= Sound("weapons/m4a1/m4a1-1.wav")

SWEP.RecoilMul				= 0.75
SWEP.SideRecoilMul			= 0.5
SWEP.VelConeMul				= 1.5
SWEP.HeatMul				= 1

SWEP.HasScope 				= false
SWEP.ZoomAmount 			= 1
SWEP.HasCrosshair 			= true
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= true
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= true
SWEP.HasDownRecoil			= false

SWEP.HasIronSights 			= true
SWEP.EnableIronCross		= true
SWEP.HasGoodSights			= true
SWEP.IronSightTime			= 0.125
SWEP.IronSightsPos 			= Vector(-3, 10, 0)
SWEP.IronSightsAng 			= Vector(1.25, 1, 0)

SWEP.DamageFalloff			= 1500