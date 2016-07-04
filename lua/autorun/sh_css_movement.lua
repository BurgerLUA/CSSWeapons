AddCSLuaFile()

local AllFCVar = FCVAR_REPLICATED + FCVAR_ARCHIVE + FCVAR_NOTIFY + FCVAR_SERVER_CAN_EXECUTE

local EnableSpeedmod = false
local EnableSprintmod = false

CreateConVar("sv_css_enable_speedmod", "1", AllFCVar , "1 enables speed mod, 0 disables. Default is 1." )
CreateConVar("sv_css_enable_sprintmod", "0", AllFCVar , "1 enables sprint mod, 0 disables. Default is 0." )

local NextThink = CurTime() + 5

function CSSSpeedModThink()
	if NextThink <= CurTime() then
		CSS_SpeedModCheck()
		NextThink = CurTime() + 5
	end
end

hook.Add("Think","CSS Speedmod Think",CSSSpeedModThink)

function CSSSpeedModMovement(ply,mv)
	
	if EnableSpeedmod then -- Handled Somewhere else, stored var that updates every time a convar is changed.
	
		local ActiveWeapon = ply:GetActiveWeapon()
		
		local WeaponSpeed = 250
		
		if ActiveWeapon and ActiveWeapon ~= NULL and ActiveWeapon.CSSMoveSpeed then
			WeaponSpeed = ActiveWeapon.CSSMoveSpeed
		end

		if WeaponSpeed ~= -1 then
		
			local SpeedMod = (WeaponSpeed / 250)
			local BaseSpeed = ply:GetWalkSpeed()
			
			if EnableSprintmod then -- Handled Somewhere else, stored var that updates every time a convar is changed.
				BaseSpeed = WeaponSpeed
				SpeedMod = 1
			elseif mv:KeyDown(IN_SPEED) and not mv:KeyDown(IN_DUCK) then
				BaseSpeed = ply:GetRunSpeed()
			end
			
			--if mv:KeyDown(IN_DUCK) then
			if ply:Crouching() then
				SpeedMod = SpeedMod * 0.5
			end
				
			if mv:KeyDown(IN_WALK) then
				SpeedMod = SpeedMod * 0.5
			end
			
			mv:SetMaxSpeed( BaseSpeed * SpeedMod )
			mv:SetMaxClientSpeed( BaseSpeed * SpeedMod )

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


function CSS_SpeedModCheck()
	EnableSpeedmod = GetConVar("sv_css_enable_speedmod"):GetFloat() == 1
	EnableSprintmod = GetConVar("sv_css_enable_sprintmod"):GetFloat() == 1
	--print(EnableSpeedmod,EnableSprintmod)
end

CSS_SpeedModCheck()
