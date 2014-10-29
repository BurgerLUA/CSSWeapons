
if CLIENT then
	SWEP.PrintName			= "CSS GLOCK"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_glock", "csd", "c", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip 		= false
	SWEP.WepSelectIcon		= surface.GetTextureID("vgui/gfx/vgui/glock18")
end

SWEP.HoldType				= "revolver"
SWEP.Base					= "weapon_cs_base"
SWEP.Category				= "Counter-Strike"
SWEP.Spawnable				= true

SWEP.ViewModel				= "models/weapons/cstrike/c_pist_glock18.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_glock18.mdl"

SWEP.Primary.Damage			= 28
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/glock/glock18-1.wav")
SWEP.Primary.Cone			= 0.015
SWEP.Primary.ClipSize		= 20
SWEP.Primary.SpareClip	= 120
SWEP.Primary.Delay			= 1/(400/60)
SWEP.Primary.Ammo			= "Battery"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul				= 0
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 0
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= true
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false