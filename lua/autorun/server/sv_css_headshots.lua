function DetectHeadshots(ply, hitgroup, dmginfo)

	if hitgroup == HITGROUP_HEAD then
		ply:EmitSound("player/headshot"..math.random(1,2)..".wav",SNDLVL_TALKING,100,1,CHAN_BODY)
	end

end

hook.Add("ScalePlayerDamage","CSS Detect Headshots",DetectHeadshots)