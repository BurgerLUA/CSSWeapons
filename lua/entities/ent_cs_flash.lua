ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "FLASH NADE"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false 

AddCSLuaFile()

function ENT:Initialize()
	if SERVER then
		self:SetModel("models/weapons/w_eq_flashbang.mdl") 
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
		
		if self:GetVelocity():Length() > 50 then
			self:EmitSound("weapons/flashbang/grenade_hit1.wav",100,100)
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
		util.Effect( "HelicopterMegaBomb", effectdata )	
	
		self:EmitSound("weapons/flashbang/flashbang_explode2.wav",100,100)
		
		if table.Count(ents.FindInSphere(self:GetPos(),1000)) > 0 then
		
			for k,v in pairs(ents.FindInSphere(self:GetPos(),1000)) do
				if v:GetClass() == "player" then
				
					local distancecount = 18 - self:GetPos():Distance(v:GetPos())/100
					print(distancecount)
					if distancecount > 0 and distancecount < 8 then 
						v:TakeDamage(distancecount,self.Owner,self)
						
						for n,f in pairs(ents.FindInCone(v:GetShootPos(), v:GetAimVector(),1000,90)) do
							if f == self.Entity then
								self:BlindEffects(v,distancecount)
							end
						end
					elseif distancecount >= 8 then
						self:BlindEffects(v,distancecount)
					end
				end
			end
		end
				
		self:Remove()
	end
end


function ENT:BlindEffects(v,distancecount)
	if SERVER then
		if distancecount > 1 then
			v:SetDSP( 37, false )
		end
					
		v:ConCommand("pp_motionblur 1")
		v:ConCommand("pp_motionblur_drawalpha 0.99")
		v:ConCommand("pp_motionblur_addalpha 0.2")
		v:ConCommand("pp_texturize effects/flashbang_white")
				
		timer.Create(v:EntIndex().."flashblind1",distancecount*0.25, 1, function()
			v:ConCommand("pp_texturize \"\"")
		end)
				
		timer.Create(v:EntIndex().."flashblind2",distancecount, 1, function()
			v:ConCommand("pp_motionblur 0")
		end)
	end
end

function ENT:Draw()
	if CLIENT then
		self:DrawModel()
	end
end