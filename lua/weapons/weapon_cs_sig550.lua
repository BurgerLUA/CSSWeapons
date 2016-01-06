if CLIENT then
	killicon.AddFont( "weapon_cs_sig550", "csd", "o", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/sg550")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "5.56MM SIG550"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 4200
SWEP.MoveSpeed				= 210

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 4
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_snip_sg550.mdl"
SWEP.WorldModel				= "models/weapons/w_snip_sg550.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "ar2"

SWEP.Primary.Damage			= 70
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/sg550/sg550-1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip		= 90
SWEP.Primary.Delay			= 0.25 --1/(240/60)
SWEP.Primary.Ammo			= "AirboatGun"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul				= 1
SWEP.VelConeMul				= 3
SWEP.HeatMul			= 1

SWEP.HasScope 				= true
SWEP.ZoomAmount 			= 9
SWEP.HasCrosshair 			= false
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false

SWEP.HasIronSights 			= false
SWEP.EnableIronCross		= false
SWEP.HasGoodSights			= false
SWEP.IronSightTime			= 0.125
SWEP.IronSightsPos 			= Vector(-5.921, 0, 1.679)
SWEP.IronSightsAng 			= Vector(0, 0, 0)