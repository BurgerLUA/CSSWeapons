
if CLIENT then
	SWEP.PrintName			= "CSS AWP"
	SWEP.Slot				= 4
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_awp", "csd", "r", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip 		= false
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/awp")
end

SWEP.HoldType				= "ar2"
SWEP.Base					= "weapon_cs_base"
SWEP.Category				= "Counter-Strike"
SWEP.Spawnable				= true

SWEP.ViewModel				= "models/weapons/cstrike/c_snip_awp.mdl"
SWEP.WorldModel				= "models/weapons/w_snip_awp.mdl"

SWEP.Primary.Damage			= 114
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/awp/awp1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Delay			= 1/(41/60)
SWEP.Primary.Ammo			= "SniperRound"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul				= 1
SWEP.EnableScope 			= true
SWEP.ZoomAmount 			= 12
SWEP.EnableCrosshair 		= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= true
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= true
SWEP.HasSideRecoil			= false