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
					if Weapon:IsScripted()
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
					if Weapon:IsScripted()
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




