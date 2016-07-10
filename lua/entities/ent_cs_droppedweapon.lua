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
		self:SetCollisionGroup(COLLISION_GROUP_PASSABLE_DOOR)
		
		self:SetUseType(SIMPLE_USE)
	
		local phys = self:GetPhysicsObject()
		if phys:IsValid() then
			phys:Wake()
			phys:SetBuoyancyRatio(0)
		end
		
		if self:GetNWString("class","") == "" then
			SafeRemoveEntity(self)
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
	
		local ActiveWeapon = activator:GetActiveWeapon()
		
		if ActiveWeapon and ActiveWeapon:IsValid() then
			if ActiveWeapon:IsScripted() then
				if ActiveWeapon.Base == "weapon_cs_base" then
					if ActiveWeapon:GetIsReloading() then return end
				end
			end
		end
		
		if activator:GetEyeTrace().Entity ~= self then return end

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
		
			local Weapon = weapons.GetStored(self:GetNWString("class"))
			
			if self:GetNWString("class") == "weapon_smod_katana" then return end
			if self:GetNWString("class") == "weapon_ex_stunstick" then return end
			
			if Weapon.WeaponType == "Throwable" then
			
				activator:GiveAmmo(1, Weapon.Primary.Ammo )
				
				self:Remove()
		
			else
		
				local clipcount = self:GetNWFloat("clip")
			
				if clipcount > 0 then
					activator:GiveAmmo(clipcount, Weapon.Primary.Ammo )
					activator:ChatPrint("You took " .. clipcount .. " rounds from the weapon's clip.")
					self:SetNWFloat("clip",0)
				else
					activator:ChatPrint("There are no rounds to take from the weapon's clip.")
				end
				
			end
			
			return
		else
		
			local Weapon = weapons.GetStored(self:GetNWString("class"))
		
			local givenweapon = activator:Give(self:GetNWString("class"))
			givenweapon.AlreadyGiven = true
			givenweapon:SetClip1(self:GetNWFloat("clip"))
			activator:SelectWeapon(self:GetNWString("class"))
			self:EmitSound("items/itempickup.wav")
			
			if Weapon.WeaponType == "Throwable" then
				activator:GiveAmmo(1, Weapon.Primary.Ammo )
			end
			
			self:Remove()
		
			return
		end

	end

end

function ENT:Draw()
	if CLIENT then
		self:DrawModel()
	end
end
