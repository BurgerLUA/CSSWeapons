--[[
util.AddNetworkString( "CSSNetCommand" )

net.Receive("CSSNetCommand", function(len,ply)

	if not (ply:IsAdmin() or ply:IsAdmin()) then
		ply:ChatPrint("You're not an Admin")
	return end

	local command = net.ReadString()
	local stype = net.ReadString()
	local sentvalue
	local curvalue
	local convar = GetConVar(command)
	
	--print(stype)
	
	sentvalue = net.ReadFloat()
	curvalue = 	convar:GetFloat()
	
	if curvalue ~= sentvalue then
	
		print("[SERVER]: " .. ply:Nick() .. " has changed " .. command .. " to " .. sentvalue .. ".")
	
		--print(ply:Nick() .. " has changed " .. command .. " to " .. sentvalue)
		
	end
	
	
	
end)


util.AddNetworkString("CSSAskForCommand")
util.AddNetworkString( "CSSGetCommand" )


net.Receive("CSSAskForCommand", function(len,ply)

	local command = net.ReadString()
	
	if string.sub(command, 1, 5) == "sv_css" then

		local value = GetConVarNumber(command)
		
		net.Start("CSSGetCommand")
			net.WriteFloat(value)
			net.WriteEntity(ply)
		net.Broadcast()
		
		print("[SERVER]: Telling " .. ply .. " that the current args for " .. command .. " is " .. value .. ".")
		
	end
	
end)


--]]
