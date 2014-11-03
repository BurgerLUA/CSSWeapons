
if CLIENT then
	SWEP.PrintName			= "5.7MM FIVESEVEN"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_fiveseven", "csd", "u", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip 		= false
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/fiveseven")
end

SWEP.HoldType				= "revolver"
SWEP.Base					= "weapon_cs_base"
SWEP.Category				= "Counter-Strike"
SWEP.Spawnable				= true

SWEP.ViewModel				= "models/weapons/cstrike/c_pist_fiveseven.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_fiveseven.mdl"

SWEP.Primary.Damage			= 24
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/fiveseven/fiveseven-1.wav")
SWEP.Primary.Cone			= 0.01
SWEP.Primary.ClipSize		= 20
SWEP.Primary.SpareClip	= 100
SWEP.Primary.Delay			= 1/(400/60)
SWEP.Primary.Ammo			= "AlyxGun"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul 				= 0.5
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 0
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false 
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false