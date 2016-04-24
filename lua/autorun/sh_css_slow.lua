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

function CSSSpeedModMovement(ply,mv,cmd)

	--if not ply:IsBot() then

		if SlowEnable then
			
			local CurrentWeapon = ply:GetActiveWeapon()
			
			if IsValid(CurrentWeapon) then
			
				if CurrentWeapon.MoveSpeed then
			
					local WeaponSpeed = CurrentWeapon.MoveSpeed
					
					local SpeedMod = (WeaponSpeed / 270)

					local WalkMul = 1
					local BaseSpeed = ply:GetWalkSpeed()
				
					if mv:KeyDown(IN_SPEED) then
						BaseSpeed = ply:GetRunSpeed()
					elseif mv:KeyDown(IN_WALK) then
						WalkMul = 0.5
					end
					
					local ForwardMove = math.Clamp(mv:GetForwardSpeed(),-1,1)
					local SideMove = math.Clamp(mv:GetSideSpeed(),-1,1)
				
					local LocalMove = Vector(SideMove,ForwardMove):GetNormalized()

					local ForwardSpeed = LocalMove.y * SpeedMod * WalkMul * BaseSpeed
					local SideSpeed = LocalMove.x * SpeedMod * WalkMul * BaseSpeed
					
					--print(ForwardSpeed)
					
					mv:SetForwardSpeed( ForwardSpeed )
					mv:SetSideSpeed( SideSpeed )
					
				end
			
			end

		end
		
	--end

end

hook.Add("SetupMove","CSS: SpeedMod Movement",CSSSpeedModMovement)


function CSS_ShouldCollide(ent1,ent2)

	if ent1:GetClass() == "ent_cs_ammo_base" or ent1:GetClass() == "ent_cs_droppedweapon" then
		if ent1:GetClass() == ent2:GetClass() then
			return false
		end
	end

end

hook.Add("ShouldCollide","CSS_ShouldCollide",CSS_ShouldCollide)

