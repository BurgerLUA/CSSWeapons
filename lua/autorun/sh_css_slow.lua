local SlowEnable = false

local AllFCVar = FCVAR_REPLICATED + FCVAR_ARCHIVE + FCVAR_NOTIFY + FCVAR_SERVER_CAN_EXECUTE

if SERVER then
	CreateConVar("sv_css_enable_speedmod", "1", AllFCVar , "1 enables speed mod, 0 disables. Default is 1." )
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
			local CurrentWeapon = ply:GetActiveWeapon()
			
			if IsValid(CurrentWeapon) then
			
				if CurrentWeapon.MoveSpeed then
			
					if CurrentWeapon:IsScripted() then
						if CurrentWeapon.MoveSpeed then
							WeaponSpeed = CurrentWeapon.MoveSpeed
						end
					end

					local SpeedMod = ( WeaponSpeed * (100 - ply.GetSlow)/100 ) / 270

					ply.GetSlow = math.Clamp(ply.GetSlow - 1000*engine.TickInterval(),0,99)

					local WalkMul = 1
				
					local BaseSpeed = ply:GetWalkSpeed()
				
					if mv:KeyDown(IN_SPEED) then
						BaseSpeed = ply:GetRunSpeed()
					elseif mv:KeyDown(IN_WALK) then
						WalkMul = 0.5
					end

					local ForwardMove = math.Clamp(mv:GetForwardSpeed(),-1,1) * BaseSpeed
					local SideMove = math.Clamp(mv:GetSideSpeed(),-1,1) * BaseSpeed
					
					mv:SetForwardSpeed( ForwardMove * SpeedMod * WalkMul)
					mv:SetSideSpeed( SideMove * SpeedMod * WalkMul)
					
				end
			
			end

		end
	end

end

hook.Add("PlayerTick","CSS: SpeedMod Movement",CSSSpeedModMovement)