
if CLIENT then
	SWEP.PrintName			= "CSS G3"
	SWEP.Slot				= 4
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_g3", "csd", "i", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip 		= false
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/g3sg1")
end

SWEP.HoldType				= "ar2"
SWEP.Base					= "weapon_cs_base"
SWEP.Category				= "Counter-Strike"
SWEP.Spawnable				= true

SWEP.ViewModel				= "models/weapons/cstrike/c_snip_g3sg1.mdl"
SWEP.WorldModel				= "models/weapons/w_snip_g3sg1.mdl"

SWEP.Primary.Damage			= 79
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/g3sg1/g3sg1-1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 90
SWEP.Primary.Delay			= 1/(240/60)
SWEP.Primary.Ammo			= "StriderMinigun"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul 				= 0.6
SWEP.EnableScope 			= true
SWEP.ZoomAmount 			= 8
SWEP.EnableCrosshair 		= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false 
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false