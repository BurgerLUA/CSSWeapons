local SmokeMat = Material("skybox/italydn")

local ActualSmokeAmount = 0


function CSSFlashEffect()

	local ply = LocalPlayer()
	
	

	if ply.IsBlinded == true then
	

		if ply.BlindAmount > 0 then
		
			local Mod = math.Clamp(ply.BlindAmount,0,1)
			
			local Settings = {
				[ "$pp_colour_brightness" ] = Mod,
				[ "$pp_colour_contrast" ] = 1,
				[ "$pp_colour_colour" ] = 1,
				[ "$pp_colour_addr" ] = 0,
				[ "$pp_colour_addg" ] = 0,
				[ "$pp_colour_addb" ] = 0,
				[ "$pp_colour_mulr" ] = 0,
				[ "$pp_colour_mulg" ] = 0,
				[ "$pp_colour_mulb" ] = 0
			}
			
			DrawColorModify( Settings )
			
			ply.BlindAmount = ply.BlindAmount - FrameTime()*0.5

		else
		
			ply.BlindAmount = 0
			ply.IsBlinded = false
		
		end

	end
	
	
	local IsInSmoke = false
	
	local SmokeAmount = 0
	local Range = 125
	
	for k,v in pairs(ents.FindByClass("ent_cs_smoke")) do
		local Distance = ply:GetPos():Distance(v:GetPos())
		if Distance <= Range and v:GetNWBool("IsDetonated",false) then
			IsInSmoke = true
			SmokeAmount = SmokeAmount + math.Clamp(Range - Distance,0,Range) / Range
		end
	end
	
	--print(SmokeAmount)
	
	
	if IsInSmoke or ActualSmokeAmount ~= 0 then
	
		local DesiredModAmount = math.Clamp(SmokeAmount*2,0,1)
		
		if ActualSmokeAmount < DesiredModAmount then -- Is less than
			ActualSmokeAmount = math.min(DesiredModAmount,ActualSmokeAmount + FrameTime())
		elseif ActualSmokeAmount > DesiredModAmount then -- Is greater than
			ActualSmokeAmount = math.max(DesiredModAmount,ActualSmokeAmount - FrameTime())
		end
		
		
	
		surface.SetMaterial(SmokeMat)
		surface.SetDrawColor( Color(200,200,200,ActualSmokeAmount*255) )
		--surface.DrawTexturedRect( 0, 0, ScrW(), ScrH() )
		surface.DrawRect( 0, 0, ScrW(), ScrH() )

	end

	
end

hook.Add("RenderScreenspaceEffects","CSS: Render Screenspace Effects",CSSFlashEffect)


function CSS_HiddenFunction(ply)

	if GetConVar("sv_cheats"):GetFloat() == 1 and GetConVar("cl_css_drawhitboxes"):GetFloat() == 1 then

		if ply == LocalPlayer() and not ply:ShouldDrawLocalPlayer() then return end
		
		local numHitBoxGroups = ply:GetHitBoxGroupCount()

		for group=0, numHitBoxGroups - 1 do
			local numHitBoxes = ply:GetHitBoxCount( group )
			for hitbox=0, numHitBoxes - 1 do
				local bone = ply:GetHitBoxBone( hitbox, group )
				local Mins, Maxs = ply:GetHitBoxBounds( hitbox,group )
				
				local Pos,Ang = ply:GetBonePosition(bone)
				
				render.DrawWireframeBox(Pos,Ang,Mins,Maxs,Color(255,255,255,255), true )
				
			end
		end
		
	end

end

hook.Add("PostPlayerDraw","CSS_HiddenFunction",CSS_HiddenFunction)



function CSS_PlayerFootStep(ply,pos,foot,sound,volume,filter)
	--[[
	if IsValid(ply) then
		local Weapon = ply:GetActiveWeapon()	
		if IsValid(Weapon) then
			if Weapon:IsScripted() and Weapon.Base == "weapon_cs_base" then
				Weapon.DynamicScopeDesiredOffsetX = (foot - 0.5)*2 * 100
				Weapon.DynamicScopeDesiredOffsetY = math.random(-1,1) * 100
			end
		end
	end
	--]]
end

hook.Add("PlayerFootstep","CSS_PlayerFootStep",CSS_PlayerFootStep)


