AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()

	self:SetModel("models/Items/AR2_Grenade.mdl") 
	self:SetRenderMode(RENDERMODE_NONE)

	local r = 10
    self:PhysicsInitSphere(r)
    self:SetCollisionBounds(Vector(-r,-r,-r),Vector(r,r,r))
	
	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:Wake()
		phys:SetBuoyancyRatio(0)
		phys:EnableGravity(false)
		phys:EnableDrag(false)
	end
	
	local ball = ents.Create("prop_effect")
	ball:SetPos(self:GetPos())
	ball:SetAngles(self:GetAngles())
	ball:SetParent(self)
	ball:SetModel("models/effects/combineball.mdl")
	ball:Spawn()
	ball:Activate()
	
	sound = CreateSound(self,"weapons/physcannon/energy_sing_loop4.wav")
	sound:Play()
	
	
	
	--[[
	local detail = ents.Create("prop_combine_ball")
	detail:SetPos(self:GetPos())
	detail:SetParent(self)
	detail:SetOwner(self.Owner)
	detail:SetSaveValue('m_flRadius',12)
	detail:SetSaveValue("m_bEmit",false)
	detail:SetSaveValue("m_bheld",true)
	detail:SetSaveValue("m_bLaunched",true)
	--detail:GetPhysicsObject():EnableCollisions(false)
	detail:Spawn()
	detail:Activate()
	--]]
	
	
	self.TotalDamage = self:GetNWInt("damage")
	self.BoomTime = 9 * 10^10

	--ParticleEffectAttach("critical_rocket_blue", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	
end

function ENT:PhysicsCollide(data, physobj)

	self.HitP = data.HitPos
	self.HitN = data.HitNormal

	self:EmitSound("weapons/physcannon/energy_bounce"..math.random(1,2)..".wav",100,100)
	
	
		
	local LastSpeed = math.max( data.OurOldVelocity:Length(), data.Speed )
	local NewVelocity = physobj:GetVelocity()
	NewVelocity:Normalize()
	
	LastSpeed = math.max( NewVelocity:Length(), LastSpeed )
	
	local TargetVelocity = NewVelocity * LastSpeed * 1
	
	physobj:SetVelocity( TargetVelocity )
	
	
	if data.HitEntity:IsPlayer() or data.HitEntity:IsNPC() then 
		local dmginfo = DamageInfo()
			dmginfo:SetDamage( self.TotalDamage )
			dmginfo:SetDamageType( DMG_DISSOLVE )
			dmginfo:SetAttacker( self.Owner )
			dmginfo:SetInflictor( self )
			dmginfo:SetDamageForce( data.OurOldVelocity * 10000 ) --Launch upwards
	
		data.HitEntity:TakeDamageInfo(dmginfo)
		self.TotalDamage = self.TotalDamage - 50
	else
		self.TotalDamage = self.TotalDamage - 10
	end

	
	
	if self.TotalDamage < 0 then
		self.BoomTime = CurTime() + 0.25
	else
		local effectdata = EffectData()
		effectdata:SetScale(1)
		effectdata:SetRadius(25)
		effectdata:SetStart(data.HitPos)
		effectdata:SetOrigin(data.HitPos)
		effectdata:SetNormal(data.HitNormal)
		util.Effect( "cball_bounce", effectdata)
	end
	
	
end

function ENT:Think()
	if CurTime() >= self.BoomTime then
		local boom = ents.Create("prop_combine_ball")
		boom:SetPos(self:GetPos())
		boom:Spawn()
		boom:Activate()
		boom:Fire("explode")
		sound:Stop()
		self:Remove()
		SafeRemoveEntityDelayed(boom,1)
	end
end




function ENT:Use( activator, caller )
end


function ENT:OnTakeDamage( dmginfo )
end