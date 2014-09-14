
if CLIENT then
	SWEP.PrintName			= "HL2 FRAG"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_xm1014", "csd", "B", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "shotgun"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category			= "HL2"

SWEP.ViewModel			= "models/weapons/c_grenade.mdl"
SWEP.WorldModel			= "models/weapons/w_grenade.mdl"

SWEP.Primary.Damage			= 0
SWEP.Primary.NumShots		= 0
SWEP.Primary.Sound			= Sound("weapons/xm1014/xm1014-1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Delay			= 2
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = false

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "other" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 1
SWEP.EnableScope = false
SWEP.EnableCrosshair = true

function SWEP:PrimaryAttack()
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay + 2)
	self:SendWeaponAnim(ACT_VM_PULLBACK_HIGH)
	--self:TakePrimaryAmmo(1)
	timer.Simple(0.5, function() self:SendWeaponAnim(ACT_VM_THROW);self.Owner:SetAnimation(PLAYER_ATTACK1) end)
	timer.Simple(0.75, function() self:ThrowHEGrenade(1000) end)
	timer.Simple(2, function() self:SendWeaponAnim(ACT_VM_DRAW) end)
end

function SWEP:Think()

end

function SWEP:ThrowHEGrenade(force)
	if CLIENT then return end
	local EA =  self.Owner:EyeAngles()
	local pos = self.Owner:GetShootPos() + EA:Right() * 5 - EA:Up() * 4 + EA:Forward() * 8	

	local ent = ents.Create("ent_hl2_frag")		
		ent:SetPos(pos)
		ent:SetAngles(EA)
		ent:Spawn()
		ent:Activate()
		ent:SetOwner(self.Owner)
		ent:GetPhysicsObject():SetVelocity(self.Owner:GetVelocity() + EA:Forward() * force + EA:Up()*50)
		ent:GetPhysicsObject():AddAngleVelocity(Vector(1000,1000,1000))
		--ent.Damage = 100
		--ent.Radius = 100
end