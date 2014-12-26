--[[
function CSSNetCommandSend(command,value)

	if not (LocalPlayer():IsAdmin() or LocalPlayer:IsSuperAdmin()) then
	
	--LocalPlayer:ChatPrint("You need to be an admin to modify these settings")
	
	return
	end

	print("[CLIENT]: Telling the server to set " .. command .. " to " .. value .. "...")
	
	net.Start("CSSNetCommand")
		net.WriteString(command)
		net.WriteFloat(value)
	net.SendToServer()
	
end




--Located in Client, this is the function that asks for the command's value.

function CSSAskForCommand(command,callback)
	
	local value = -1

	net.Start("CSSAskForCommand")
		net.WriteString(command)
	net.SendToServer()
	
	net.Receive("CSSGetCommand", callback )

	if value == -1 then
		print("[CLIENT]: Asking what the value of " .. command .. " is..." )
	else
		print("[CLIENT]: The value of the server's " .. command .. " is " .. value .. "." )
	end
	
	if callback ~= true then
		CSSAskForCommand(command,true)
		value = net.ReadFloat()
		print(value)
	end
	
	
	
	return value
	
end
--]]
