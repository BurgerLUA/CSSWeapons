ENT.Type 				= "anim"
ENT.Base 				= "base_entity"
ENT.PrintName 			= "[CHEAT] Ammo Gift"
ENT.Author 				= ""
ENT.Information 		= ""

ENT.Spawnable 			= true
ENT.AdminOnly			= true
ENT.Category			= "CS:S Ammo"

AddCSLuaFile()

function ENT:Initialize()

	if SERVER then
	
		self:SetModel("models/items/cs_gift.mdl")
		
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
	
	self:EmitSound("items/gift_drop.wav")
	
end

function ENT:Use(activator,caller,useType,value)
	
	if ( activator:IsPlayer() ) then
	
		for k,v in pairs(activator:GetWeapons()) do
			if v:IsScripted() == true then
				local SWEP = weapons.GetStored(v:GetClass())
				
				--PrintTable(SWEP)
				
				if SWEP.Category == "Counter-Strike" then
					
					
					
					if SWEP.Primary.Ammo ~= "none" then
						
						activator:SetAmmo(9999,SWEP.Primary.Ammo)

					end
					
					
				end
				
			
			
			end
		end
	
		activator:ChatPrint("You've received 9999 ammo for all of your CSS Weapons")
	
		self:EmitSound("items/gift_pickup.wav")
		
		self:Remove()

	end

end

function ENT:Draw()
	if CLIENT then
		self:DrawModel()
	end
end
