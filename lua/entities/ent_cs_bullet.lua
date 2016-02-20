ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "CSS Bullet"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false 

AddCSLuaFile()

function ENT:Initialize()
	if SERVER then
	
		self:SetModel("models/weapons/shell.mdl") 

		local size = 0.1
		
		self:PhysicsInitSphere( size, "metal" )
		self:SetCollisionBounds( Vector( -size, -size, -size ), Vector( size, size, size ) )
		self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
		
		local phys = self:GetPhysicsObject()
		if phys:IsValid() then
			phys:Wake()
			phys:SetBuoyancyRatio(0)
			phys:EnableGravity(false)
			phys:EnableDrag(false)
			phys:SetMass(1)
			phys:SetVelocity(self:GetForward()*10000)
		end
		
		self.StartTime = CurTime()
		
		util.SpriteTrail( self, 0, self:GetColor() , true , 0.25 , 0 , 0.0025*self:GetNWFloat("Damage",100)*2, 2, "debug/modelstats.vmt" )
		util.SpriteTrail( self, 0, Color(255,255,255,10) , true , 5 , 0 , 0.05*self:GetNWFloat("Damage",100)*10, 64, "trails/smoke.vmt" )
		--util.SpriteTrail( self, 0, Color(255,255,255,50) , true , 5 , 0 , 0.05*self.Damage, 64, "trails/tube.vmt" )
		
	end
end

function ENT:PhysicsCollide( data, collider )

	if SERVER then

		self:SetCollisionGroup(COLLISION_GROUP_WORLD)

		local damageinfo = DamageInfo()
		damageinfo:SetDamage(self:GetNWFloat("Damage",100))
		
		if IsValid(self.Owner) then
			damageinfo:SetAttacker(self.Owner)
			
			--if IsValid(self.Owner:GetActiveWeapon()) then
			--	damageinfo:SetInflictor(self.Owner:GetActiveWeapon())
			--else
			--	damageinfo:SetInflictor(self)
			--end
			
		else
			damageinfo:SetAttacker(self)
		end
		
		damageinfo:SetInflictor(self)

		data.HitEntity:TakeDamageInfo(damageinfo)
		
		SafeRemoveEntityDelayed(self,4)
		self:GetPhysicsObject():EnableMotion(false)
		
	end
	
end

function ENT:Think()
	if SERVER then
	
		local timepassed = CurTime() - self.StartTime
		local damage = self:GetNWFloat("Damage",100) - timepassed*30
		local phys = self:GetPhysicsObject()
		
		if damage < 10 then
			phys:ApplyForceCenter(Vector(0,0,-25))
		end
		
	end
end