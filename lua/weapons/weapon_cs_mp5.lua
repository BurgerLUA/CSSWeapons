if CLIENT then
	killicon.AddFont( "weapon_cs_mp5", "csd", "x", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/mp5")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "9MM MP5"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 1500
SWEP.MoveSpeed				= 250

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 2
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_smg_mp5.mdl"
SWEP.WorldModel				= "models/weapons/w_smg_mp5.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "smg"

SWEP.Primary.Damage			= 26
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/mp5navy/mp5-1.wav")
SWEP.Primary.Cone			= 0.01718
SWEP.Primary.ClipSize		= 30
SWEP.Primary.SpareClip		= 120
SWEP.Primary.Delay			= 0.08 --1/(750/60)
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