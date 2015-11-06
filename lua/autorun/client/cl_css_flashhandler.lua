function CSSFlashEffect()

	local ply = LocalPlayer()
	
	if ply.IsBlinded == true then

		if ply.BlindAmount > 0 then
		
			local Mod = math.Clamp(ply.BlindAmount / 3,0,1)
			
			if Mod >= 1 then
				DrawMaterialOverlay( "effects/flashbang_white", 1 )
			end
			
			DrawMotionBlur( 0.1, math.Clamp(ply.BlindAmount / 3,0,1) , 100 )
			
			ply.BlindAmount = ply.BlindAmount - FrameTime()

		else
		
			ply.BlindAmount = 0
			ply.IsBlinded = false
		
		end

	end

end

hook.Add("RenderScreenspaceEffects","CSS: Render Screenspace Effects",CSSFlashEffect)