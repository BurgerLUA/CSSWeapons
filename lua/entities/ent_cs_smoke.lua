ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "SMOKE GRENADE"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false 

AddCSLuaFile()

function ENT:Initialize()
	if SERVER then
		self:SetModel("models/weapons/w_eq_smokegrenade.mdl") 
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		
		local phys = self:GetPhysicsObject()
		if phys:IsValid() then
			phys:Wake()
			phys:SetBuoyancyRatio(0)
		end
		
		self.Delay = CurTime() + 3
		self.NextParticle = 0
		self.First = true
		self.IsDetonated = false
	end
end

function ENT:PhysicsCollide(data, physobj)
	if SERVER then
		self.HitP = data.HitPos
		self.HitN = data.HitNormal

		if self:GetVelocity():Length() > 50 then
			self:EmitSound("weapons/smokegrenade/grenade_hit1.wav",100,100)
		end
		
		if self:GetVelocity():Length() < 5 then
			self:SetMoveType(MOVETYPE_NONE)
		end
		
		
	end
end



function ENT:Think()
	if SERVER then
		if self.First == true then
			--ParticleEffectAttach("drg_pipe_smoke", PATTACH_ABSORIGIN_FOLLOW, self, 0)
			--ParticleEffectAttach("rockettrail", PATTACH_ABSORIGIN_FOLLOW, self, 0)
			self.First = false
		end

		
		if CurTime() > self.Delay then 
			
			
			if table.Count(ents.FindInSphere(self:GetPos(),250)) > 0 then
				for k,v in pairs(ents.FindInSphere(self:GetPos(),250)) do
				end
			end
			
			if self.NextParticle <= CurTime() then 
			
			
				local ent = ents.Create("ent_cs_smokeparticle")
				ent:SetPos(self:GetPos())
				ent:SetAngles(Angle(0,0,0))
				ent:Spawn()
				ent:Activate()
				ent:SetOwner(self.Owner)
				ent:GetPhysicsObject():SetVelocity(Vector(math.Rand(-25,25),math.Rand(-25,25),math.Rand(0,25)))
				
				--ent:EnableCollisions(false)
				
				self.NextParticle = CurTime() + 0.0025
			end
			
			

			if self.IsDetonated == false then
				self:Detonate(self,self:GetPos())
				self.IsDetonated = true
			end
			
		end
	end
end

function ENT:Detonate(self,pos)
	if SERVER then
		if not self:IsValid() then return end
		local effectdata = EffectData()
			effectdata:SetStart( pos + Vector(0,0,100)) // not sure if we need a start and origin (endpoint) for this effect, but whatever
			effectdata:SetOrigin( pos)
			effectdata:SetScale( 100 )
			effectdata:SetRadius( 5000 )
			effectdata:SetEntity(self)
		--util.Effect( "SMOKE", effectdata )	
		
		self:EmitSound("weapons/smokegrenade/sg_explode.wav",100,100)

		
		SafeRemoveEntityDelayed(self,10)
	end
end

function ENT:Draw()
	if CLIENT then
		self:DrawModel()
	end
end
