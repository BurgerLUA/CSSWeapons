AddCSLuaFile()

function ISaid( ply, text, public )
    if string.sub(text, 1, 9) == "!cssadmin" then
		ply:ConCommand("cssadminsettings")
        return false
    elseif string.sub(text, 1, 10) == "!cssplayer" then
		ply:ConCommand("cssplayersettings")
		return false
	end
	
	
	
	
end

hook.Add( "PlayerSay", "ISaid", ISaid );




function OnSpawn( ply )
	
	
	
	ply:SendLua(
		[[chat.AddText(Color(255,255,255), "This server is running CSS weapons. Enter",Color(0,255,0)," !cssplayer ",Color(255,255,255),Color(255,255,255),"to access the player menu.")]]
	)
	
	
	if ply:IsAdmin() or ply:IsSuperAdmin() then
		ply:SendLua(
			[[chat.AddText(Color(255,255,255), "Enter",Color(0,255,0)," !cssadmin ",Color(255,255,255),Color(255,255,255),"to access the admin menu.")]]
		)
	end

	
	

end

hook.Add( "PlayerInitialSpawn", "OnSpawn", OnSpawn )


