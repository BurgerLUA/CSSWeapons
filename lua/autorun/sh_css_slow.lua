AddCSLuaFile()

function UpdateConvars()

	local World = game.GetWorld( )

	if SERVER then
		if GetConVarNumber("sv_css_enable_speedmod") == 1 then
			SlowEnable = true
			World:SetNWBool("SlowEnable",true)
		else
			SlowEnable = false
			World:SetNWBool("SlowEnable",false)
		end
	else
		SlowEnable = World:GetNWBool("SlowEnable",false)
	end
	
end

hook.Add("Think","CSS Network Convars",UpdateConvars)

function SlowDamage(ply,attacker)


	if not ply.GetSlow then
		ply.GetSlow = 0
	end


	if not ply:IsBot() then
		if SlowEnable then
			if ply.GetSlow then
				ply.GetSlow = math.Clamp(ply.GetSlow + 80,0,99)
			end
		end
	end

end

hook.Add("PlayerShouldTakeDamage","CSS Slow Damage",SlowDamage)

function CounterStrikeSpeedMod(ply,mv)

	if not ply:IsBot() then
		if SlowEnable then

			if not ply.GetSlow then
				ply.GetSlow = 0
			end
			
			local WeaponSpeed = 270
			
			if IsValid(ply:GetActiveWeapon()) then
				if ply:GetActiveWeapon():IsScripted() then
					if ply:GetActiveWeapon().Base == "weapon_cs_base" then
						WeaponSpeed = ply:GetActiveWeapon().MoveSpeed
					end
				end
			end
			
			local SpeedMod = ( WeaponSpeed * (100 - ply.GetSlow)/100 ) / 270

			ply.GetSlow = math.Clamp(ply.GetSlow - 3,0,99)

			local Max = ply:GetMaxSpeed() / 10000
			
			--print(mv:GetForwardSpeed() * Max)
			
			mv:SetForwardSpeed( mv:GetForwardSpeed() * SpeedMod * Max)
			mv:SetSideSpeed( mv:GetSideSpeed() * SpeedMod * Max )
			mv:SetUpSpeed( mv:GetUpSpeed() * SpeedMod * Max )

		end
	end

end

hook.Add("PlayerTick","CSS Speed Mod",CounterStrikeSpeedMod)