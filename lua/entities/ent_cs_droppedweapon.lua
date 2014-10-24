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
		
		
		
		if GetConVar("sv_css_timed_drops"):GetInt() == 1 then
			SafeRemoveEntityDelayed(self,GetConVar("sv_css_drop_timer"):GetInt())
		end
		
	end

	
	
end

function ENT:Use(activator,caller,useType,value)
	
	if ( activator:IsPlayer() ) then
	
		if self:GetNWString("class") == "weapon_cs_c4" and GetConVar("sv_css_enable_c4nonadmin"):GetInt() ~= 1 and activator:IsAdmin() == false then
			activator:ChatPrint("You are not allowed to pick up C4")
		return end
		
		
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
