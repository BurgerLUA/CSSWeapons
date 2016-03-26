function CSSDamage(ply, hitgroup, dmginfo)
	if not ply:HasGodMode() and GetConVarNumber("sbox_godmode") == 0 then
		if GetConVarNumber("sv_css_enable_damagesounds") == 1 then
			if hitgroup == HITGROUP_HEAD then
				ply:EmitSound("player/headshot"..math.random(1,2)..".wav",SNDLVL_TALKING,100,1,CHAN_BODY)
			else
				ply:EmitSound("player/kevlar"..math.random(1,5)..".wav",SNDLVL_TALKING,100,1,CHAN_BODY)
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
hook.Add("PlayerDeathSound","CSS Death Sound Override",function() return true end)

function CSSBoltFix(victim,dmginfo)

	local Attacker = dmginfo:GetAttacker()
	local Inflictor = dmginfo:GetInflictor()
	
	if Inflictor:GetClass() == "crossbow_bolt" and dmginfo:GetDamage() <= 1 then
		dmginfo:SetDamage(100)
	end

end

hook.Add("EntityTakeDamage","CSS Bolt Fix",CSSBoltFix)
