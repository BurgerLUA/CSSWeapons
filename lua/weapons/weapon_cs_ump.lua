
if CLIENT then
	SWEP.PrintName			= "CSS UMP"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_ump", "csd", "q", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
	SWEP.WepSelectIcon = surface.GetTextureID("vgui/gfx/vgui/ump45")
end

SWEP.HoldType				= "smg"
SWEP.Base					= "weapon_cs_base"
SWEP.Spawnable				= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel				= "models/weapons/cstrike/c_smg_ump45.mdl"
SWEP.WorldModel				= "models/weapons/w_smg_ump45.mdl"

SWEP.Primary.Damage			= 29
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/ump45/ump45-1.wav")
SWEP.Primary.Cone			= .03
SWEP.Primary.ClipSize		= 25
SWEP.Primary.DefaultClip	= 100
SWEP.Primary.Delay			= 1/(666/60)
SWEP.Primary.Ammo			= "SniperPenetratedRound"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul				= 0.5
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 0
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false