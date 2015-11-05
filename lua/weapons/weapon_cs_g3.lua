if CLIENT then
	killicon.AddFont( "weapon_cs_g3", "csd", "i", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/g3sg1")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "7.62MM G3SG1"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Cost					= 5000
SWEP.MoveSpeed				= 210

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 4
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_snip_g3sg1.mdl"
SWEP.WorldModel				= "models/weapons/w_snip_g3sg1.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "ar2"

SWEP.Primary.Damage			= 79
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/g3sg1/g3sg1-1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= 20
SWEP.Primary.SpareClip		= 90
SWEP.Primary.Delay			= 1/(240/60)
SWEP.Primary.Ammo			= "StriderMinigun"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul 				= 1
SWEP.HasScope 				= true
SWEP.ZoomAmount 			= 8
SWEP.HasCrosshair 			= false
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false 
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= true