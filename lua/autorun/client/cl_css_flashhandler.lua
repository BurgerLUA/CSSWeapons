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
	
	--[[
	local IsInSmoke = false
	
	for k,v in pairs(ents.FindByClass("ent_cs_smoke")) do
		local Distance = ply:GetPos():Distance(v:GetPos())
		if Distance < 100 then
			IsInSmoke = true
		end
	end
	
	if IsInSmoke then
		DrawMotionBlur( 0.1, 0.5  , 0.025 )
	end
	--]]
	
end

hook.Add("RenderScreenspaceEffects","CSS: Render Screenspace Effects",CSSFlashEffect)