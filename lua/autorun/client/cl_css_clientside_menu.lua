surface.CreateFont("TitleFont", {size = 30, weight = 400, antialias = true, font = "Arial"})
surface.CreateFont("SliderFont", {size = 15, weight = 400, antialias = true, font = "Arial"})
surface.CreateFont("WarningFont", {size = 20, weight = 400, antialias = false, bold = true, outline = true, font = "Arial"})

local count = 1
local ItemTable = {}

	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "TitleFont"
	ItemTable[count]["text"] = "Viewmodel Settings"
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Viewmodel FOV"
	ItemTable[count]["command"] = "cl_css_viewmodel_fov"
	ItemTable[count]["min"] = 30
	ItemTable[count]["max"] = 60
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "TitleFont"
	ItemTable[count]["text"] = "Crosshair Settings"
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "SliderFont"
	ItemTable[count]["text"] = "Crosshair Color"
	ItemTable[count]["height"] = 30
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DColorMixer"
	ItemTable[count]["height"] = 220
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Crosshair Style"
	ItemTable[count]["command"] = "cl_css_crosshair_style"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 5
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Crosshair Length"
	ItemTable[count]["command"] = "cl_css_crosshair_length"
	ItemTable[count]["min"] = 1
	ItemTable[count]["max"] = 20
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Crosshair width"
	ItemTable[count]["command"] = "cl_css_crosshair_width"
	ItemTable[count]["min"] = 1
	ItemTable[count]["max"] = 2
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 40
	count = count + 1

	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable Crosshair Center Dot"
	ItemTable[count]["command"] = "cl_css_crosshair_dot"
	ItemTable[count]["height"] = 25
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable Crosshair Shadow (Width 1 only)"
	ItemTable[count]["command"] = "cl_css_crosshair_shadow"
	ItemTable[count]["height"] = 25
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable Dynamic Crosshairs"
	ItemTable[count]["command"] = "cl_css_crosshair_dynamic"
	ItemTable[count]["height"] = 25
	count = count + 1

	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable Crosshair Smoothing (Requires Dynamic Crosshairs)"
	ItemTable[count]["command"] = "cl_css_crosshair_smoothing"
	ItemTable[count]["height"] = 35
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "Slider"
	ItemTable[count]["name"] = "Smoothing speed multiplier (Requires Crosshair Smoothing)"
	ItemTable[count]["command"] = "cl_css_crosshair_smoothing_mul"
	ItemTable[count]["min"] = 0.01
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 2
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
	ItemTable[count]["text"] = "Enable Custom Slots(Primary in slot 3, secondary in slot 2)"
	ItemTable[count]["command"] = "cl_css_customslots"
	ItemTable[count]["height"] = 25
	count = count + 1

	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Never use ironsights (DOES NOTHING, AS OF NOW :0)"
	ItemTable[count]["command"] = "cl_css_crosshair_neversights"
	ItemTable[count]["height"] = 25
	count = count + 1
	
	
function CSSClientsideWeaponSettings()

	local MenuBase = vgui.Create("DFrame")
		MenuBase:SetSize(ScrH()/2,ScrH()/2)
		MenuBase:SetPos(ScrH()/4,ScrH()/4)
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
		elseif Table["type"] == "DColorMixer" then

			DermaObj[k]:SetPos(15, height)
			DermaObj[k]:SetSize(ScrH()/4,200)
			DermaObj[k]:SetPalette( true )
			DermaObj[k]:SetAlphaBar( true ) 
			DermaObj[k]:SetWangs( true )
			
			DermaObj[k]:SetColor( Color( 
								GetConVarNumber("cl_css_crosshair_color_r"), 
								GetConVarNumber("cl_css_crosshair_color_g"), 
								GetConVarNumber("cl_css_crosshair_color_b"),
								GetConVarNumber("cl_css_crosshair_color_a") 
								) )
			
			DermaObj[k]:SetConVarR("cl_css_crosshair_color_r")
			DermaObj[k]:SetConVarG("cl_css_crosshair_color_g")
			DermaObj[k]:SetConVarB("cl_css_crosshair_color_b")
			DermaObj[k]:SetConVarA("cl_css_crosshair_color_a")
		
		
		
		end
		
		height = height + Table["height"]

	end


	
end

concommand.Add("cssplayersettings", CSSClientsideWeaponSettings)

function CSS_ContextMenuOpen()

	--CSSClientsideWeaponSettings()


end

hook.Add("ContextMenuOpen","CSS Context Menu",CSS_ContextMenuOpen)

