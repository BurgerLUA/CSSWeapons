function ISaid( ply, text, public )
    if (string.sub(text, 1, 4) == "/css") or (string.sub(text, 1, 4) == "!css")	then
	
			ply:ConCommand("cssadminsettings")
	
        return false
    end
end

hook.Add( "PlayerSay", "ISaid", ISaid );


for k,v in pairs(player.GetAll()) do 
	BroadcastLua(
	[[chat.AddText(Color(255,255,255), "This server is running CSS weapons. Enter",Color(0,255,0)," /css ",Color(255,255,255),"or",Color(0,255,0)," !css ",Color(255,255,255),"to access the weapon settings for the Counter Strike Source Weapons.")]]
	)
end

