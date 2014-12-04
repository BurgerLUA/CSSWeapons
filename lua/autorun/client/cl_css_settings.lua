
surface.CreateFont("TitleFont", {size = 30, weight = 400, antialias = true, font = "Arial"})
surface.CreateFont("SliderFont", {size = 15, weight = 400, antialias = true, font = "Arial"})
surface.CreateFont("WarningFont", {size = 20, weight = 400, antialias = false, bold = true, outline = true, font = "Arial"})

local count = 1
local ItemTable = {}
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "TitleFont"
	ItemTable[count]["text"] = "Weapon Settings"
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Damage Multiplier (Higher means more damage)"
	ItemTable[count]["command"] = "sv_css_damage_scale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 1
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Recoil Multiplier (Higher means weapons have a bigger kickback)"
	ItemTable[count]["command"] = "sv_css_recoil_scale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 1
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Base Spread Multiplier (Higher means weapons have larger cone)"
	ItemTable[count]["command"] = "sv_css_cone_scale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 1
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Heat Spread Multiplier (Higher means weapons are more inaccurate when firing too much)"
	ItemTable[count]["command"] = "sv_css_heat_scale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 1
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Heat Time Multiplier (Higher means the cooldown stage is longer) "
	ItemTable[count]["command"] = "sv_css_cooltime_scale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 1
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Cooldown Amount Multiplier (Higher means the weapons cools faster)"
	ItemTable[count]["command"] = "sv_css_cooldown_scale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 1
	ItemTable[count]["height"] = 40
	count = count + 1
	
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Movement Spread Multiplier (Higher means the cone is larger when moving)"
	ItemTable[count]["command"] = "sv_css_velcone_scale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 1
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "TitleFont"
	ItemTable[count]["text"] = "Bullet Penetration Settings"
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable Bullet Penetration"
	ItemTable[count]["command"] = "sv_css_enable_penetration"
	ItemTable[count]["height"] = 25
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Damage loss per unit penetrated"
	ItemTable[count]["command"] = "sv_css_penetration_scale"
	ItemTable[count]["min"] = 0.25
	ItemTable[count]["max"] = 5
	ItemTable[count]["decimals"] = 2
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "TitleFont"
	ItemTable[count]["text"] = "Ammo Settings"
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Give loaded weapons"
	ItemTable[count]["command"] = "sv_css_ammo_loaded"
	ItemTable[count]["height"] = 25
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Give spare ammo"
	ItemTable[count]["command"] = "sv_css_ammo_givespare"
	ItemTable[count]["height"] = 25
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "TitleFont"
	ItemTable[count]["text"] = "C4 Settings"
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "C4 Fuse Length (Seconds)"
	ItemTable[count]["command"] = "sv_css_c4_time_explosion"
	ItemTable[count]["min"] = 5
	ItemTable[count]["max"] = 300
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "C4 Defuse Length (Seconds)"
	ItemTable[count]["command"] = "sv_css_c4_time_defuse"
	ItemTable[count]["min"] = 1
	ItemTable[count]["max"] = 60
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Explosion Damage"
	ItemTable[count]["command"] = "sv_css_c4_damage"
	ItemTable[count]["min"] = 1
	ItemTable[count]["max"] = 1000
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Explosion Radius (Source Units)"
	ItemTable[count]["command"] = "sv_css_c4_radius"
	ItemTable[count]["min"] = 100
	ItemTable[count]["max"] = 10000
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable Non-Admin Pick-up"
	ItemTable[count]["command"] = "sv_css_enable_c4nonadmin"
	ItemTable[count]["height"] = 25
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable C4 Notifications"
	ItemTable[count]["command"] = "sv_css_c4_notifyplayers"
	ItemTable[count]["height"] = 25
	count = count + 1
	
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable Explosion Smoke"
	ItemTable[count]["command"] = "sv_css_enable_c4smoke"
	ItemTable[count]["height"] = 25
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "TitleFont"
	ItemTable[count]["text"] = "Weapon Drop Settings"
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Drop CSS Ammo/Weapons upon death"
	ItemTable[count]["command"] = "sv_css_enable_drops"
	ItemTable[count]["height"] = 25
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Automatic Weapon Clean-up Time"
	ItemTable[count]["command"] = "sv_css_timed_drops"
	ItemTable[count]["height"] = 25
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Clean-up Time (Seconds)"
	ItemTable[count]["command"] = "sv_css_drop_timer"
	ItemTable[count]["min"] = 5
	ItemTable[count]["max"] = 300
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "TitleFont"
	ItemTable[count]["text"] = "Other Settings"
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "AUG and SG552 Aim Like Counter-Strike"
	ItemTable[count]["command"] = "sv_css_enable_csszoom"
	ItemTable[count]["height"] = 25
	count = count + 1
	

function CSSServersideWeaponSettings()
	
	local MenuBase = vgui.Create("DFrame")
		MenuBase:SetSize(ScrW()/2,ScrH()/2)
		MenuBase:SetPos(0,0)
		MenuBase:SetTitle("Counter Strike Source Server Settings")
		MenuBase:SetDeleteOnClose(false)
		MenuBase:SetDraggable( false )
		MenuBase:SetBackgroundBlur(false)
		MenuBase:Center(true)
		MenuBase:SetVisible( true )
		MenuBase.Paint = function()
			draw.RoundedBox( 8, 0, 0, MenuBase:GetWide(), MenuBase:GetTall(), Color( 0, 0, 0, 150 ) )
		end
		MenuBase:MakePopup()
		
	--[[
	local MenuBar = vgui.Create("DMenuBar",MenuBase)
		MenuBar:DockMargin( -3, -6, -3, 0 )
		
		local MenuBar_File = MenuBar:AddMenu( "File" )
		MenuBar_File:AddOption( "Send", SendCommandsToServer ):SetIcon( "icon16/page_white_go.png" )
	--]]
	
	local ScrollBar = vgui.Create( "DScrollPanel", MenuBase )
		ScrollBar:SetSize( MenuBase:GetWide() - 50, MenuBase:GetTall() - 75 )
		ScrollBar:SetPos( 25,50 )
		
	local Base1 = vgui.Create("DPanel", ScrollBar)
		Base1:SetPos(0,0)
		Base1:SetSize(MenuBase:GetWide() - 50, 1000)
		Base1:SizeToContents()
		Base1.Paint = function()
			draw.RoundedBox( 8, 0, 0, Base1:GetWide(), Base1:GetTall(), Color( 255, 255, 255, 255 ) )
		end

	----
	----
	----
	
	local DermaTitle = {}
	local DermaObj = {}
	
	
	local height = 0
	
	for k,v in pairs(ItemTable) do
		
		local Num = k
		local Table = v

		DermaObj[k] = vgui.Create(Table["type"],Base1)
		DermaObj[k]:SetPos(5, height)
		
		
		if Table["type"] == "Slider" then
			DermaTitle[k] = vgui.Create("DLabel",Base1)
			DermaTitle[k]:SetPos(25, height - 10)
			DermaTitle[k]:SetFont("SliderFont")
			DermaTitle[k]:SetColor(Color(0,0,0,255))
			DermaTitle[k]:SetText( Table["name"] )
			DermaTitle[k]:SizeToContents()
			
			
			
			--Located in Client, this is called when specific Derma Objects generate. Table["command"] is equal to a command like sv_css_recoil_scale
			--CSSAskForCommand(Table["command"])
			
			
			--print("DERMA:" .. CSSAskForCommand(Table["command"]))
			
			DermaObj[k]:SetWide( Base1:GetWide() - 10 - 20 )
			DermaObj[k]:SetValue(GetConVarNumber(Table["command"]))
			DermaObj[k]:SetMin( Table["min"] ) -- Minimum number of the slider
			DermaObj[k]:SetMax( Table["max"] ) -- Maximum number of the slider
			DermaObj[k]:SetDecimals( Table["decimals"] ) -- Sets a decimal. Zero means it's a whole number
			DermaObj[k]:SetConVar( Table["command"] ) -- Set the convar
			
		elseif Table["type"] == "DLabel" then
		
			DermaObj[k]:SetFont( Table["font"])
			DermaObj[k]:SetColor(Color(0,0,0,255))
			DermaObj[k]:SetText( Table["text"] )
			DermaObj[k]:SizeToContents()
			
		elseif Table["type"] == "DCheckBoxLabel" then
			
			DermaObj[k]:SetText( Table["text"] )
			DermaObj[k]:SetTextColor( Color(0, 0, 0, 255) )
			DermaObj[k]:SizeToContents()
			DermaObj[k]:SetPos(15, height)
			
			DermaObj[k]:SetConVar( Table["command"] )
		
		end
		
		height = height + Table["height"]

	end
	
	--[[
	function SendCommandsToServer()
		for k,v in pairs(ItemTable) do
			local Table = v
			
			local Value1 = DermaObj[k]:GetValue()
			
			local Command = Table["command"]
			
			if type(Value1) == "number" then
				print(Command)
				CSSNetCommandSend(Command,Value1)
			end

		end
	end
	--]]
	
	
	
end

concommand.Add("cssadminsettings", CSSServersideWeaponSettings)


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
	--[[
	local StaticViewmodelCheckBox = vgui.Create( "DCheckBoxLabel", Base1 )
		StaticViewmodelCheckBox:SetPos( 10,80)
		StaticViewmodelCheckBox:SetText( "Always use CSS hands" )
		StaticViewmodelCheckBox:SetTextColor( Color(0, 0, 0, 255) )
		StaticViewmodelCheckBox:SetConVar( "cl_css_csshands" ) -- ConCommand must be a 1 or 0 value
		StaticViewmodelCheckBox:SizeToContents() -- Make its size to the contents. Duh?	
	--]]
	
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
		CModelCheckBox:SetText( "Use CModels?" )
		CModelCheckBox:SetTextColor( Color(0, 0, 0, 255) )
		CModelCheckBox:SizeToContents()
		CModelCheckBox:SetPos(15, 160 + 250 + 30 + 10 + 10 + 40 + 40 + 40)
		CModelCheckBox:SetConVar( "cl_css_viewmodel_cmodel" )
		
		
	
	
	
end

concommand.Add("cssplayersettings", CSSClientsideWeaponSettings)

--[[
function CSSNetCommandSend(command,value)

	if not (LocalPlayer():IsAdmin() or LocalPlayer:IsSuperAdmin()) then
	
	--LocalPlayer:ChatPrint("You need to be an admin to modify these settings")
	
	return
	end

	print("[CLIENT]: Telling the server to set " .. command .. " to " .. value .. "...")
	
	net.Start("CSSNetCommand")
		net.WriteString(command)
		net.WriteFloat(value)
	net.SendToServer()
	
end




--Located in Client, this is the function that asks for the command's value.

function CSSAskForCommand(command,callback)
	
	local value = -1

	net.Start("CSSAskForCommand")
		net.WriteString(command)
	net.SendToServer()
	
	net.Receive("CSSGetCommand", callback )

	if value == -1 then
		print("[CLIENT]: Asking what the value of " .. command .. " is..." )
	else
		print("[CLIENT]: The value of the server's " .. command .. " is " .. value .. "." )
	end
	
	if callback ~= true then
		CSSAskForCommand(command,true)
		value = net.ReadFloat()
		print(value)
	end
	
	
	
	return value
	
end
--]]


