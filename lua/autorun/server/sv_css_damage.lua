function CSSDamage(ply, hitgroup, dmginfo)

	local Inflictor = dmginfo:GetInflictor()
	
	if Inflictor ~= NULL and Inflictor ~= nil then
		if Inflictor:IsPlayer() then
			Weapon = Inflictor:GetActiveWeapon()
		end
	end

	if Weapon ~= NULL and Weapon ~= nil then
		if Weapon.FatalHeadshot and hitgroup == HITGROUP_HEAD then
			local Damage = math.max(dmginfo:GetDamage(),ply:Health())
			dmginfo:SetDamage(Damage)
		end
	end

	if GetConVar("sv_css_enable_customdamage"):GetFloat() == 1 then
	
		if ( hitgroup == HITGROUP_HEAD ) then
			dmginfo:ScaleDamage( 0.5 )
		elseif ( hitgroup == HITGROUP_LEFTARM || hitgroup == HITGROUP_RIGHTARM || hitgroup == HITGROUP_LEFTLEG || hitgroup == HITGROUP_RIGHTLEG || hitgroup == HITGROUP_GEAR ) then
			dmginfo:ScaleDamage( 4 )
		end
		
		if hitgroup == HITGROUP_LEFTLEG || hitgroup == HITGROUP_RIGHTLEG then
			dmginfo:ScaleDamage( GetConVar("sv_css_damage_legscale"):GetFloat() )
		elseif hitgroup == HITGROUP_HEAD then
			dmginfo:ScaleDamage( GetConVar("sv_css_damage_headscale"):GetFloat() )
		elseif hitgroup == HITGROUP_LEFTARM || hitgroup == HITGROUP_RIGHTARM then
			dmginfo:ScaleDamage( GetConVar("sv_css_damage_armscale"):GetFloat() )
		else
			dmginfo:ScaleDamage( GetConVar("sv_css_damage_bodyscale"):GetFloat() )
		end
		
	end
	
	if ply:IsPlayer() and not ply:HasGodMode() and GetConVarNumber("sbox_godmode") == 0 then
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


function CSSScaleNPCDamage(ply, hitgroup, dmginfo)
	CSSDamage(ply, hitgroup, dmginfo)
end

hook.Add("ScaleNPCDamage","CSSScaleNPCDamage",CSSScaleNPCDamage)


function CSSDeath( victim, inflictor, attacker )
	if GetConVarNumber("sv_css_enable_deathsounds") == 1 then
		victim:EmitSound("player/death"..math.random(1,6)..".wav",SNDLVL_TALKING,100,1,CHAN_VOICE)
	end
end

hook.Add("PlayerDeath","CSS: Death Sounds",CSSDeath)
hook.Add("PlayerDeathSound","CSS Death Sound Override",function() return true end)

function CSSBoltFix(victim,dmginfo)

	local Inflictor = dmginfo:GetInflictor()
	
	if Inflictor and Inflictor ~= NULL then
		if Inflictor:GetClass() == "crossbow_bolt" and dmginfo:GetDamage() <= 1 then
			dmginfo:SetDamage(100)
		end
	end

end

hook.Add("EntityTakeDamage","CSS Bolt Fix",CSSBoltFix)



concommand.Add( "nerfme", function( ply,cmd,args,argStr )

	local PlayerHealth = 100

	local AllWeapons = weapons.GetList()
	--local AllWeapons = {weapons.GetStored("weapon_cs_fiveseven"),weapons.GetStored("weapon_ex_p90minigun")}
	
	local MyWeapons = {}
	
	for k,SWEP in pairs(AllWeapons) do
		if SWEP.Base == "weapon_cs_base" and (SWEP.WeaponType == "Primary" or SWEP.WeaponType == "Secondary") then
		
			local PrintName = SWEP.PrintName
			
			local Damage = SWEP.Primary.NumShots * SWEP.Primary.Damage * GetConVarNumber("sv_css_damage_scale")
			local Delay = math.Clamp(SWEP.Primary.Delay,FrameTime(),60)
			
			if !SWEP.Primary.Automatic and Delay < 0.1 then
				Delay = 0.1
			end
			
			if SWEP.HasHL2Pump then
				Delay = Delay + 1
			end
			
			local ClipSize = SWEP.Primary.ClipSize
		
			if ClipSize == -1 then
				ClipSize = 250
			end
		
			local ClipDamage = Damage * ClipSize

			local DPS = math.min(ClipDamage,math.floor(( 1 / Delay) * Damage ))
			local KillTime = math.Round((math.ceil(PlayerHealth/Damage) - 1) * (Delay),2)
			
			MyWeapons[PrintName] = {}
			MyWeapons[PrintName].DPS = DPS
			MyWeapons[PrintName].KillTime = KillTime

		end
	end
	
	local Keys = table.GetKeys( MyWeapons )

	if argStr == "time" then
		table.sort( Keys, function( a, b )

			if MyWeapons[a].KillTime == MyWeapons[b].KillTime then
				return a < b
			else
				return MyWeapons[a].KillTime < MyWeapons[b].KillTime
			end

		end )
	else
		table.sort( Keys, function( a, b )

			if MyWeapons[a].DPS == MyWeapons[b].DPS then
				return a < b
			else
				return MyWeapons[a].DPS < MyWeapons[b].DPS
			end

		end )
	end

	
	for i=1, #Keys do
	
		local k = Keys[i]
		local v = MyWeapons[k]
	
		print("-------------------------")
		print("Weapon:  ",k)
		print("DPS:     ",v.DPS)
		print("KillTime:",v.KillTime)
	end

end )



			--[[
			local Damage = math.Clamp(SWEP.Primary.NumShots * SWEP.Primary.Damage * GetConVarNumber("sv_css_damage_scale"),1,200)
			local Range = math.Clamp(SWEP.DamageFalloff,100,5000)
			local Delay = math.Clamp(SWEP.Primary.Delay,0.001,10)
			if SWEP.Primary.Automatic == false then
				Delay = math.Clamp(Delay,1/6,10)
			end
			local Cone = math.Clamp(SWEP.Primary.Cone,0.0025,1)
			local Recoil = math.Clamp(SWEP.RecoilMul,0.1,10)
			local SideRecoil = math.Clamp(SWEP.SideRecoilMul,0.1,10)
			local Heat = math.Clamp(SWEP.HeatMul,0.1,100)
			local VelCone = math.Clamp(SWEP.VelConeMul,0.1,100)
			local ClipSize = math.Clamp(SWEP.Primary.ClipSize,-1,250)
			
			if ClipSize == -1 then
				ClipSize = 250
			end
			
			
			local DamageMod = (Damage / 100) + (Range/2000)
			
			if DamageMod > 1 then
				DamageMod = DamageMod*1.25
			end
			
			local DPSMod = 0.5 * ( (Delay^-1) * Damage * 0.5 )
			local ConeMod = (0.60 + (0.01 / Cone)*0.40) * (0.75 + (1/VelCone)*0.25 ) * (0.95 + SWEP.ZoomAmount * 0.05)
			local RecoilMod = 1
			local HeatMod = 1
			local ClipSizeMod = 0.75 + ( (ClipSize / 30) * 0.25)
			
			if Delay < 1 then
				if SWEP.HasSideRecoil then
					RecoilMod = ( 0.5 + (0.5 / Recoil) ) + (0.8 + (0.2/ SideRecoil) )
				else
					RecoilMod = 0.4 + (0.6 / Recoil)
				end
				
				HeatMod =  0.1 + (0.9 / Heat)
			end
			
			local Final = math.floor( DamageMod * DPSMod * ConeMod * RecoilMod * HeatMod * ClipSizeMod )

			print("DamageMod:",DamageMod)
			print("DPS Mod:",DPSMod)
			print("ConeMod:",ConeMod)
			print("RecoilMod:",RecoilMod)
			print("HeatMod:",HeatMod)
			print("ClipSizeMod:",ClipSizeMod)
			print("Grand Total:",Final)
			--]]



