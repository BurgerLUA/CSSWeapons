ENT.Type 				= "anim"
ENT.Base 				= "base_entity"
ENT.PrintName 			= "Base Ammo"
ENT.Author 				= ""
ENT.Information 		= ""

ENT.Spawnable 			= false
ENT.AdminSpawnable		= false 
ENT.Category			= "CS:S Ammo"

AddCSLuaFile()


function ENT:Initialize()

	if SERVER then
	
		self:SetModel(self.AmmoModel)
		
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		
		self:SetCollisionGroup(COLLISION_GROUP_NONE)

		
		self:SetUseType(SIMPLE_USE)
		
	
		local phys = self:GetPhysicsObject()
		if phys:IsValid() then
			phys:Wake()
			phys:SetBuoyancyRatio(0)
		end
	end
	
end

function ENT:Use(activator,caller,useType,value)
	
	if ( activator:IsPlayer() ) then
	
		for k,v in pairs(self.AmmoTable) do
			if v > 0 then
				activator:GiveAmmo(v,k,false)
				--print(k,v)
			end
		end
		
		
		self:EmitSound("items/ammopickup.wav")
		self:Remove()
	
	end

end

function ENT:Draw()
	if CLIENT then
		self:DrawModel()
	end
end
