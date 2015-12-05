if CLIENT then
	killicon.AddFont( "weapon_cs_tmp", "csd", "d", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/tmp")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "9MM TMP"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 1250
SWEP.MoveSpeed				= 250

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 2
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_smg_tmp.mdl"
SWEP.WorldModel				= "models/weapons/w_smg_tmp.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "smg"

SWEP.Primary.Damage			= 25
SWEP.Primary.NumShots 		= 1
SWEP.Primary.Sound			= Sound("weapons/tmp/tmp-1.wav")
SWEP.Primary.Cone			= .0275
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip		= 120
SWEP.Primary.Delay			= 1/(857/60)
SWEP.Primary.Ammo			= "Battery"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul				= 1
SWEP.VelConeMul				= 0.75

SWEP.HasScope 				= false
SWEP.ZoomAmount 			= 1
SWEP.HasCrosshair 			= true
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= true