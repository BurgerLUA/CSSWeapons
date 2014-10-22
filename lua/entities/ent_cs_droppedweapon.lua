ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Dropped Weapon"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false 

AddCSLuaFile()

function ENT:Initialize()

	if SERVER then
	
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		self:SetUseType(SIMPLE_USE)
	
		local phys = self:GetPhysicsObject()
		if phys:IsValid() then
			phys:Wake()
			phys:SetBuoyancyRatio(0)
		end
		
	end
	
	
	SafeRemoveEntityDelayed(self,60)
	
	
end

function ENT:Use(activator,caller,useType,value)
	
	if ( activator:IsPlayer() ) then
		
		local hasweapon = false
		
		for k,v in pairs(activator:GetWeapons()) do
			if v:GetClass() == self:GetNWString("class") then
				hasweapon = true
			end
		end
			
		if hasweapon == true then
			hasweapon = false
		return end
		
		
		activator:Give(self:GetNWString("class"))
		activator:SelectWeapon(self:GetNWString("class"))
		self:Remove()
	else
	
	end

end

function ENT:Draw()
	if CLIENT then
		self:DrawModel()
	end
end
