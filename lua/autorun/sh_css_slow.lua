local SlowEnable = false

--print("----------------")
--print("Setting SlowEnable to: (This should be false) ")
--print(SlowEnable)

if SERVER then
	CreateConVar("sv_css_enable_speedmod", "0", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "1 enables speed mod, 0 disables. Default is 1." )
	
	--print("----------------")
	--print("Creating Convar, setting to: (this should be 1)")
	--print(GetConVarNumber("sv_css_enable_speedmod"))
	
end

local Message = true
local Message2 = true

function CSSUpdateConvars()

	local World = game.GetWorld( )
	
	if Message2 == true then
		--print("I AM THINKING")
		Message2 = false
	end

	if not GetConVarNumber("sv_css_enable_speedmod") then
		--print("WHERE THE FUCK IS THE CONVAR???")
	return end
	
	
	
	if SERVER then
		if GetConVarNumber("sv_css_enable_speedmod") == 1 then
		
			SlowEnable = true
			World:SetNWBool("SlowEnable",true)
			
			if Message == true then
			
				--print("----------------")
				--print("Setting ClientSide SlowEnable to: (This should be true)")
				--print(SlowEnable)
				
				Message = false
			end
			
		else
		
			SlowEnable = false
			World:SetNWBool("SlowEnable",false)
			
			if Message == true then
			
				--print("----------------")
				--print("Setting ClientSide SlowEnable to: (This should be true)")
				--print(SlowEnable)
				
				Message = false
			end
			
		end
	else
		SlowEnable = World:GetNWBool("SlowEnable",false)
		
		if Message == true then
			
			--print("----------------")
			--print("ClientSide SlowEnable is: (This should be true)")
			--print(SlowEnable)
				
			Message = false
		end
		
	end
	
end

hook.Add("Think","CSS: SpeedMod ConVars",CSSUpdateConvars)

function CSSSlowDamage(ply,attacker)

	--print("HIT")

	if not ply.GetSlow then
		ply.GetSlow = 0
	end

	if not ply:IsBot() then
		if SlowEnable then
			if ply.GetSlow then
				ply.GetSlow = math.Clamp(ply.GetSlow + 80,0,99)
				
				--print(ply:Nick() .. " slowed for " .. ply.GetSlow .. "%")
				
			end
		end
	end
	
	--print(ply.GetSlow)
	--print(ply.SlowEnable)

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

			local Max = ply:GetMaxSpeed() / 10000
			
			--print(mv:GetForwardSpeed() * Max)
			
			mv:SetForwardSpeed( mv:GetForwardSpeed() * SpeedMod * Max)
			mv:SetSideSpeed( mv:GetSideSpeed() * SpeedMod * Max )
			mv:SetUpSpeed( mv:GetUpSpeed() * SpeedMod * Max )

		end
	end

end

hook.Add("PlayerTick","CSS: SpeedMod Movement",CSSSpeedModMovement)