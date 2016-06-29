surface.CreateFont("TitleFont", {size = 30, weight = 400, antialias = true, font = "Arial"})
surface.CreateFont("SliderFont", {size = 15, weight = 400, antialias = true, font = "Arial"})
surface.CreateFont("WarningFont", {size = 20, weight = 400, antialias = false, bold = true, outline = true, font = "Arial"})

local count = 1
local ItemTable = {}
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "TitleFont"
	ItemTable[count]["text"] = "Weapon Settings"
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Damage Multiplier (Higher means more damage)"
	ItemTable[count]["command"] = "sv_css_damage_scale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 2
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Damage Falloff Multiplier (Higher means less damage at longer ranges)"
	ItemTable[count]["command"] = "sv_css_damagefalloff_scale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 1
	ItemTable[count]["decimals"] = 2
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Recoil Multiplier (Higher means weapons have a bigger kickback)"
	ItemTable[count]["command"] = "sv_css_recoil_scale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 2
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Base Spread Multiplier (Higher means weapons have larger cone)"
	ItemTable[count]["command"] = "sv_css_cone_scale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 2
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Heat Spread Multiplier (Higher means weapons are more inaccurate when firing too much)"
	ItemTable[count]["command"] = "sv_css_heat_scale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 2
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Heat Time Multiplier (Higher means the cooldown stage is longer) "
	ItemTable[count]["command"] = "sv_css_cooltime_scale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 2
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Cooldown Amount Multiplier (Higher means the weapons cools faster)"
	ItemTable[count]["command"] = "sv_css_cooldown_scale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 2
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Movement Spread Multiplier (Higher means the cone is larger when moving)"
	ItemTable[count]["command"] = "sv_css_velcone_scale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 2
	ItemTable[count]["height"] = 30
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "TitleFont"
	ItemTable[count]["text"] = "Bullet Penetration Settings"
	ItemTable[count]["height"] = 30
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable Bullet Penetration"
	ItemTable[count]["command"] = "sv_css_enable_penetration"
	ItemTable[count]["height"] = 10
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Damage loss per unit penetrated"
	ItemTable[count]["command"] = "sv_css_penetration_scale"
	ItemTable[count]["min"] = 0.25
	ItemTable[count]["max"] = 5
	ItemTable[count]["decimals"] = 2
	ItemTable[count]["height"] = 30
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "TitleFont"
	ItemTable[count]["text"] = "Ammo Settings"
	ItemTable[count]["height"] = 30
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Give loaded weapons"
	ItemTable[count]["command"] = "sv_css_ammo_loaded"
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Give spare ammo"
	ItemTable[count]["command"] = "sv_css_ammo_givespare"
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "TitleFont"
	ItemTable[count]["text"] = "C4 Settings"
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "C4 Fuse Length (Seconds)"
	ItemTable[count]["command"] = "sv_css_c4_time_explosion"
	ItemTable[count]["min"] = 5
	ItemTable[count]["max"] = 300
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "C4 Defuse Length (Seconds)"
	ItemTable[count]["command"] = "sv_css_c4_time_defuse"
	ItemTable[count]["min"] = 1
	ItemTable[count]["max"] = 60
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Explosion Damage"
	ItemTable[count]["command"] = "sv_css_c4_damage"
	ItemTable[count]["min"] = 1
	ItemTable[count]["max"] = 1000
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Explosion Radius (Source Units)"
	ItemTable[count]["command"] = "sv_css_c4_radius"
	ItemTable[count]["min"] = 100
	ItemTable[count]["max"] = 10000
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Delay between C4 plants (Minutes)"
	ItemTable[count]["command"] = "sv_css_c4_timelimit"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 60
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 30
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable Non-Admin Pick-up"
	ItemTable[count]["command"] = "sv_css_enable_c4nonadmin"
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable C4 Notifications"
	ItemTable[count]["command"] = "sv_css_c4_notifyplayers"
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "TitleFont"
	ItemTable[count]["text"] = "Weapon Equip/Drop Settings"
	ItemTable[count]["height"] = 30
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Drop CSS Ammo/Weapons upon death"
	ItemTable[count]["command"] = "sv_css_enable_drops"
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Automatic Weapon Clean-up Time"
	ItemTable[count]["command"] = "sv_css_timed_drops"
	ItemTable[count]["height"] = 10
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Clean-up Time (Seconds)"
	ItemTable[count]["command"] = "sv_css_drop_timer"
	ItemTable[count]["min"] = 5
	ItemTable[count]["max"] = 300
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 30
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Limit 1 Primary and Secondary Weapon"
	ItemTable[count]["command"] = "sv_css_limit_equipped"
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "TitleFont"
	ItemTable[count]["text"] = "Advanced Damage Settings"
	ItemTable[count]["height"] = 30
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable Custom Damage (Affects ALL weapons, Overrides Default Sandbox's Damage Scale)"
	ItemTable[count]["command"] = "sv_css_enable_customdamage"
	ItemTable[count]["height"] = 10
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Headshot Damage Multiplier"
	ItemTable[count]["command"] = "sv_css_damage_headscale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 2
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Bodyshot Damage Multiplier"
	ItemTable[count]["command"] = "sv_css_damage_bodyscale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 2
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Armshot Damage Multiplier"
	ItemTable[count]["command"] = "sv_css_damage_armscale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 2
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Legshot Damage Multiplier"
	ItemTable[count]["command"] = "sv_css_damage_legscale"
	ItemTable[count]["min"] = 0
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 2
	ItemTable[count]["height"] = 20
	count = count + 1

	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "HE Grenade Damage"
	ItemTable[count]["command"] = "sv_css_he_damage"
	ItemTable[count]["min"] = 1
	ItemTable[count]["max"] = 500
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "HE Grenade Radius"
	ItemTable[count]["command"] = "sv_css_he_radius"
	ItemTable[count]["min"] = 1
	ItemTable[count]["max"] = 1000
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Flashbang Blind Duration Maximum"
	ItemTable[count]["command"] = "sv_css_flashbang_dur"
	ItemTable[count]["min"] = 1
	ItemTable[count]["max"] = 10
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DNumSlider"
	ItemTable[count]["name"] = "Smoke Grenade Duration"
	ItemTable[count]["command"] = "sv_css_smoke_dur"
	ItemTable[count]["min"] = 1
	ItemTable[count]["max"] = 30
	ItemTable[count]["decimals"] = 0
	ItemTable[count]["height"] = 30
	count = count + 1

	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable Location Based Damage"
	ItemTable[count]["command"] = "sv_css_enable_damagemod"
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable Location Based Sounds"
	ItemTable[count]["command"] = "sv_css_enable_damagesounds"
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable CSS Death Sounds"
	ItemTable[count]["command"] = "sv_css_enable_deathsounds"
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DLabel"
	ItemTable[count]["font"] = "TitleFont"
	ItemTable[count]["text"] = "Other Settings"
	ItemTable[count]["height"] = 30
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable Ironsights"
	ItemTable[count]["command"] = "sv_css_enable_ironsights"
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable Quick HE Grenades (E+MOUSE1)"
	ItemTable[count]["command"] = "sv_css_quick"
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable cosmetic magazine/clip drops (Requires additional addon)"
	ItemTable[count]["command"] = "sv_css_enable_mags"
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "Enable CSS Speed Modification."
	ItemTable[count]["command"] = "sv_css_enable_speedmod"
	ItemTable[count]["height"] = 20
	count = count + 1
	
	ItemTable[count] = {}
	ItemTable[count]["type"] = "DCheckBoxLabel"
	ItemTable[count]["text"] = "CSS-Like Speed (Disables Sprint, generally faster movement.)"
	ItemTable[count]["command"] = "sv_css_enable_sprintmod"
	ItemTable[count]["height"] = 20
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
	
	local ScrollBar = vgui.Create( "DScrollPanel", MenuBase )
		ScrollBar:SetSize( MenuBase:GetWide() - 50, MenuBase:GetTall() - 75 )
		ScrollBar:SetPos( 25,50 )
		
	local Base1 = vgui.Create("DPanel", ScrollBar)
		Base1:SetPos(0,0)
		Base1:SetSize(MenuBase:GetWide() - 50, 1500)
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
		
		
		if Table["type"] == "DNumSlider" then
			height = height
			DermaObj[k]:SetPos(5, height)
			DermaObj[k]:SetText(Table["name"])
			DermaObj[k]:SetDark(true)
			DermaObj[k]:SetWide( Base1:GetWide() - 10 - 20 )
			--DermaObj[k]:SetValue(GetConVarNumber(Table["command"]))
			DermaObj[k]:SetMin( Table["min"] ) -- Minimum number of the slider
			DermaObj[k]:SetMax( Table["max"] ) -- Maximum number of the slider
			DermaObj[k]:SetDecimals( Table["decimals"] ) -- Sets a decimal. Zero means it's a whole number
			DermaObj[k]:SetConVar( Table["command"] ) -- Set the convar	
			DermaObj[k]:UpdateNotches()
			--DermaObj[k]:TranslateSliderValues(0,0)
		elseif Table["type"] == "DLabel" then
			DermaObj[k]:SetPos(5, height)
			DermaObj[k]:SetFont( Table["font"])
			DermaObj[k]:SetColor(Color(0,0,0,255))
			DermaObj[k]:SetText( Table["text"] )
			DermaObj[k]:SizeToContents()
		elseif Table["type"] == "DCheckBoxLabel" then
			DermaObj[k]:SetPos(5, height)
			DermaObj[k]:SetText( Table["text"] )
			DermaObj[k]:SetTextColor( Color(0, 0, 0, 255) )
			DermaObj[k]:SizeToContents()
			DermaObj[k]:SetPos(15, height)
			DermaObj[k]:SetConVar( Table["command"] )
		end
		
		height = height + Table["height"]

	end
	
end

concommand.Add("cssadminsettings", CSSServersideWeaponSettings)
