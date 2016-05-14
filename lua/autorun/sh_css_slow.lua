AddCSLuaFile()

local AllFCVar = FCVAR_REPLICATED + FCVAR_ARCHIVE + FCVAR_NOTIFY + FCVAR_SERVER_CAN_EXECUTE

if SERVER then
	CreateConVar("sv_css_enable_speedmod", "1", AllFCVar , "1 enables speed mod, 0 disables. Default is 1." )
end

function CSS_PostGamemodeLoaded()
	SetGlobalBool("css_slowenable", GetConVar("sv_css_enable_speedmod"):GetFloat() == 1)
end

hook.Add("PostGamemodeLoaded","CSS_PostGamemodeLoaded",CSS_PostGamemodeLoaded)

cvars.AddChangeCallback("sv_css_enable_speedmod", function( convar_name, value_old, value_new )
	SetGlobalBool("css_slowenable",value_new == 1)
end)

function CSSSpeedModMovement(ply,mv,cmd)

	if GetGlobalBool("css_slowenable",0) == 1 then

		local WeaponSpeed = ply:GetNWFloat("CSS_Speed",-1)
		
		if WeaponSpeed ~= -1 then
		
			local SpeedMod = (WeaponSpeed / 250)

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
			mv:SetForwardSpeed( ForwardSpeed )
			mv:SetSideSpeed( SideSpeed )
			
		end

	end

end

hook.Add("SetupMove","CSS: SpeedMod Movement",CSSSpeedModMovement)

function CSS_PlayerSwitchWeapon(ply,oldWeapon,newWeapon)

	local Speed = -1
	
	if newWeapon.MoveSpeed then
		Speed = newWeapon.MoveSpeed
	end

	ply:SetNWFloat("CSS_Speed",Speed)

end

hook.Add("PlayerSwitchWeapon","CSS_PlayerSwitchWeapon",CSS_PlayerSwitchWeapon)

function CSS_ShouldCollide(ent1,ent2)

	if ent1:GetClass() == "ent_cs_ammo_base" or ent1:GetClass() == "ent_cs_droppedweapon" then
		if ent1:GetClass() == ent2:GetClass() then
			return false
		end
	end

end

hook.Add("ShouldCollide","CSS_ShouldCollide",CSS_ShouldCollide)

