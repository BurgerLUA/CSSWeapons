
function NadeKeyPress(ply,key)

	if not IsFirstTimePredicted() then return end
	
	if GetConVarNumber("cl_css_quick") == 0 then return end
	
	if ply:KeyDown(IN_USE) then
	
		if not IsValid(ply:GetActiveWeapon()) then return end
		if not ply:GetActiveWeapon():IsScripted() then return end	
		if ply:GetActiveWeapon().Base ~= "weapon_cs_base" then return end	
		if ply:GetActiveWeapon():IsBusy() == true then return end
		if ply:GetActiveWeapon():GetNWInt("zoommode",0) ~= 0 then return end
		
		if key == IN_ATTACK then
			if not ply:HasWeapon("weapon_cs_he") then return end
			if ply:GetActiveWeapon():GetClass() == "weapon_cs_he" then return end	
			if ply:InVehicle() then return end
			
			net.Start("ThrowQuickGrenade")
				net.WriteFloat(1)
			net.SendToServer()
		
		elseif key == IN_ATTACK2 then
	
			if not ply:HasWeapon("weapon_cs_knife") then return end
			if ply:GetActiveWeapon():GetClass() == "weapon_cs_knife" then return end	
			if ply:InVehicle() then return end
			
			net.Start("ThrowQuickGrenade")
				net.WriteFloat(2)
			net.SendToServer()
		
		end

	end

end

hook.Add("KeyPress","Quick Grenade",NadeKeyPress)

