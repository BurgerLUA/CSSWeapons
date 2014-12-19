if CLIENT then
	killicon.AddFont( "weapon_cs_scout", "csd", "n", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/scout")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "7.62MM SCOUT"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Primary"

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 4
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_snip_scout.mdl"
SWEP.WorldModel				= "models/weapons/w_snip_scout.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "ar2"

SWEP.Primary.Damage			= 74
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/scout/scout_fire-1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= 10
SWEP.Primary.SpareClip		= 90
SWEP.Primary.Delay			= 1/(48/60)
SWEP.Primary.Ammo			= "StriderMinigun"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul				= 0.75
SWEP.HasScope 				= true
SWEP.ZoomAmount 			= 12
SWEP.HasCrosshair 			= false
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= true
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= true
SWEP.HasSideRecoil			= false