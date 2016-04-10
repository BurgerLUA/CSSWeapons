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

function CSS_DropWeapon(ply,weapon)

	if weapon:IsScripted() == true then
		if weapon.BurgerBase ~= nil or weapon.Base == "weapon_cs_base" then
		
			local StoredWeapon =  weapons.GetStored(weapon:GetClass())

			local model = StoredWeapon.WorldModel

			if model ~= "" then				
				if not (StoredWeapon.WeaponType == "Throwable" and weapon:Clip1() ~= 0) then
					local dropped = ents.Create("ent_cs_droppedweapon")
					dropped:SetPos(ply:GetPos() + ply:OBBCenter())
					dropped:SetAngles(ply:EyeAngles())
					dropped:SetModel(model)
					dropped:Spawn()
					dropped:Activate()
					dropped:GetPhysicsObject():SetVelocity(ply:GetForward()*100)
					dropped:SetNWString("class",weapon:GetClass())
					dropped:SetNWInt("clip",weapon:Clip1())
					dropped:SetNWInt("spare",weapon:Ammo1())
				end
			end
			
			if ply:Alive() then
				ply:StripWeapon(weapon:GetClass())
			end
			
		end
	end
	
end

function CSS_DropAmmo(ply,weapon)

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
			dropammo:Spawn()
			dropammo:Activate()
			dropammo:GetPhysicsObject():SetVelocity(ply:GetForward()*100)
			dropammo:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		
			if GetConVar("sv_css_timed_drops"):GetInt() == 1 then
				SafeRemoveEntityDelayed(dropammo,GetConVar("sv_css_drop_timer"):GetInt())
			end
			
		end
	else
	
		local model = "models/weapons/w_defuser.mdl"
	
		if weapon:IsScripted() and (weapon.BurgerBase or weapon.Base == "weapon_cs_base") then
			if weapon.GetMagModel then
				if file.Exists(weapon.GetMagModel,"GAME") then
					model = weapon.GetMagModel
				end
			end
		end
		
		local AmmoType = weapon:GetPrimaryAmmoType()
		local AmmoCount = ply:GetAmmoCount(AmmoType)
		local ClipCount = weapon:GetMaxClip1()
		
		if ClipCount == -1 and weapon.Primary.SpareClip then
			ClipCount = math.floor(weapon.Primary.SpareClip * 0.1)
		end
		
		local AmmoCountToDrop = math.min(AmmoCount,ClipCount)
		
		if ply:Alive() then
			ply:SetAmmo( AmmoCount - AmmoCountToDrop,AmmoType)
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
			dropammo:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
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
	end

	

end

concommand.Add("dropweapon", CSS_Drops)
concommand.Add("dropammo", CSS_Drops)



