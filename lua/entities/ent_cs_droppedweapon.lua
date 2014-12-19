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
		
		if self:GetNWString("class") == "weapon_cs_botgun" then
			self:Remove()
		end
		
		if GetConVar("sv_css_timed_drops"):GetInt() == 1 then
			SafeRemoveEntityDelayed(self,GetConVar("sv_css_drop_timer"):GetInt())
		end
		
	end

	
	
end

function ENT:Use(activator,caller,useType,value)
	
	if ( activator:IsPlayer() ) then
	
		if activator:GetActiveWeapon():IsScripted() then
			if activator:GetActiveWeapon().Base == "weapon_cs_base" then
				if activator:GetActiveWeapon().IsReloading ==1 then return end
			end
		end
	
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
		
			local clipcount = self:GetNWInt("clip")
		
			if clipcount > 0 then
				activator:GiveAmmo(clipcount, weapons.GetStored(self:GetNWString("class")).Primary.Ammo )
				activator:ChatPrint("You took " .. clipcount .. " rounds from the weapon's clip.")
			else
				activator:ChatPrint("There are no rounds to take from the weapon's clip.")
			end
			
			
			
		
			self:SetNWInt("clip",0)
		
			hasweapon = false
		return end
		
		
		local givenweapon = activator:Give(self:GetNWString("class"))
		givenweapon.AlreadyGiven = true
		givenweapon:SetClip1(self:GetNWInt("clip"))
		activator:SelectWeapon(self:GetNWString("class"))
		self:EmitSound("items/itempickup.wav")
		

		self:Remove()
	else
	
	end

end

function ENT:Draw()
	if CLIENT then
		self:DrawModel()
	end
end
