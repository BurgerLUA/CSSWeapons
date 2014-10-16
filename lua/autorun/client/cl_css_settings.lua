function CSSServersideWeaponSettings()

	local MenuBase = vgui.Create("DFrame")
		MenuBase:SetSize(ScrW()/2,ScrH()/2)
		MenuBase:SetPos(0,0)
		MenuBase:SetTitle("Counter Strike Source Serverside Weapon Settings")
		MenuBase:SetDeleteOnClose(false)
		MenuBase:SetDraggable( false )
		MenuBase:SetBackgroundBlur(false)
		MenuBase:Center(true)
		MenuBase:SetVisible( true )
		MenuBase.Paint = function()
			draw.RoundedBox( 8, 0, 0, MenuBase:GetWide(), MenuBase:GetTall(), Color( 0, 0, 0, 150 ) )
		end
		MenuBase:MakePopup()
	
	local Base1 = vgui.Create("DPanel", MenuBase)
		Base1:SetPos(50,50)
		Base1:SetSize(ScrW()/8,ScrH()/2 - 100)
		Base1.Paint = function()
			draw.RoundedBox( 8, 0, 0, Base1:GetWide(), Base1:GetTall(), Color( 255, 255, 255, 255 ) )
		end
	
	local Title1 = vgui.Create("DLabel", Base1)
		Title1:SetPos(5,5)
		Title1:SetFont("MenuLarge")
		Title1:SetColor(Color(0,0,0,255))
		Title1:SetText( "WEAPON SETTINGS" )
		Title1:SizeToContents()
		
	local DamageSliderTitle = vgui.Create("DLabel", Base1)
		DamageSliderTitle:SetPos(25,35)
		DamageSliderTitle:SetFont("DefaultLarge")
		DamageSliderTitle:SetColor(Color(0,0,0,255))
		DamageSliderTitle:SetText( "Damage Multiplier" )
		DamageSliderTitle:SizeToContents()
		
	local DamageSlider = vgui.Create( "Slider", Base1 )
		DamageSlider:SetPos( 5,40 )
		DamageSlider:SetWide( ScrW()/8 - 10 )
		--DamageSlider:SetTextColor(Color(0,0,0,255))
		DamageSlider:SetMin( 0 ) -- Minimum number of the slider
		DamageSlider:SetMax( 10 ) -- Maximum number of the slider
		DamageSlider:SetDecimals( 1 ) -- Sets a decimal. Zero means it's a whole number
		DamageSlider:SetConVar( "sbox_maxprops" ) -- Set the convar
		
	local CheckBox1a = vgui.Create( "DCheckBoxLabel", Base1 )
		CheckBox1a:SetPos( 25,100)
		CheckBox1a:SetText( "Enable Changeable Zoom?" )
		CheckBox1a:SetTextColor(Color(0,0,0,255))
		CheckBox1a:SetConVar( "cl_showfps" )
		CheckBox1a:SetValue( 1 )
		CheckBox1a:SizeToContents()

end

concommand.Add("cssadminsettings", CSSServersideWeaponSettings)


function CSSClientsideWeaponSettings()

	local MenuBase = vgui.Create("DFrame")
		MenuBase:SetSize(ScrW()/2,ScrH()/2)
		MenuBase:SetPos(0,0)
		MenuBase:SetTitle("Counter Strike Source Weapon Clientside Settings")
		MenuBase:SetDeleteOnClose(false)
		MenuBase:SetDraggable( false )
		MenuBase:SetBackgroundBlur(false)
		MenuBase:Center(true)
		MenuBase:SetVisible( true )
		MenuBase.Paint = function()
			draw.RoundedBox( 8, 0, 0, MenuBase:GetWide(), MenuBase:GetTall(), Color( 0, 0, 0, 150 ) )
		end
		MenuBase:MakePopup()
		
	--checkbox1 = vgui.Create( "DCheckBox", ListItem )

end

concommand.Add("cssplayersettings", CSSClientsideWeaponSettings)