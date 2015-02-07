surface.CreateFont("TitleFont", {size = 30, weight = 400, antialias = true, font = "Arial"})
surface.CreateFont("SliderFont", {size = 15, weight = 400, antialias = true, font = "Arial"})
surface.CreateFont("WarningFont", {size = 20, weight = 400, antialias = false, bold = true, outline = true, font = "Arial"})

function CSSClientsideWeaponSettings()

	local MenuBase = vgui.Create("DFrame")
		MenuBase:SetSize(ScrH()/2,ScrH()/2)
		MenuBase:SetPos(0,0)
		MenuBase:SetTitle("Counter Strike Source Client Settings")
		MenuBase:SetDeleteOnClose(false)
		MenuBase:SetDraggable( true )
		MenuBase:SetBackgroundBlur(false)
		--MenuBase:Center(true)
		MenuBase:SetVisible( true )
		MenuBase.Paint = function()
			draw.RoundedBox( 8, 0, 0, MenuBase:GetWide(), MenuBase:GetTall(), Color( 0, 0, 0, 150 ) )
		end
		MenuBase:MakePopup()
		
	
	local ScrollBar = vgui.Create( "DScrollPanel", MenuBase )
		ScrollBar:SetSize( MenuBase:GetWide() - 50, MenuBase:GetTall() - 50 )
		ScrollBar:SetPos( 25,25 )
	
	
	local Base1 = vgui.Create("DPanel", ScrollBar)
		Base1:SetPos(0,0)
		Base1:SetSize(MenuBase:GetWide() - 50, 1000)
		Base1:SizeToContents()
		Base1.Paint = function()
			draw.RoundedBox( 8, 0, 0, Base1:GetWide(), Base1:GetTall(), Color( 255, 255, 255, 255 ) )
		end
	
	local Title1 = vgui.Create("DLabel", Base1)
		Title1:SetPos(5,5)
		Title1:SetFont("TitleFont")
		Title1:SetColor(Color(0,0,0,255))
		Title1:SetText( "VIEWMODEL SETTINGS" )
		Title1:SizeToContents()
		
	local ViewmodelSliderTitle = vgui.Create("DLabel", Base1)
		ViewmodelSliderTitle:SetPos(25,35)
		ViewmodelSliderTitle:SetFont("SliderFont")
		ViewmodelSliderTitle:SetColor(Color(0,0,0,255))
		ViewmodelSliderTitle:SetText( "Weapon FOV" )
		ViewmodelSliderTitle:SizeToContents()
	
	local ViewmodelSlider = vgui.Create( "Slider", Base1 )
		ViewmodelSlider:SetPos( 5,40 )
		ViewmodelSlider:SetWide( Base1:GetWide() - 10 - 20 )
		ViewmodelSlider:SetMin( 10 ) -- Minimum number of the slider
		ViewmodelSlider:SetMax( 90 ) -- Maximum number of the slider
		ViewmodelSlider:SetDecimals( 1 ) -- Sets a decimal. Zero means it's a whole number
		ViewmodelSlider:SetConVar( "cl_css_viewmodel_fov" ) -- Set the convar
	
	local Title1 = vgui.Create("DLabel", Base1)
		Title1:SetPos(5,120)
		Title1:SetFont("TitleFont")
		Title1:SetColor(Color(0,0,0,255))
		Title1:SetText( "CROSSHAIR SETTINGS" )
		Title1:SizeToContents()
	
	local Mixer = vgui.Create( "DColorMixer", Base1 )
		Mixer:SetPos( 5,160 )
		Mixer:SizeToContents()
		Mixer:SetPalette( true ) 		--Show/hide the palette			DEF:true
		Mixer:SetAlphaBar( true ) 		--Show/hide the alpha bar		DEF:true
		Mixer:SetWangs( true )	 		--Show/hide the R G B A indicators 	DEF:true
		Mixer:SetColor( Color( GetConVarNumber("cl_css_crosshair_color_r"),GetConVarNumber("cl_css_crosshair_color_g"),GetConVarNumber("cl_css_crosshair_color_b"), GetConVarNumber("cl_css_crosshair_color_a") ) )--Set the default color
	
	local ColorButton = vgui.Create( "DButton", Base1 )
		ColorButton:SetPos( 10, 160 + 250 )
		ColorButton:SetSize( 250, 30 )
		ColorButton:SetText( "Apply Color" )
		ColorButton.DoClick = function()
			local col = Mixer:GetColor()
			print("Color: " .. col.r .. ",".. col.g .. ",".. col.b .. ",".. col.a)
			RunConsoleCommand("cl_css_crosshair_color_r",col.r)
			RunConsoleCommand("cl_css_crosshair_color_g",col.g)
			RunConsoleCommand("cl_css_crosshair_color_b",col.b)
			RunConsoleCommand("cl_css_crosshair_color_a",col.a)
		end
		
	--[[
	local mat = vgui.Create( "DImage", Base1 )
		mat:SetPos( 20 + 250, 160 )
		mat:SetSize( 64*3, 64*3 )
		mat:SetImage( "vgui/gfx/vgui/crosshair" )	-- Path to material VMT
	--]]
	
	local CrossStyleTitle = vgui.Create("DLabel", Base1)
		CrossStyleTitle:SetPos(25, 160 + 250 + 30 + 10 )
		CrossStyleTitle:SetFont("SliderFont")
		CrossStyleTitle:SetColor(Color(0,0,0,255))
		CrossStyleTitle:SetText( "Crosshair Style" )
		CrossStyleTitle:SizeToContents()
	
	local CrossStyle = vgui.Create( "Slider", Base1 )
		CrossStyle:SetPos( 5, 160 + 250 + 30 + 10 + 10 )
		CrossStyle:SetWide( Base1:GetWide() - 10 - 20 )
		CrossStyle:SetMin( 0 ) -- Minimum number of the slider
		CrossStyle:SetMax( 5 ) -- Maximum number of the slider
		CrossStyle:SetDecimals( 0 ) -- Sets a decimal. Zero means it's a whole number
		CrossStyle:SetConVar( "cl_css_crosshair_style" ) -- Set the convar
	
	local LengthSliderTitle = vgui.Create("DLabel", Base1)
		LengthSliderTitle:SetPos(25, 160 + 250 + 30 + 10 + 40 )
		LengthSliderTitle:SetFont("SliderFont")
		LengthSliderTitle:SetColor(Color(0,0,0,255))
		LengthSliderTitle:SetText( "Crosshair Length" )
		LengthSliderTitle:SizeToContents()
	
	local LengthSlider = vgui.Create( "Slider", Base1 )
		LengthSlider:SetPos( 5, 160 + 250 + 30 + 10 + 10 + 40 )
		LengthSlider:SetWide( Base1:GetWide() - 10 - 20 )
		LengthSlider:SetMin( 1 ) -- Minimum number of the slider
		LengthSlider:SetMax( 30 ) -- Maximum number of the slider
		LengthSlider:SetDecimals( 0 ) -- Sets a decimal. Zero means it's a whole number
		LengthSlider:SetConVar( "cl_css_crosshair_length" ) -- Set the convar
		
	local WidthSliderTitle = vgui.Create("DLabel", Base1)
		WidthSliderTitle:SetPos(25, 160 + 250 + 30 + 10 + 40 + 40)
		WidthSliderTitle:SetFont("SliderFont")
		WidthSliderTitle:SetColor(Color(0,0,0,255))
		WidthSliderTitle:SetText( "Crosshair Width" )
		WidthSliderTitle:SizeToContents()
		
	
	local WidthSlider = vgui.Create( "Slider", Base1 )
		WidthSlider:SetPos( 5, 160 + 250 + 30 + 10 + 10 + 40 + 40 )
		WidthSlider:SetWide( Base1:GetWide() - 10 - 20 )
		WidthSlider:SetMin( 1 ) -- Minimum number of the slider
		WidthSlider:SetMax( 30 ) -- Maximum number of the slider
		WidthSlider:SetDecimals( 0 ) -- Sets a decimal. Zero means it's a whole number
		WidthSlider:SetConVar( "cl_css_crosshair_width" ) -- Set the convar
		
		
	local CModelCheckBox = vgui.Create("DCheckBoxLabel", Base1)
		CModelCheckBox:SetText( "Use Playermodel hands instead of CS:S hands. (Applies next spawn)" )
		CModelCheckBox:SetTextColor( Color(0, 0, 0, 255) )
		CModelCheckBox:SizeToContents()
		CModelCheckBox:SetPos(15, 160 + 250 + 30 + 10 + 10 + 40 + 40 + 40)
		CModelCheckBox:SetConVar( "cl_css_viewmodel_cmodel" )
		
	local CustomSlotsCheckBox = vgui.Create( "DCheckBoxLabel", Base1 )
		CustomSlotsCheckBox:SetText( "Use Custom Slots" )
		CustomSlotsCheckBox:SetTextColor( Color(0, 0, 0, 255) )
		CustomSlotsCheckBox:SizeToContents()
		CustomSlotsCheckBox:SetPos(15, 160 + 250 + 30 + 10 + 10 + 40 + 40 + 40 + 40)
		CustomSlotsCheckBox:SetConVar( "cl_css_customslots" ) 
		
	
		
	if not game.SinglePlayer then
	
		local WModelCheckBox = vgui.Create("DCheckBoxLabel", Base1)
			WModelCheckBox:SetText( "Draw Thirdperson Brass Ejections" )
			WModelCheckBox:SetTextColor( Color(0, 0, 0, 255) )
			WModelCheckBox:SizeToContents()
			WModelCheckBox:SetPos(15, 160 + 250 + 30 + 10 + 10 + 40 + 40 + 40 + 40 + 20)
			WModelCheckBox:SetConVar( "cl_css_shells" )
		
		local WModelCheckBox = vgui.Create("DCheckBoxLabel", Base1)
			WModelCheckBox:SetText( "Draw Thirdperson/Firstperson Mag drops (Requires Additional Addon)" )
			WModelCheckBox:SetTextColor( Color(0, 0, 0, 255) )
			WModelCheckBox:SizeToContents()
			WModelCheckBox:SetPos(15, 160 + 250 + 30 + 10 + 10 + 40 + 40 + 40 + 40 + 20 + 20)
			WModelCheckBox:SetConVar( "cl_css_shells" )	
	
	end
	
	
	
	
	
end

concommand.Add("cssplayersettings", CSSClientsideWeaponSettings)