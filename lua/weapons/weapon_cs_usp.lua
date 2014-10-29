
if CLIENT then
	SWEP.PrintName			= "CSS USP"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_usp", "csd", "y", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip 		= false
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/usp45")
end

SWEP.HoldType				= "revolver"
SWEP.Base					= "weapon_cs_base"
SWEP.Spawnable				= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel				= "models/weapons/cstrike/c_pist_usp.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_usp.mdl"

SWEP.Primary.Damage			= 32
SWEP.Primary.NumShots 		= 1
SWEP.Primary.Sound			= Sound("weapons/usp/usp_unsil-1.wav")
SWEP.Primary.Cone			= .01
SWEP.Primary.ClipSize		= 12
SWEP.Primary.SpareClip		= 100
SWEP.Primary.Delay			= 1/(400/60)
SWEP.Primary.Ammo			= "SniperPenetratedRound"
SWEP.Primary.Automatic 		= false

SWEP.Secondary.Sound 		= Sound("weapons/usp/usp1.wav")

SWEP.RecoilMul				= 0.5
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 0
SWEP.EnableCrosshair 		= true

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= true 
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false