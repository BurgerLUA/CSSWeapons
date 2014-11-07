ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "HE GRENADE"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false 

AddCSLuaFile()

function ENT:Initialize()
	if SERVER then
		self:SetModel("models/weapons/w_eq_fraggrenade.mdl") 
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		
		local phys = self:GetPhysicsObject()
		if phys:IsValid() then
			phys:Wake()
			phys:SetBuoyancyRatio(0)
		end
		
		self.Delay = CurTime() + 3
		self.First = true
	end
end

function ENT:PhysicsCollide(data, physobj)
	if SERVER then
		self.HitP = data.HitPos
		self.HitN = data.HitNormal



		--self:SetVelocity(self:GetVelocity()/2)
		--self:GetPhysicsObject():AddVelocity(data.OurOldVelocity*0.1)
			
		if self:GetVelocity():Length() > 50 then
			self:EmitSound("weapons/hegrenade/he_bounce-1.wav",100,100)
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
			self:Detonate(self,self:GetPos())
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
		--util.Effect( "HelicopterMegaBomb", effectdata )	
		util.Effect( "Explosion", effectdata)
		
		--print(pos)
		util.BlastDamage(self, self.Owner, pos, 400, 300)
		
		self:EmitSound("weapons/hegrenade/explode"..math.random(3,5)..".wav",100,100)
		
		if table.Count(ents.FindInSphere(self:GetPos(),250)) > 0 then
			for k,v in pairs(ents.FindInSphere(self:GetPos(),250)) do
			
				if v:GetClass() == "prop_physics" then
			
					--if math.Rand(0,100) >= 70 then
					--	v:Ignite(250/20 - v:GetPos():Distance( self:GetPos() )/20,0)
					--end
				
					timer.Simple(0,function() 
						if v:IsValid() == false then return end
						constraint.RemoveAll(v)
						v:GetPhysicsObject():EnableMotion(true)
						v:GetPhysicsObject():Wake()
					 end)

				end
				
				--if v:GetClass() == "prop_door_rotating" then
				--	v:Fire( "Unlock", 0 )
				--	v:Fire( "Open", 0.1 )
				--end
			
			end

		end
		
		
		if IsValid(self.HitP) then
		
			self.Pos1 = self.HitP + self.HitN
			self.Pos2 = self.HitP - self.HitN
			util.Decal("Scorch", self.Pos1, self.Pos2)
			
		end
				
		self:Remove()
	end
end

function ENT:Draw()
	if CLIENT then
		self:DrawModel()
	end
end


