function CounterStrikeDamage(ply, hitgroup, dmginfo)
	
	local ReportedDamage
	
	if GetConVarNumber("sv_css_enable_damagesounds") == 1 then
		if hitgroup == HITGROUP_HEAD then
			ply:EmitSound("player/headshot"..math.random(1,2)..".wav",SNDLVL_TALKING,100,1,CHAN_BODY)
		else
			ply:EmitSound("player/kevlar"..math.random(1,5)..".wav",SNDLVL_TALKING,100,1,CHAN_BODY)
		end
	end

	if GetConVarNumber("sv_css_enable_damagemod") == 1 then
	
		ReportedDamage = dmginfo
		
		ReportedDamage:ScaleDamage( GetConVarNumber("sv_css_damage_scale") )
	
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
		
	else
	
		dmginfo:ScaleDamage( GetConVarNumber("sv_css_damage_scale") )
		
	end
	
	if GetConVarNumber("sv_css_enable_speedmod") == 1 then
		ply.GetSlow = math.Clamp(ply.GetSlow + 80,0,99)
	end
	
	
end

hook.Add("ScalePlayerDamage","CSS Damage",CounterStrikeDamage)


local SlowNextThink = 0

function CounterStrikeSpeedMod()

	if GetConVarNumber("sv_css_enable_speedmod") == 1 then
	
		if SlowNextThink <= CurTime() then
		
			for k,v in pairs(player.GetAll()) do 
			
				if not v.GetSlow then
					v.GetSlow = 0
				end
				
				local WeaponSpeed = 270
				
				if IsValid(v:GetActiveWeapon()) then
					if v:GetActiveWeapon():IsScripted() then
						if v:GetActiveWeapon().Base == "weapon_cs_base" then
							WeaponSpeed = v:GetActiveWeapon().MoveSpeed
						end
					end
				end
				
				v:SetWalkSpeed( ( WeaponSpeed * (100 - v.GetSlow)/100 ) ) 
				v:SetRunSpeed( ( WeaponSpeed * (100 - v.GetSlow)/100 ) * 2  )
				v.GetSlow = math.Clamp(v.GetSlow - 3,0,99)

			end

			SlowNextThink = CurTime() + 0.05
			
		end
		
	end

end

hook.Add("Think","CSS Speed Mod",CounterStrikeSpeedMod)


function CounterStrikeDeath( victim, inflictor, attacker )

	if GetConVarNumber("sv_css_enable_deathsounds") == 1 then
		victim:EmitSound("player/death"..math.random(1,6)..".wav",SNDLVL_TALKING,100,1,CHAN_VOICE)
	end
	
end

hook.Add("PlayerDeath","CSS Death",CounterStrikeDeath)




