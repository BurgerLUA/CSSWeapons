
surface.CreateFont("TitleFont", {size = 30, weight = 400, antialias = true, font = "Arial"})
surface.CreateFont("SliderFont", {size = 15, weight = 400, antialias = true, font = "Arial"})


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
		Title1:SetText( "WEAPON SETTINGS" )
		Title1:SizeToContents()
		
	local DamageSliderTitle = vgui.Create("DLabel", Base1)
		DamageSliderTitle:SetPos(25,35)
		DamageSliderTitle:SetFont("SliderFont")
		DamageSliderTitle:SetColor(Color(0,0,0,255))
		DamageSliderTitle:SetText( "Damage Multiplier" )
		DamageSliderTitle:SizeToContents()
	
	local DamageSlider = vgui.Create( "Slider", Base1 )
		DamageSlider:SetPos( 5,40 )
		DamageSlider:SetWide( Base1:GetWide() - 10 - 20 )
		DamageSlider:SetMin( 0 ) -- Minimum number of the slider
		DamageSlider:SetMax( 10 ) -- Maximum number of the slider
		DamageSlider:SetDecimals( 1 ) -- Sets a decimal. Zero means it's a whole number
		DamageSlider:SetConVar( "sv_css_damage_scale" ) -- Set the convar
		
	local RecoilSliderTitle = vgui.Create("DLabel", Base1)
		RecoilSliderTitle:SetPos(25,75)
		RecoilSliderTitle:SetFont("SliderFont")
		RecoilSliderTitle:SetColor(Color(0,0,0,255))
		RecoilSliderTitle:SetText( "Recoil Multiplier" )
		RecoilSliderTitle:SizeToContents()
		
	local RecoilSlider = vgui.Create( "Slider", Base1 )
		RecoilSlider:SetPos( 5,80 )
		RecoilSlider:SetWide( Base1:GetWide() - 10 - 20 )
		RecoilSlider:SetMin( 0 ) -- Minimum number of the slider
		RecoilSlider:SetMax( 10 ) -- Maximum number of the slider
		RecoilSlider:SetDecimals( 1 ) -- Sets a decimal. Zero means it's a whole number
		RecoilSlider:SetConVar( "sv_css_recoil_scale" ) -- Set the convar
		
	local ConeSliderTitle = vgui.Create("DLabel", Base1)
		ConeSliderTitle:SetPos(25,115)
		ConeSliderTitle:SetFont("SliderFont")
		ConeSliderTitle:SetColor(Color(0,0,0,255))
		ConeSliderTitle:SetText( "Cone Multiplier" )
		ConeSliderTitle:SizeToContents()
		
	local ConeSlider = vgui.Create( "Slider", Base1 )
		ConeSlider:SetPos( 5,120 )
		ConeSlider:SetWide( Base1:GetWide() - 10 - 20)
		ConeSlider:SetMin( 0 ) -- Minimum number of the slider
		ConeSlider:SetMax( 10 ) -- Maximum number of the slider
		ConeSlider:SetDecimals( 1 ) -- Sets a decimal. Zero means it's a whole number
		ConeSlider:SetConVar( "sv_css_cone_scale" ) -- Set the convar
		
	local RunConeSliderTitle = vgui.Create("DLabel", Base1)
		RunConeSliderTitle:SetPos(25,155)
		RunConeSliderTitle:SetFont("SliderFont")
		RunConeSliderTitle:SetColor(Color(0,0,0,255))
		RunConeSliderTitle:SetText( "Velocity Cone Multiplier" )
		RunConeSliderTitle:SizeToContents()
		
	local RunConeSlider = vgui.Create( "Slider", Base1 )
		RunConeSlider:SetPos( 5,160 )
		RunConeSlider:SetWide(  Base1:GetWide() - 10 - 20 )
		RunConeSlider:SetMin( 0 ) -- Minimum number of the slider
		RunConeSlider:SetMax( 10 ) -- Maximum number of the slider
		RunConeSlider:SetDecimals( 1 ) -- Sets a decimal. Zero means it's a whole number
		RunConeSlider:SetConVar( "sv_css_velcone_scale" ) -- Set the convar

	local Title2 = vgui.Create("DLabel", Base1)
		Title2:SetPos(5,205)
		Title2:SetFont("TitleFont")
		Title2:SetColor(Color(0,0,0,255))
		Title2:SetText( "C4 SETTINGS" )
		Title2:SizeToContents()
		
	local C4TimeSliderTitle = vgui.Create("DLabel", Base1)
		C4TimeSliderTitle:SetPos(25,235)
		C4TimeSliderTitle:SetFont("SliderFont")
		C4TimeSliderTitle:SetColor(Color(0,0,0,255))
		C4TimeSliderTitle:SetText( "C4 Detonation Time (Seconds)" )
		C4TimeSliderTitle:SizeToContents()
		
	local C4TimeSlider = vgui.Create( "Slider", Base1 )
		C4TimeSlider:SetPos( 5,240 )
		C4TimeSlider:SetWide(  Base1:GetWide() - 10 - 20 )
		C4TimeSlider:SetMin( 5 ) -- Minimum number of the slider
		C4TimeSlider:SetMax( 300 ) -- Maximum number of the slider
		C4TimeSlider:SetDecimals( 0 ) -- Sets a decimal. Zero means it's a whole number
		C4TimeSlider:SetConVar( "sv_css_c4_time_explosion" ) -- Set the convar
		
	local C4DefuseSliderTitle = vgui.Create("DLabel", Base1)
		C4DefuseSliderTitle:SetPos(25,275)
		C4DefuseSliderTitle:SetFont("SliderFont")
		C4DefuseSliderTitle:SetColor(Color(0,0,0,255))
		C4DefuseSliderTitle:SetText( "C4 Defuse Time (Seconds)" )
		C4DefuseSliderTitle:SizeToContents()

	local C4DefuseSlider = vgui.Create( "Slider", Base1 )
		C4DefuseSlider:SetPos( 5,280 )
		C4DefuseSlider:SetWide(  Base1:GetWide() - 10 - 20 )
		C4DefuseSlider:SetMin( 1 ) -- Minimum number of the slider
		C4DefuseSlider:SetMax( 60 ) -- Maximum number of the slider
		C4DefuseSlider:SetDecimals( 0 ) -- Sets a decimal. Zero means it's a whole number
		C4DefuseSlider:SetConVar( "sv_css_c4_time_defuse" ) -- Set the convar
		
	local C4DamageSliderTitle = vgui.Create("DLabel", Base1)
		C4DamageSliderTitle:SetPos(25,315)
		C4DamageSliderTitle:SetFont("SliderFont")
		C4DamageSliderTitle:SetColor(Color(0,0,0,255))
		C4DamageSliderTitle:SetText( "C4 Max Damage" )
		C4DamageSliderTitle:SizeToContents()

	local C4DamageSlider = vgui.Create( "Slider", Base1 )
		C4DamageSlider:SetPos( 5,320 )
		C4DamageSlider:SetWide(  Base1:GetWide() - 10 - 20 )
		C4DamageSlider:SetMin( 1 ) -- Minimum number of the slider
		C4DamageSlider:SetMax( 1000 ) -- Maximum number of the slider
		C4DamageSlider:SetDecimals( 0 ) -- Sets a decimal. Zero means it's a whole number
		C4DamageSlider:SetConVar( "sv_css_c4_damage" ) -- Set the convar
		
	local C4RadiusSliderTitle = vgui.Create("DLabel", Base1)
		C4RadiusSliderTitle:SetPos(25,355)
		C4RadiusSliderTitle:SetFont("SliderFont")
		C4RadiusSliderTitle:SetColor(Color(0,0,0,255))
		C4RadiusSliderTitle:SetText( "C4 Blast Radius (Units)" )
		C4RadiusSliderTitle:SizeToContents()

	local C4RadiusSlider = vgui.Create( "Slider", Base1 )
		C4RadiusSlider:SetPos( 5,360 )
		C4RadiusSlider:SetWide(  Base1:GetWide() - 10 - 20 )
		C4RadiusSlider:SetMin( 100 ) -- Minimum number of the slider
		C4RadiusSlider:SetMax( 10000 ) -- Maximum number of the slider
		C4RadiusSlider:SetDecimals( 0 ) -- Sets a decimal. Zero means it's a whole number
		C4RadiusSlider:SetConVar( "sv_css_c4_radius" ) -- Set the convar
		
	local C4AdminCheckBox = vgui.Create( "DCheckBoxLabel", Base1 )
		C4AdminCheckBox:SetPos( 10,390)
		C4AdminCheckBox:SetText( "Non-Admins can pick up c4" )
		C4AdminCheckBox:SetTextColor( Color(0, 0, 0, 255) )
		C4AdminCheckBox:SetConVar( "sv_css_enable_c4nonadmin" ) -- ConCommand must be a 1 or 0 value
		C4AdminCheckBox:SizeToContents() -- Make its size to the contents. Duh?
		
	local C4NotifyCheckBox = vgui.Create( "DCheckBoxLabel", Base1 )
		C4NotifyCheckBox:SetPos( 10,410)
		C4NotifyCheckBox:SetText( "Enable Plant Notifications" )
		C4NotifyCheckBox:SetTextColor( Color(0, 0, 0, 255) )
		C4NotifyCheckBox:SetConVar( "sv_css_c4_notifyplayers" ) -- ConCommand must be a 1 or 0 value
		C4NotifyCheckBox:SizeToContents() -- Make its size to the contents. Duh?
	
	local Title3 = vgui.Create("DLabel", Base1)
		Title3:SetPos(5,440)
		Title3:SetFont("TitleFont")
		Title3:SetColor(Color(0,0,0,255))
		Title3:SetText( "WEAPON DROPPING" )
		Title3:SizeToContents()
	
	local WeaponDropEnableCheckBox = vgui.Create( "DCheckBoxLabel", Base1 )
		WeaponDropEnableCheckBox:SetPos( 10,475)
		WeaponDropEnableCheckBox:SetText( "Enable CSS Weapon Drops" )
		WeaponDropEnableCheckBox:SetTextColor( Color(0, 0, 0, 255) )
		WeaponDropEnableCheckBox:SetConVar( "sv_css_enable_drops" ) -- ConCommand must be a 1 or 0 value
		WeaponDropEnableCheckBox:SizeToContents() -- Make its size to the contents. Duh?
		
	local WeaponDropTimedCheckBox = vgui.Create( "DCheckBoxLabel", Base1 )
		WeaponDropTimedCheckBox:SetPos( 30,495)
		WeaponDropTimedCheckBox:SetText( "Enable timed removal" )
		WeaponDropTimedCheckBox:SetTextColor( Color(0, 0, 0, 255) )
		WeaponDropTimedCheckBox:SetConVar( "sv_css_timed_drops" ) -- ConCommand must be a 1 or 0 value
		WeaponDropTimedCheckBox:SizeToContents() -- Make its size to the contents. Duh?
	
	local  WeaponDropTimeSliderTitle = vgui.Create("DLabel", Base1 )
		WeaponDropTimeSliderTitle:SetPos(25,515)
		WeaponDropTimeSliderTitle:SetFont("SliderFont")
		WeaponDropTimeSliderTitle:SetColor(Color(0,0,0,255))
		WeaponDropTimeSliderTitle:SetText( "Removal Delay (Seconds)" )
		WeaponDropTimeSliderTitle:SizeToContents()

	local WeaponDropTimeSlider = vgui.Create( "Slider", Base1 )
		WeaponDropTimeSlider:SetPos( 5,520 )
		WeaponDropTimeSlider:SetWide( Base1:GetWide() - 10 - 20 )
		WeaponDropTimeSlider:SetMin( 1 ) -- Minimum number of the slider
		WeaponDropTimeSlider:SetMax( 600 ) -- Maximum number of the slider
		WeaponDropTimeSlider:SetDecimals( 0 ) -- Sets a decimal. Zero means it's a whole number
		WeaponDropTimeSlider:SetConVar( "sv_css_drop_timer" ) -- Set the convar
		
		

end

concommand.Add("cssadminsettings", CSSServersideWeaponSettings)


function CSSClientsideWeaponSettings()

	print(LocalPlayer():IsAdmin())
	print(LocalPlayer():IsSuperAdmin())
	
	local MenuBase = vgui.Create("DFrame")
		MenuBase:SetSize(ScrW()/2,ScrH()/2)
		MenuBase:SetPos(0,0)
		MenuBase:SetTitle("Counter Strike Source Client Settings")
		MenuBase:SetDeleteOnClose(false)
		MenuBase:SetDraggable( false )
		MenuBase:SetBackgroundBlur(false)
		MenuBase:Center(true)
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
		Title1:SetText( "WEAPON SETTINGS" )
		Title1:SizeToContents()
		
	local DamageSliderTitle = vgui.Create("DLabel", Base1)
		DamageSliderTitle:SetPos(25,35)
		DamageSliderTitle:SetFont("SliderFont")
		DamageSliderTitle:SetColor(Color(0,0,0,255))
		DamageSliderTitle:SetText( "Weapon FOV" )
		DamageSliderTitle:SizeToContents()
	
	local DamageSlider = vgui.Create( "Slider", Base1 )
		DamageSlider:SetPos( 5,40 )
		DamageSlider:SetWide( Base1:GetWide() - 10 - 20 )
		DamageSlider:SetMin( 10 ) -- Minimum number of the slider
		DamageSlider:SetMax( 90 ) -- Maximum number of the slider
		DamageSlider:SetDecimals( 1 ) -- Sets a decimal. Zero means it's a whole number
		DamageSlider:SetConVar( "cl_css_viewmodel_fov" ) -- Set the convar

end

concommand.Add("cssplayersettings", CSSClientsideWeaponSettings)