ENT.Type 				= "anim"
ENT.Base 				= "base_entity"
ENT.PrintName 			= "Base Ammo"
ENT.Author 				= ""
ENT.Information 		= ""

ENT.Spawnable 			= false
ENT.AdminSpawnable		= false 
ENT.Category			= "CS:S Ammo"

AddCSLuaFile()

--ENT.AmmoType 			= ""
--ENT.AmmoAmount 			= ""
--ENT.AmmoModel			= ""


function ENT:Initialize()

		--self:PhysicsInit(SOLID_NONE)
		self:SetMoveType(MOVETYPE_NONE)
		--self:SetPersistent(true)
		self:SetNotSolid(true)
		self:DrawShadow(false)

	if SERVER then
		local phys = self:GetPhysicsObject()
		if phys:IsValid() then
			--phys:Wake()
			phys:EnableCollisions(false)
			phys:EnableMotion(false)
		end
	end
	
	if CLIENT then
		self:SetPredictable(true)
	end
	
end

function ENT:Draw()

	if self:GetModel() ~= "models/hunter/blocks/cube025x025x025.mdl" then


		if self.Owner == LocalPlayer() and self.Owner:ShouldDrawLocalPlayer( ) then
			self:DrawModel()
		elseif self.Owner ~= LocalPlayer() then
			self:DrawModel()
		end
		
	end
		
		
end
