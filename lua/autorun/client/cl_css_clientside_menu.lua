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
	ItemTable[count]["type"] = "DNumSlider"
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
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Crosshair Style"
	ItemTable[count]["command"] = "cl_css_crosshair_style"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 5
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Crosshair Length"
	ItemTable[count]["command"] = "cl_css_crosshair_length"
	ItemTable[count]["min"] = 1
	ItemTable[count]["max"] = 20
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 40
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Crosshair Size Offset"
	ItemTable[count]["command"] = "cl_css_crosshair_offset"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 20
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
	ItemTable[count]["type"] = "DNumSlider"
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
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "I AM A FOOL"
	ItemTable[count]["command"] = "cl_css_crosshair_fool"
	ItemTable[count]["height"] = 25
	ItemTable[count]["special"] = true
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
	
	local UnixApril1 = 1459468800
	local UnixApril2 = 1459555200 + (60*60*12)

	for k,v in pairs(ItemTable) do
		
		local Num = k
		local Table = v

		DermaObj[k] = vgui.Create(Table["type"],Base1)
		DermaObj[k]:SetPos(15, height)
		
		if Table["type"] == "DNumSlider" then
			DermaTitle[k] = vgui.Create("DLabel",Base1)
			DermaTitle[k]:SetPos(25, height - 10)
			DermaTitle[k]:SetFont("SliderFont")
			DermaTitle[k]:SetColor(Color(0,0,0,255))
			DermaTitle[k]:SetText( Table["name"] )
			DermaTitle[k]:SizeToContents()			
			DermaObj[k]:SetWide( Base1:GetWide() - 10 - 20 )
			DermaObj[k]:SetValue(GetConVar(Table["command"]):GetFloat())
			DermaObj[k]:SetMin( Table["min"] ) -- Minimum number of the slider
			DermaObj[k]:SetMax( Table["max"] ) -- Maximum number of the slider
			DermaObj[k]:SetDecimals( Table["decimals"] ) -- Sets a decimal. Zero means it's a whole number
			DermaObj[k]:SetConVar( Table["command"] ) -- Set the convar	
		elseif Table["type"] == "DLabel" then
			DermaObj[k]:SetFont( Table["font"])
			DermaObj[k]:SetColor(Color(0,0,0,255))
			DermaObj[k]:SetText( Table["text"] )
			DermaObj[k]:SizeToContents()
		elseif Table["type"] == "DCheckBoxLabel" and not Table["special"] then
			DermaObj[k]:SetText( Table["text"] )
			DermaObj[k]:SetTextColor( Color(0, 0, 0, 255) )
			DermaObj[k]:SizeToContents()
			DermaObj[k]:SetPos(15, height)
			DermaObj[k]:SetConVar( Table["command"] )
		elseif Table["type"] == "DCheckBoxLabel" and Table["special"] and os.time() >= UnixApril1 and os.time() <= UnixApril2 then
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
								GetConVar("cl_css_crosshair_color_r"):GetFloat(), 
								GetConVar("cl_css_crosshair_color_g"):GetFloat(), 
								GetConVar("cl_css_crosshair_color_b"):GetFloat(),
								GetConVar("cl_css_crosshair_color_a"):GetFloat() 
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

CSS_ContextMenuIsOpen = false

function CSS_ContextMenuOpen()
	CSS_ContextMenuIsOpen = true
end

hook.Add("OnContextMenuOpen","CSS Open Context Menu",CSS_ContextMenuOpen)

function CSS_ContextMenuClose()
	CSS_ContextMenuIsOpen = false
end

hook.Add("OnContextMenuClose","CSS Close Context Menu",CSS_ContextMenuClose)


function CSS_ContextMenuHUDPaint()

	if CSS_ContextMenuIsOpen == true then
	
		local ply = LocalPlayer()
		local x = ScrW()
		local y = ScrH()
		local BasePosX = 192
		local BasePosY = 108
		local Font = DermaLarge
		local FontSize = 36
		
		local weapon = ply:GetActiveWeapon()
		
		if weapon and weapon ~= NULL and weapon.Base == "weapon_cs_base" then
		
			
			-- Start Data
				
				-- Name
				local Name = language.GetPhrase(weapon.Primary.Ammo .. "_ammo") .. " " .. weapon.PrintName .. " | " .. weapon.Category
				
				-- ClipSize
				
				local ClipSize = weapon.Primary.ClipSize
				
				
				-- Damage
				local Damage = 0
				if weapon.WeaponType == "Melee" then
					Damage = weapon.Primary.Damage
				else
					Damage = GetConVar("sv_css_damage_scale"):GetFloat() * weapon.Primary.Damage * weapon.Primary.NumShots
				end
				Damage = math.Round(Damage, 2 )
				
				-- Firerate
				
				local Delay = weapon.Primary.Delay
				local RPM = (1/Delay)*60
				
				-- DPS
				local ClipMod = ClipSize
				if ClipMod == -1 then
					ClipMod = 100000		
				end
				local DPS = math.min( (1/Delay) * Damage , Damage * ClipMod)
				
				
				-- Kill Time
				local KillTime = ( (math.ceil(100/Damage) - 1) * (Delay) )
				
				-- Accuracy
				local Cone = weapon.Primary.Cone
				local NewCone = weapon:HandleCone(Cone,false)
				local BaseAccuracy = 0.1
				local Accuracy = (BaseAccuracy - math.Clamp(NewCone,0,BaseAccuracy)) / BaseAccuracy
				Accuracy = math.Round(Accuracy, 2 )			
				
				

				-- Range
				local FullRange = weapon.DamageFalloff
				local BaseRange = FullRange*2
				local PartialRange = weapon.DamageFalloff
				local ViewDistance = ply:GetEyeTrace().HitPos:Distance(EyePos())
				local MatterScale = GetConVar("sv_css_damagefalloff_scale"):GetFloat()
				
				
			-- End Data
		
			draw.RoundedBox( 8, ScrW()*0.1 - FontSize , ScrH()*0.1 - FontSize, BasePosX*3 + FontSize*2, FontSize*15, Color(0,0,0,200 ) )
		
			local TextColor = Color(239,184,55,255)
			local PrimaryColor = Color(239,184,55,100)
			local SecondaryColor = TextColor
		
			surface.SetFont( "DermaLarge" )
			surface.SetTextColor( TextColor )
			surface.SetDrawColor( PrimaryColor )
			draw.NoTexture()
				
				-- Title
				local PosNumber = 0
				surface.SetTextPos( BasePosX,BasePosY  )
				surface.DrawText( Name )
				surface.DrawRect( BasePosX, BasePosY + FontSize, BasePosX*3, 2 )
				
				-- Damage
				PosNumber = PosNumber + 2
				surface.DrawRect( BasePosX, BasePosY + FontSize*PosNumber, BasePosX*3, FontSize )
				surface.DrawRect( BasePosX, BasePosY + FontSize*PosNumber, BasePosX*3 * math.Clamp((Damage/100),0,1), FontSize )
				surface.SetTextPos( BasePosX,BasePosY + FontSize*PosNumber  )
				surface.DrawText( " Damage: " .. math.Round(Damage))
				
				-- Firerate
				PosNumber = PosNumber + 2
				surface.DrawRect( BasePosX, BasePosY + FontSize*PosNumber, BasePosX*3, FontSize )
				surface.DrawRect( BasePosX, BasePosY + FontSize*PosNumber, BasePosX*3 * math.Clamp((RPM/1000),0,1), FontSize )
				surface.SetTextPos( BasePosX,BasePosY + FontSize*PosNumber  )
				surface.DrawText( " RPM: " .. math.Round(RPM))
				
				-- Damage Per Second
				PosNumber = PosNumber + 2
				surface.DrawRect( BasePosX, BasePosY + FontSize*PosNumber, BasePosX*3, FontSize )
				surface.DrawRect( BasePosX, BasePosY + FontSize*PosNumber, BasePosX*3 * math.Clamp(DPS/600,0,1), FontSize )
				surface.SetTextPos( BasePosX,BasePosY + FontSize*PosNumber  )
				surface.DrawText( " DPS: " .. math.Round(DPS,2))
				
				-- Kill Time
				PosNumber = PosNumber + 2
				surface.DrawRect( BasePosX, BasePosY + FontSize*PosNumber, BasePosX*3, FontSize )
	
				surface.SetDrawColor( SecondaryColor )
				surface.SetTextColor( SecondaryColor )
				surface.SetFont( "DermaDefault" )
				
				if Delay > 0.05 then
					for i=0, 1/Delay do
						local XPos = BasePosX + i*Delay*BasePosX*3
						surface.DrawRect( XPos, BasePosY + FontSize*PosNumber, 2, FontSize )
						draw.SimpleText( math.Round(Delay,2)*i .. "(" .. (i+1)*math.Round(Damage,2) .. ")", "DermaDefault", XPos,BasePosY + FontSize*PosNumber + FontSize,TextColor,TEXT_ALIGN_CENTER,TEXT_ALIGN_TOP)
					end
				end
				surface.SetFont( "DermaLarge" )
				surface.SetTextColor( TextColor )
				surface.SetDrawColor( PrimaryColor )
				
				surface.DrawRect( BasePosX, BasePosY + FontSize*PosNumber, BasePosX*3 * math.Clamp(KillTime/1,0,1), FontSize )
				surface.SetTextPos( BasePosX,BasePosY + FontSize*PosNumber  )
				surface.DrawText( " Kill Time: " .. math.Round(KillTime,2) .. " seconds")
				

				
				
				-- Accuracy
				PosNumber = PosNumber + 2
				surface.DrawRect( BasePosX, BasePosY + FontSize*PosNumber, BasePosX*3, FontSize )
				surface.DrawRect( BasePosX, BasePosY + FontSize*PosNumber, BasePosX*3 * Accuracy, FontSize )
				surface.SetTextPos( BasePosX,BasePosY + FontSize*PosNumber )
				surface.DrawText( " Accuracy: " .. Accuracy*100 .. "%")
				
				-- Range
				PosNumber = PosNumber + 2
				surface.DrawRect( BasePosX, BasePosY + FontSize*PosNumber, BasePosX*3, FontSize )
				surface.DrawRect( BasePosX, BasePosY + FontSize*PosNumber, BasePosX*3 * 0.5, FontSize )
				surface.SetTextPos( BasePosX,BasePosY + FontSize*PosNumber )
				
				
				surface.DrawText( " Range: " .. math.Round(FullRange/(64/1.22),2) .. " meters")
				local PolyBaseX = BasePosX + (BasePosX*3 * 0.5)
				local PolyBaseY = BasePosY + FontSize*PosNumber
				local TriAngle = {
					{x = PolyBaseX,y = PolyBaseY},
					{x = PolyBaseX + BasePosX*3*0.5*(1-MatterScale),y = PolyBaseY + FontSize*(1-MatterScale)},
					{x = PolyBaseX,y = PolyBaseY + FontSize*(1-MatterScale)},
				}
				surface.DrawPoly( TriAngle )
				surface.DrawRect( PolyBaseX, PolyBaseY + FontSize * ( 1 - MatterScale), BasePosX*1.5 , FontSize*MatterScale )
				surface.SetDrawColor( SecondaryColor )
				surface.DrawRect( BasePosX + BasePosX*3*math.Clamp(ViewDistance/(BaseRange),0,1), BasePosY + FontSize*PosNumber, 2, FontSize )
				--surface.SetTextColor( SecondaryColor )
				--surface.SetTextPos( BasePosX + BasePosX*3*math.Clamp(ViewDistance/(BaseRange),0,1),BasePosY + FontSize*PosNumber )	
				local DamageScale = math.min( (2) - (ViewDistance/FullRange),1)
				
				draw.SimpleText(math.Round(math.Clamp(DamageScale * Damage,Damage * MatterScale,Damage),2) .. " Damage", "DermaDefault", BasePosX + BasePosX*3*math.Clamp(ViewDistance/(BaseRange),0,1),BasePosY + FontSize*PosNumber + FontSize,TextColor,TEXT_ALIGN_CENTER,TEXT_ALIGN_TOP)
				
				
				surface.SetDrawColor( PrimaryColor )				

		end
	
	end

end

hook.Add("HUDPaint","CSS_ContextMenuHUDPaint",CSS_ContextMenuHUDPaint)




