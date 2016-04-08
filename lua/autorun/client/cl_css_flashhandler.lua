local SmokeMat = Material("skybox/italydn")


function CSSFlashEffect()

	local ply = LocalPlayer()
	
	if ply.IsBlinded == true then

		if ply.BlindAmount > 0 then
		
			local Mod = math.Clamp(ply.BlindAmount / 3,0,1)
			
			if Mod >= 1 then
				DrawMaterialOverlay( "effects/flashbang_white", 1 )
			else
				DrawMaterialOverlay( "effects/flashbang", Mod )
			end
			
			DrawMotionBlur( 0.1, math.Clamp(ply.BlindAmount / 3,0,1) , 100 )
			
			ply.BlindAmount = ply.BlindAmount - FrameTime()

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