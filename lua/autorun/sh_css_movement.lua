AddCSLuaFile()

local AllFCVar = FCVAR_REPLICATED + FCVAR_ARCHIVE + FCVAR_NOTIFY + FCVAR_SERVER_CAN_EXECUTE

local EnableSpeedmod = CreateConVar("sv_css_enable_speedmod", "1", AllFCVar , "1 enables speed mod, 0 disables. Default is 1." )
local EnableSprintmod = CreateConVar("sv_css_enable_sprintmod", "0", AllFCVar , "1 enables sprint mod, 0 disables. Default is 0." )
local EnableComp = CreateConVar("sv_css_enable_movecompatibility", "0", AllFCVar , "1 enables sprint mod, 0 disables. Default is 0." )

function CSSSpeedModMovement(ply,mv)
	
	if EnableSpeedmod:GetBool() then -- Handled Somewhere else, stored var that updates every time a convar is changed.
	
		local ActiveWeapon = ply:GetActiveWeapon()
		
		local BaseSpeed = 250
		local WeaponSpeed = 250
		
		if ActiveWeapon and ActiveWeapon ~= NULL and ActiveWeapon.CSSMoveSpeed then
			WeaponSpeed = ActiveWeapon.CSSMoveSpeed
		end

		if WeaponSpeed ~= -1 then
			local PreviousLimit = mv:GetMaxSpeed()
			local SpeedMod = (WeaponSpeed / BaseSpeed)
			local PrevMaxSpeed = mv:GetMaxSpeed()
			mv:SetMaxSpeed( PreviousLimit * SpeedMod )
			mv:SetMaxClientSpeed( PreviousLimit * SpeedMod )
		end

	end

end

hook.Add("Move","CSS: SpeedMod Movement",CSSSpeedModMovement)

function CSS_ShouldCollide(ent1,ent2)
	if ent1:GetClass() == "ent_cs_ammo_base" or ent1:GetClass() == "ent_cs_droppedweapon" then
		if ent1:GetClass() == ent2:GetClass() then
			return false
		end
	end
end

hook.Add("ShouldCollide","CSS_ShouldCollide",CSS_ShouldCollide)
