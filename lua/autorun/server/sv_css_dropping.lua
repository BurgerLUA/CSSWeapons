function CSSDropWeaponAmmo(ply)

	ply:SetNWString("cssprimary","")
	ply:SetNWString("csssecondary","")

	if GetConVar("sv_css_enable_drops"):GetInt() == 1 then
	
		for k,v in pairs(ply:GetWeapons()) do
			CSS_DropWeapon(ply,v)
		end
		
		CSS_DropAmmo(ply,"all")
		
	end
end
	
hook.Add("DoPlayerDeath", "CSS: Death Weapon Dropping", CSSDropWeaponAmmo )

local NextThink = 0


local AssociatedWeapons = {
	css_hegrenade = "weapon_cs_he",
	css_flashgrenade = "weapon_cs_flash",
	css_smokegrenade = "weapon_cs_smoke",
	ex_gasgrenade = "weapon_ex_gas"
}

function CSS_DropWeaponBecauseNone()

	if NextThink <= CurTime() then
	
		for k,v in pairs(player.GetAll()) do
			
			for ammo,weapon in pairs(AssociatedWeapons) do
			
				if not v:HasWeapon(weapon) then
					if v:GetAmmoCount(ammo) > 0 then
						local NewWeapon = v:Give(weapon)
						NewWeapon.AlreadyGiven = true
					end
				end
				
			end
			
		end
		NextThink = CurTime() + 1
	end

end


hook.Add("Think","CSS_DropWeaponBecauseNone",CSS_DropWeaponBecauseNone)

function CSS_DropWeapon(ply,weapon)

	if weapon:IsScripted() == true then
		if weapon.BurgerBase ~= nil or weapon.Base == "weapon_cs_base" then
		
			local StoredWeapon =  weapons.GetStored(weapon:GetClass())
			
			if weapon.EnableDropping then
			
				local model = StoredWeapon.WorldModel
				
				if StoredWeapon.UseThisWorldModel then
					model = StoredWeapon.UseThisWorldModel
				end
				
				local Ammo = weapon:Ammo1()

				if model ~= "" then		

					local dropped = ents.Create("ent_cs_droppedweapon")
					dropped:SetPos(ply:GetPos() + ply:OBBCenter())
					dropped:SetAngles(ply:EyeAngles())
					dropped:SetModel(model)
					dropped:SetNWString("class",weapon:GetClass())
					dropped:SetCustomCollisionCheck( true )
				
					if not (StoredWeapon.WeaponType == "Throwable" and weapon:Clip1() ~= 0) then
						
						dropped:SetNWFloat("clip",weapon:Clip1())
						
						if ply:Alive() then
							ply:StripWeapon(weapon:GetClass())
						end
						
					elseif StoredWeapon.WeaponType == "Throwable" then
						
						if Ammo < 10 then
						
							dropped:SetNWFloat("clip",weapon:Clip1())
							
							if ply:Alive() then
							
								ply:SetAmmo( math.Clamp(Ammo - 1,0,9999), weapon:GetPrimaryAmmoType() )
								
								Ammo = weapon:Ammo1()
								
								if Ammo == 0 then
									ply:StripWeapon(weapon:GetClass())
								end
								
							end
							
						else
						
							CSS_DropAmmo(ply,weapon,Ammo)
							
							if ply:Alive() then
								ply:StripWeapon(weapon:GetClass())
							end
						
							dropped:Remove()
						
							return
							
						end
					
					end

					dropped:Spawn()
					dropped:Activate()
					dropped:GetPhysicsObject():SetVelocity(ply:EyeAngles():Forward()*100)

				end
			
			end
			
		end
	end
	
end

function CSS_DropAmmo(ply,weapon,amount)

	if weapon == "all" then
		local AllAmmoTable = {}
		
		for i = 1, 100 do
			AllAmmoTable[i] = ply:GetAmmoCount( i )
		end
		
		if AllAmmoTable[1] then
		
			local dropammo = ents.Create("ent_cs_ammo_table")
			dropammo.AmmoTable = AllAmmoTable
			dropammo.AmmoModel = "models/weapons/w_defuser.mdl"
			dropammo:SetPos( ply:GetPos() + ply:OBBCenter() )
			dropammo:SetAngles(ply:EyeAngles() + Angle( math.Rand(1,360),math.Rand(1,360),math.Rand(1,360)) )
			dropammo:SetCustomCollisionCheck( true )
			dropammo:Spawn()
			dropammo:Activate()
			dropammo:GetPhysicsObject():SetVelocity(ply:GetForward()*100)
		
			if GetConVar("sv_css_timed_drops"):GetInt() == 1 then
				SafeRemoveEntityDelayed(dropammo,GetConVar("sv_css_drop_timer"):GetInt())
			end
			
		end
	else
	
		local model = "models/weapons/w_defuser.mdl"
	
		if weapon:IsScripted() and (weapon.BurgerBase or weapon.Base == "weapon_cs_base") then
			if weapon.WeaponType == "Throwable" and weapon.Primary.ClipSize == -1 then
				model = weapon.WorldModel
			elseif weapon.GetMagModel then
				if file.Exists(weapon.GetMagModel,"GAME") then
					model = weapon.GetMagModel
				end
			end
		end
		
		local AmmoType = weapon:GetPrimaryAmmoType()
		local AmmoCount = ply:GetAmmoCount(AmmoType)
		local ClipCount = weapon:GetMaxClip1()
		
		if ClipCount == -1 and weapon.Primary.SpareClip then
			ClipCount = math.Clamp(math.ceil(weapon.Primary.SpareClip * 0.1),-1,9999)
		end

		local AmmoCountToDrop = math.min(AmmoCount,ClipCount)
		
		if amount then
			AmmoCountToDrop = amount
		end
		
		if ply:Alive() then
			ply:SetAmmo( math.Clamp(AmmoCount - AmmoCountToDrop,0,9999) , AmmoType)
		end
		
		if AmmoCountToDrop > 0 then
		
			local dropammo = ents.Create("ent_cs_ammo_base")
			dropammo.AmmoType = weapon:GetPrimaryAmmoType()
			dropammo.AmmoAmount = AmmoCountToDrop
			dropammo.AmmoModel = model
			dropammo:SetPos( ply:GetPos() + ply:OBBCenter() )
			dropammo:SetAngles(ply:EyeAngles() + Angle( math.Rand(1,360),math.Rand(1,360),math.Rand(1,360)) )
			dropammo:Spawn()
			dropammo:Activate()
			dropammo:GetPhysicsObject():SetVelocity(ply:GetForward()*100)
			
			if weapon.WeaponType == "Throwable" then
				if ply:GetAmmoCount(AmmoType) <= 0 then
					ply:StripWeapon(weapon:GetClass())
				end
			end
	
		end
			
	end

end

function CSS_Drops(ply,cmd,args,argStr)

	local Weapon = ply:GetActiveWeapon()
	
	if Weapon and Weapon:IsValid() then
		if cmd == "dropweapon" then
			CSS_DropWeapon(ply,Weapon)
		elseif cmd == "dropammo" then
			CSS_DropAmmo(ply,Weapon)
		end
		
		--Weapon:SendWeaponAnim(ACT_GMOD_GESTURE_ITEM_DROP)
		
	end

end

concommand.Add("dropweapon", CSS_Drops)
concommand.Add("dropammo", CSS_Drops)



