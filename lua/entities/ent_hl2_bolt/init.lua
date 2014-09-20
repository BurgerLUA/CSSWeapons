AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()

	self:SetModel("models/crossbow_bolt.mdl") 
	
	local r = 3
    self:PhysicsInitSphere(r)
    self:SetCollisionBounds(Vector(-r,-r,-r),Vector(r,r,r))
	
	
	
	
	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:Wake()
		phys:SetBuoyancyRatio(0)
		phys:EnableDrag(false)
		phys:EnableGravity(false)
		phys:AddGameFlag(FVPHYSICS_NO_IMPACT_DMG)
		phys:AddGameFlag(FVPHYSICS_NO_NPC_IMPACT_DMG)
	end
	self.SpawnTime = CurTime()
	ParticleEffectAttach("drg_pipe_smoke", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	--ParticleEffectAttach("critical_rocket_redsparks", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	
	self.Damage = self:GetNWInt("damage")
	self.First = true
	
end

function ENT:PhysicsCollide(data, physobj)

	if data.HitEntity:Health() > 0 then
		local dmginfo = DamageInfo()
		dmginfo:SetDamage( self.Damage )
		dmginfo:SetDamageType( DMG_SONIC )
		dmginfo:SetAttacker( self.Owner )
		dmginfo:SetInflictor( self )
		dmginfo:SetDamageForce( data.OurOldVelocity*10 )
		data.HitEntity:TakeDamageInfo( dmginfo )
		data.HitEntity:EmitSound("weapons/crossbow/bolt_skewer1.wav",100,100)
		self:Remove()
	elseif data.HitEntity:IsWorld() then
		local effectdata = EffectData()
		effectdata:SetStart(data.HitPos)
		effectdata:SetOrigin(data.HitPos)
		effectdata:SetNormal(data.HitNormal)
		util.Effect("BoltImpact",effectdata)
		util.Effect("cball_explode",effectdata)
		self:EmitSound("weapons/crossbow/hit1.wav",100,100)
		self:Remove()
	else
		self:Remove()
	end

end



function ENT:Think()
	
	if self.First == true then
		ParticleEffectAttach("drg_pipe_smoke", PATTACH_ABSORIGIN_FOLLOW, self, 0)
		--ParticleEffectAttach("rockettrail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
		self.First = false
	end

	self:GetPhysicsObject():AddVelocity(Vector(0,0,-10))
end