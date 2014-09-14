
if CLIENT then
	SWEP.PrintName			= "CSS HE GRENADE"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 3
	killicon.AddFont( "weapon_cs_he", "csd", "O", Color( 255, 80, 0, 255 ) )
	killicon.AddFont( "ent_cs_he", "csd", "O", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = true
end

SWEP.HoldType			= "melee"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel			= "models/weapons/v_eq_fraggrenade.mdl"
SWEP.WorldModel			= "models/weapons/w_eq_fraggrenade.mdl"

SWEP.Primary.Damage			= 0
SWEP.Primary.NumShots		= 0
SWEP.Primary.Sound			= Sound("weapons/ak47/ak47-1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Delay			= 1
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = false

SWEP.CoolDown = 0
SWEP.RecoilMul	= 0
SWEP.Type = "throwable" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 1
SWEP.EnableScope = false
SWEP.EnableCrosshair = false

function SWEP:PrimaryAttack()
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay + 2)
	self:SendWeaponAnim(ACT_VM_PULLPIN)
	--self:TakePrimaryAmmo(1)
	timer.Simple(0.85, function() self:SendWeaponAnim(ACT_VM_THROW);self.Owner:SetAnimation(PLAYER_ATTACK1) end)
	timer.Simple(1, function() self:ThrowGrenade(1000) end)
	timer.Simple(2, function() self:SendWeaponAnim(ACT_VM_DRAW) end)
end

function SWEP:Think()

end