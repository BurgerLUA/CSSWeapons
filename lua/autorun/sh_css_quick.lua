function NadeKeyPress(ply,key)
	
	if CLIENT then return end
	
	if GetConVarNumber("cl_css_quick") == 0 then return end
	
	
	if ply:KeyDown(IN_USE) then
		if key == IN_ATTACK then
			if ply:InVehicle() then return end
		
			local Weapon = ply:GetActiveWeapon()
			
			if not IsValid(Weapon) then return end
			if not Weapon:IsScripted() then return end	
			if Weapon.Base ~= "weapon_cs_base" then return end	
			if Weapon:IsBusy() == true then return end
			if Weapon:GetIsZoomed() then return end
			if not ply:HasWeapon("weapon_cs_he") then return end
			if Weapon:GetClass() == "weapon_cs_he" then return end	
			ply:SelectWeapon("weapon_cs_he")
			ply:GetActiveWeapon():QuickThrow()

			print("Throw")
			
		end
	end

end

hook.Add("KeyPress","Quick Grenade",NadeKeyPress)

print("QuickThrow")