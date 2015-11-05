if CLIENT then
	killicon.AddFont( "weapon_cs_p228", "csd", "y", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/p228")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= ".357SIG P228"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Secondary"

SWEP.Cost					= 600
SWEP.MoveSpeed				= 250

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 1
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_pist_p228.mdl"
SWEP.WorldModel				= "models/weapons/w_pist_p228.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "revolver"

SWEP.Primary.Damage			= 39
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/p228/p228-1.wav")
SWEP.Primary.Cone			= .0075
SWEP.Primary.ClipSize		= 13
SWEP.Primary.SpareClip		= 52
SWEP.Primary.Delay			= 1/(400/60)
SWEP.Primary.Ammo			= "GaussEnergy"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul				= 1
SWEP.HasScope 				= false
SWEP.ZoomAmount 			= 1
SWEP.HasCrosshair 			= true
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false