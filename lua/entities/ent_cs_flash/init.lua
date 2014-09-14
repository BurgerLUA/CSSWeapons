AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()

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
	ParticleEffectAttach("drg_pipe_smoke", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	
end

function ENT:PhysicsCollide(data, physobj)

	self.HitP = data.HitPos
	self.HitN = data.HitNormal



	--self:SetVelocity(self:GetVelocity()/2)
	--self:GetPhysicsObject():AddVelocity(data.OurOldVelocity*0.1)
		
	if self:GetVelocity():Length() > 50 then
		self:EmitSound("weapons/flashbang/grenade_hit1.wav",100,100)
	end
		
		

	
	
end



function ENT:Think()
	if CurTime() > self.Delay then 
		self:Detonate(self,self:GetPos())
	end
end



function ENT:Use( activator, caller )
end


function ENT:OnTakeDamage( dmginfo )
end


function ENT:Detonate(self,pos)
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
		
			local distancecount = 10 - self:GetPos():Distance(v:GetPos())/100
			v:TakeDamage(distancecount/2,self.Owner,self)
			
			if v:GetClass() == "player" then
			
				
				
			
				--print(distancecount)
				
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
	end
	
					
	self.Pos1 = self.HitP + self.HitN
	self.Pos2 = self.HitP - self.HitN
	util.Decal("Scorch", self.Pos1, self.Pos2)
			
	self:Remove()
end