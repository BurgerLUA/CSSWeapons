function NadeKeyPress(ply,key)

	if GetConVarNumber("cl_css_quick") == 0 then return end
	
	if ply:KeyDown(IN_USE) then
		if key == IN_ATTACK then
			if ply:InVehicle() then return end
		
			local Weapon = ply:GetActiveWeapon()
			
			if not IsValid(Weapon) then return end
			if not Weapon:IsScripted() then return end	
			if Weapon.Base ~= "weapon_cs_base" then return end	
			if Weapon:IsBusy() == true then return end
			
			if CLIENT then return end
			
			if CSS_ThrowCheck(ply,Weapon,"weapon_cs_he") then
			
			elseif CSS_ThrowCheck(ply,Weapon,"weapon_ex_gas") then
			
			elseif CSS_ThrowCheck(ply,Weapon,"weapon_cs_flash") then
		
			elseif CSS_ThrowCheck(ply,Weapon,"weapon_cs_smoke") then
			
			else
				return
			end
			
			Weapon = ply:GetActiveWeapon()
			Weapon:QuickThrow()
			
		end
	end

end

function CSS_ThrowCheck(ply,Weapon,class)

	if not ply:HasWeapon(class) then return false end
	if Weapon:GetClass() == class then return false end	
	ply:SelectWeapon(class)

	return true

end


hook.Add("KeyPress","Quick Grenade",NadeKeyPress)

