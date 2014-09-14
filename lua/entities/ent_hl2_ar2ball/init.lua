AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()

	self:SetModel("models/Items/AR2_Grenade.mdl") 
	--self:PhysicsInit(SOLID_VPHYSICS)
	--self:SetMoveType(MOVETYPE_VPHYSICS)
	--self:SetSolid(SOLID_VPHYSICS)
	
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
	
	
	
	
	self.Delay = CurTime() + 3
	ParticleEffectAttach("drg_pipe_smoke", PATTACH_ABSORIGIN_FOLLOW, self, 0)
	
end

function ENT:PhysicsCollide(data, physobj)

	self.HitP = data.HitPos
	self.HitN = data.HitNormal



	--self:SetVelocity(self:GetVelocity()/2)
	--self:GetPhysicsObject():AddVelocity(data.OurOldVelocity*0.1)
		
	if self:GetVelocity():Length() > 50 then
		self:EmitSound("weapons/hegrenade/he_bounce-1.wav",100,100)
	end
		
	local LastSpeed = math.max( data.OurOldVelocity:Length(), data.Speed )
	local NewVelocity = physobj:GetVelocity()
	NewVelocity:Normalize()
	
	LastSpeed = math.max( NewVelocity:Length(), LastSpeed )
	
	local TargetVelocity = NewVelocity * LastSpeed * 1
	
	physobj:SetVelocity( TargetVelocity )

	
	
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
	--util.Effect( "HelicopterMegaBomb", effectdata )	
	util.Effect( "Explosion", effectdata)
	
	--print(pos)
	util.BlastDamage(self, self.Owner, pos, 400, 100)
	
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
	
					
	self.Pos1 = self.HitP + self.HitN
	self.Pos2 = self.HitP - self.HitN
	util.Decal("Scorch", self.Pos1, self.Pos2)
			
	self:Remove()
end