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

local ForwardMove = 0
local SideMove = 0

function CSSSpeedModMovement(ply,mv)

	if not ply:IsBot() then
	
	
		if SlowEnable then

			if not ply.GetSlow then
				ply.GetSlow = 0
			end
			
			local WeaponSpeed = 270
			
			local CurrentWeapon = ply:GetActiveWeapon()
			
			if IsValid(CurrentWeapon) then
				if CurrentWeapon:IsScripted() then
					if CurrentWeapon.Base == "weapon_cs_base" then
						WeaponSpeed = CurrentWeapon.MoveSpeed
						if CurrentWeapon.HasScope == true then
							if CurrentWeapon:GetIsZoomed() then
								if CurrentWeapon.IgnoreZoomSlow == false then
									if CurrentWeapon.ZoomAmount > 5 then
										WeaponSpeed = WeaponSpeed * 0.1
									else
										WeaponSpeed = WeaponSpeed * 0.75
									end
								end
							end
						end
					end
				end
			end
			
			local SpeedMod = ( WeaponSpeed * (100 - ply.GetSlow)/100 ) / 270

			ply.GetSlow = math.Clamp(ply.GetSlow - 1000*engine.TickInterval(),0,99)

			--if SlowEnable == false then
			
				ForwardMove = mv:GetForwardSpeed()
				SideMove = mv:GetSideSpeed()
				
			--else
				--[[
				local SprintMod = ply:GetRunSpeed()/270
				
				if mv:KeyDown(IN_SPEED) then
					SprintMod = ply:GetRunSpeed()/ply:GetWalkSpeed()
				end
				
				local Max = 10000 * engine.TickInterval() * SprintMod
				local Acc = 1000 * engine.TickInterval() * 0.4
				local Dec = 1000 * engine.TickInterval() * 0.4

				ForwardMove = math.Clamp(ForwardMove + math.Clamp(mv:GetForwardSpeed(),-Acc,Acc),-Max,Max)
				SideMove = math.Clamp(SideMove + math.Clamp(mv:GetSideSpeed(),-Acc,Acc),-Max,Max)

				if mv:GetForwardSpeed() == 0 then
					if ForwardMove < 0 then
						ForwardMove = ForwardMove + Dec*SprintMod*(ply:GetWalkSpeed()/270)
					elseif ForwardMove > 0 then
						ForwardMove = ForwardMove - Dec*SprintMod*(ply:GetWalkSpeed()/270)
					end
				end

				if mv:GetSideSpeed() == 0 then
					if SideMove < 0 then
						if SideMove > -Dec then
							SideMove = 0
						else
							SideMove = SideMove + Dec*SprintMod*(ply:GetWalkSpeed()/270)
						end
					elseif SideMove > 0 then
						if SideMove < Dec then
							SideMove = 0
						else
							SideMove = SideMove - Dec*SprintMod*(ply:GetWalkSpeed()/270)
						end
					end
				end
				--]]
			--end
			
			mv:SetForwardSpeed( ForwardMove * SpeedMod)
			mv:SetSideSpeed( SideMove * SpeedMod)

		end
	end

end

hook.Add("PlayerTick","CSS: SpeedMod Movement",CSSSpeedModMovement)