AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()

	self:SetModel("models/weapons/w_missile.mdl") 
	
	local r = 3
    self:PhysicsInitSphere(r)
    self:SetCollisionBounds(Vector(-r,-r,-r),Vector(r,r,r))
	
	self.sound = CreateSound(self,"weapons/rpg/rocket1.wav")
	self.sound:Play()
	
	
	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:Wake()
		phys:SetBuoyancyRatio(0)
		--phys:EnableDrag(false)
		--phys:EnableGravity(false)
		phys:AddGameFlag(FVPHYSICS_NO_IMPACT_DMG)
		phys:AddGameFlag(FVPHYSICS_NO_NPC_IMPACT_DMG)
	end
	self.SpawnTime = CurTime()
	self.LaunchDelay = 0
	
	self.Damage = self:GetNWInt("damage")
	
end

function ENT:PhysicsCollide(data, physobj)

	self.HitP = data.HitPos
	self.HitN = data.HitNormal
	
	self:Detonate(self,data.HitPos)
	self.sound:Stop()
	self:Remove()
end

function ENT:Think()
	--if self.LaunchDelay <= CurTime() then
		local phys = self:GetPhysicsObject()
		phys:EnableDrag(false)
		phys:EnableGravity(false)
		phys:SetVelocity(self:GetForward()*1000)
		phys:AddAngleVelocity(Vector(math.Rand(-1,1),math.Rand(-1,1),math.Rand(-1,1)))
	--end
end

function ENT:Detonate(self,pos)
	if not self:IsValid() then return end
	local effectdata = EffectData()
		effectdata:SetStart( pos ) // not sure if we need a start and origin (endpoint) for this effect, but whatever
		effectdata:SetOrigin( pos )
		effectdata:SetScale( 1 )
	util.Effect( "Explosion", effectdata )	
	--print(pos)
	util.BlastDamage(self, self.Owner, pos, 250, 100)
	
	if table.Count(ents.FindInSphere(self:GetPos(),250)) > 0 then
		for k,v in pairs(ents.FindInSphere(self:GetPos(),250)) do
		
			if v:GetClass() == "prop_physics" then
		
				if math.Rand(0,100) >= 70 then
					v:Ignite(250/20 - v:GetPos():Distance( self:GetPos() )/20,0)
				end
			
				timer.Simple(0,function() 
					if v:IsValid() == false then return end
					constraint.RemoveAll(v)
					v:GetPhysicsObject():EnableMotion(true)
					v:GetPhysicsObject():Wake()
				 end)

			end
			
			if v:GetClass() == "prop_door_rotating" then
				v:Fire( "Unlock", 0 )
				v:Fire( "Open", 0.1 )
			end
		
		end

	end
	
					
	--self.Pos1 = self.HitP + self.HitN
	--self.Pos2 = self.HitP - self.HitN
	--util.Decal("Scorch", self.Pos1, self.Pos2)
			
	self:Remove()
end


