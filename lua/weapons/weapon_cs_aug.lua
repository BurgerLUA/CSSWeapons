if CLIENT then
	killicon.AddFont( "weapon_cs_aug", "csd", "e", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon		= surface.GetTextureID("vgui/gfx/vgui/aug")
end 

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "5.56MM AUG"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 3500
SWEP.MoveSpeed				= 221

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 3
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_rif_aug.mdl"
SWEP.WorldModel				= "models/weapons/w_rif_aug.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "smg"

SWEP.Primary.Damage			= 31
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/aug/aug-1.wav")
SWEP.Primary.Cone			= .01
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip		= 90
SWEP.Primary.Delay			= 1/(666/60)
SWEP.Primary.Ammo			= "AirboatGun"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul 				= 1
SWEP.HasScope 				= true
SWEP.ZoomAmount				= 2
SWEP.HasCrosshair 			= true
SWEP.HasCSSZoom 			= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= true