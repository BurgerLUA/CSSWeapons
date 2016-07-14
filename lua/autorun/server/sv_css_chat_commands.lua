AddCSLuaFile()

resource.AddWorkshop( "330382441" )

function CSSChatCommands( ply, text, public )

    if string.sub(text, 1, 9) == "!cssadmin" then
	
		if game.IsDedicated() then
			if ply:IsSuperAdmin() then
				ply:SendLua(
					[[chat.AddText(Color(255,0,0), "Unfortunately adjusting Counter-Strike:Source server settings with this menu on dedicated servers (servers hosted not on this machine) isn't possible. Please read the workshop description for clarification.")]]
				)
			end
		else
			if ply ~= Entity(1) then
				ply:SendLua(
					[[chat.AddText(Color(255,0,0), "You're not the server owner.")]]
				)
			else
				ply:ConCommand("cssadminsettings")
			end
		end
		
        return false
    elseif string.sub(text, 1, 10) == "!cssplayer" then
		ply:ConCommand("cssplayersettings")
		return false
	end

end

hook.Add( "PlayerSay", "CSS: Chat Commands", CSSChatCommands )


function CSSPlayerJoinMessage( ply )
	

	ply:SendLua(
		[[chat.AddText(Color(255,255,255), "This server is running CSS weapons. Enter",Color(0,255,0)," !cssplayer ",Color(255,255,255),Color(255,255,255),"to access the player menu.")]]
	)
	
	if ply == Entity(1) then
		if game.IsDedicated() then
			

		else
			ply:SendLua(
				[[chat.AddText(Color(255,255,255), "Enter",Color(0,255,0)," !cssadmin ",Color(255,255,255),Color(255,255,255),"to access the admin menu.")]]
			)
		end
	end

end

hook.Add( "PlayerInitialSpawn", "CSS: Player Join (Message)", CSSPlayerJoinMessage )





