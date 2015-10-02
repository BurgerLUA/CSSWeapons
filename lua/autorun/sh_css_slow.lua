local SlowEnable = false

if SERVER then
	CreateConVar("sv_css_enable_speedmod", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "1 enables speed mod, 0 disables. Default is 1." )
end

local NextThink = 0

function CSSUpdateConvars()

	if SERVER then

		SlowEnable = (GetConVarNumber("sv_css_enable_speedmod") == 1)
		SetGlobalBool( "SlowEnable", SlowEnable )	

	else
		SlowEnable = GetGlobalBool( "SlowEnable", false )
	end
	
	NextThink = CurTime() + 1
	
end

hook.Add("Think","CSS: SpeedMod ConVars",CSSUpdateConvars)

function CSSSlowDamage(ply,attacker)

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

hook.Add("PlayerShouldTakeDamage","CSS: Slow Damage",CSSSlowDamage)

function CSSSpeedModMovement(ply,mv)

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

			local ForwardMove = mv:GetForwardSpeed()
			local SideMove = mv:GetSideSpeed()
			
			if ForwardMove == 10000 then
				if mv:KeyDown(IN_SPEED) then
					ForwardMove = ply:GetRunSpeed()
				else
					ForwardMove = ply:GetWalkSpeed()
				end
			elseif ForwardMove == -10000 then
				if mv:KeyDown(IN_SPEED) then
					ForwardMove = -ply:GetRunSpeed()
				else
					ForwardMove = -ply:GetWalkSpeed()
				end
			end

			if SideMove == 10000 then
				if mv:KeyDown(IN_SPEED) then
					SideMove = ply:GetRunSpeed()
				else
					SideMove = ply:GetWalkSpeed()
				end
			elseif SideMove == -10000 then
				if mv:KeyDown(IN_SPEED) then
					SideMove = -ply:GetRunSpeed()
				else
					SideMove = -ply:GetWalkSpeed()
				end
			end
			
			mv:SetForwardSpeed( ForwardMove * SpeedMod)
			mv:SetSideSpeed( SideMove * SpeedMod)

		end
	end

end

hook.Add("PlayerTick","CSS: SpeedMod Movement",CSSSpeedModMovement)