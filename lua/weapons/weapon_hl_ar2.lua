
if CLIENT then
	SWEP.PrintName			= "HL2 AR2"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_xm1014", "csd", "B", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "ar2"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category			= "HL2"

SWEP.ViewModel			= "models/weapons/c_irifle.mdl"
SWEP.WorldModel			= "models/weapons/w_irifle.mdl"

SWEP.Primary.Damage			= 8
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/ar2/fire1.wav")
SWEP.Primary.Cone			= .01
SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Delay			= 0.1
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = true

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "sniper" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 4
SWEP.EnableScope = true
SWEP.EnableCrosshair = true

function SWEP:SecondaryAttack()
	if !self:CanPrimaryAttack() then return end
	self:TakePrimaryAmmo(self:Clip1())
	self:ThrowCombineBall(self:Clip1()*self.Primary.Damage)
end


function SWEP:ThrowCombineBall(damage)
	if CLIENT then return end
	local EA =  self.Owner:EyeAngles()
	local pos = self.Owner:GetShootPos() + EA:Right() * 5 - EA:Up() * 4 + EA:Forward()	

	local ent = ents.Create("ent_hl2_ar2ball")		
		ent:SetPos(pos)
		ent:SetAngles(EA)
		ent:Spawn()
		ent:Activate()
		ent:SetOwner(self.Owner)
		ent:GetPhysicsObject():SetVelocity(self.Owner:GetVelocity() + EA:Forward() * 10000 + EA:Up()*50)
		--ent:GetPhysicsObject():AddAngleVelocity(Vector(1000,1000,1000))
		ent.Damage = damage

end