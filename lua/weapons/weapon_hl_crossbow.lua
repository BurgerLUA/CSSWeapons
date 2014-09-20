
if CLIENT then
	SWEP.PrintName			= "HL2 Crossbow"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_hl_crossbow", "HL2MPTypeDeath", "1", Color( 255, 80, 0, 255 ) )
	killicon.AddFont( "ent_hl2_bolt", "HL2MPTypeDeath", "1", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "crossbow"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category			= "HL2"

SWEP.ViewModel			= "models/weapons/c_crossbow.mdl"
SWEP.WorldModel			= "models/weapons/v_crossbow.mdl"

SWEP.Primary.Damage			= 0
SWEP.Primary.NumShots		= 0
SWEP.Primary.Sound			= Sound("weapons/crossbow/bolt_fly4.wav")
SWEP.Primary.Cone			= .1
SWEP.Primary.ClipSize		= 1
SWEP.Primary.DefaultClip	= 1
SWEP.Primary.Delay			= 2
SWEP.Primary.Ammo			= "xbowbolt"
SWEP.Primary.Automatic = false

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "sniper" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 5
SWEP.EnableScope = true
SWEP.EnableCrosshair = false

function SWEP:PrimaryAttack()
	if !self:CanPrimaryAttack() then return end
	self:ThrowBolt(95)
	self:TakePrimaryAmmo(1)
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)	
	self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)	
	self:EmitSound(self.Primary.Sound)
	self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	timer.Simple(0.25,function() 
		--if self:GetNWBool("zoomed",false) == false then
			self:Reload()
		--end
	end)
end

function SWEP:ThrowBolt(damage)
	if CLIENT then return end
	self.Owner:ViewPunch(Angle(-2,0,0))
	local EA =  self.Owner:EyeAngles()
	local pos = self.Owner:GetShootPos() + EA:Right() * 5 - EA:Up() * 4 + EA:Forward()*25
	
	local ent = ents.Create("ent_hl2_bolt")	
		ent:SetPos(pos)
		ent:SetAngles(EA)
		ent:SetNWInt("damage",damage)
		ent:SetOwner(self.Owner)
		ent:Spawn()
		ent:Activate()
		ent:SetOwner(self.Owner)
		ent:GetPhysicsObject():SetVelocity(EA:Forward() * 100000 + EA:Up()*0)
		--ent:GetPhysicsObject():AddAngleVelocity(Vector(100000,100000,100000))
end