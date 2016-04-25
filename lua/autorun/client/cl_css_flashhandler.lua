local SmokeMat = Material("skybox/italydn")

function CSSFlashEffect()

	local ply = LocalPlayer()
	
	

	if ply.IsBlinded == true then
	

		if ply.BlindAmount > 0 then
		
			local Mod = math.Clamp(ply.BlindAmount,0,1)
			
			--[[
			if Mod >= 0.5 then
				DrawMaterialOverlay( "effects/flashbang_white", 1 )
			end
			
			DrawMotionBlur( 0.1, Mod , 100 )
			--]]
			
			--surface.SetDrawColor( Color(255,255,255,255*Mod) )
			--surface.DrawRect( 0, 0, ScrW(), ScrH() )
			
			
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
			
			--print(Mod)
			
			ply.BlindAmount = ply.BlindAmount - FrameTime()*0.5

		else
		
			ply.BlindAmount = 0
			ply.IsBlinded = false
		
		end

	end
	
	
	local IsInSmoke = false
	
	local SmokeAmount = 0
	
	for k,v in pairs(ents.FindByClass("ent_cs_smoke")) do
		local Distance = ply:GetPos():Distance(v:GetPos())
		if Distance <= 125 and v:GetNWBool("IsDetonated",false) then
			IsInSmoke = true
			SmokeAmount = SmokeAmount + (125 - Distance)*2
		end
	end
	
	if IsInSmoke then
	
		local ModAmount = math.Clamp(SmokeAmount / 100,0,1)
	
		surface.SetDrawColor( Color(200,200,200,ModAmount*255) )
		surface.DrawTexturedRect( 0, 0, ScrW(), ScrH() )

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



