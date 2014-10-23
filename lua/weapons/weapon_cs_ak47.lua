
if CLIENT then
	SWEP.PrintName			= "CSS AK47"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_ak47", "csd", "b", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip 		= false
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/ak47")
end

SWEP.HoldType				= "ar2"
SWEP.Base					= "weapon_cs_base"
SWEP.Spawnable				= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel				= "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel				= "models/weapons/w_rif_ak47.mdl"

SWEP.Primary.Damage			= 35
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/ak47/ak47-1.wav")
SWEP.Primary.Cone			= .002
SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 90
SWEP.Primary.Delay			= .11
SWEP.Primary.Ammo			= "StriderMinigun"
SWEP.Primary.Automatic 		= true

SWEP.RecoilMul				= 0.6
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 0
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false