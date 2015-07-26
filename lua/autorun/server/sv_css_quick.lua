net.Receive( "ThrowQuickGrenade", function( len, ply )

	local num = net.ReadFloat()


	if not IsValid(ply) then return end
	if ply:InVehicle() then return end
	if ply:GetActiveWeapon():IsBusy() == true then return end
	if ply:GetActiveWeapon():GetNWInt("zoommode",0) ~= 0 then return end
	
	
	
	if num == 1 then
		if not ply:HasWeapon("weapon_cs_he") then return end
		if ply:GetActiveWeapon():GetClass() == "weapon_cs_he" then return end	
		
		ply:SelectWeapon("weapon_cs_he")
		ply:GetActiveWeapon():QuickThrow()
	
	elseif num == 2 then
		if not ply:HasWeapon("weapon_cs_knife") then return end
		if ply:GetActiveWeapon():GetClass() == "weapon_cs_knife" then return end	

		ply:SelectWeapon("weapon_cs_knife")
		ply:GetActiveWeapon():QuickKnife()

	end
	
	
	
	

end )

util.AddNetworkString( "ThrowQuickGrenade" )