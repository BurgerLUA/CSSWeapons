function CSSDropWeaponAmmo(ply)

	ply:SetNWString("cssprimary","")
	ply:SetNWString("csssecondary","")

	if GetConVar("sv_css_enable_drops"):GetInt() == 1 then
	
		for k,v in pairs(ply:GetWeapons()) do
			if v:IsScripted() == true then
				if v.BurgerBase ~= nil or v.Base == "weapon_cs_base" then
				
					local StoredWeapon =  weapons.GetStored(v:GetClass())

					local model = StoredWeapon.WorldModel

					if model ~= "" then				
						if not (StoredWeapon.WeaponType == "Throwable" and v:Clip1() ~= 0) then
							local dropped = ents.Create("ent_cs_droppedweapon")
							dropped:SetPos(ply:GetPos() + ply:OBBCenter())
							dropped:SetAngles(ply:EyeAngles())
							dropped:SetModel(model)
							dropped:Spawn()
							dropped:Activate()
							dropped:SetNWString("class",v:GetClass())
							dropped:SetNWInt("clip",v:Clip1())
							dropped:SetNWInt("spare",v:Ammo1())
						end
					end
					
				end
			end
		end
		
		local AllAmmoTable = {}
		
		for i = 1, 100 do
			AllAmmoTable[i] = ply:GetAmmoCount( i )
		end
		
		if (AllAmmoTable[1] then
		
			local dropammo = ents.Create("ent_cs_ammo_table")
			dropammo.AmmoTable = AllAmmoTable
			dropammo.AmmoModel = "models/weapons/w_defuser.mdl"
			dropammo:SetPos( ply:GetPos() + ply:OBBCenter() )
			dropammo:SetAngles(ply:EyeAngles() + Angle( math.Rand(1,360),math.Rand(1,360),math.Rand(1,360)) )
			dropammo:Spawn()
			dropammo:Activate()
			dropammo:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
		
			if GetConVar("sv_css_timed_drops"):GetInt() == 1 then
				SafeRemoveEntityDelayed(dropammo,GetConVar("sv_css_drop_timer"):GetInt())
			end
			
		end
		
	end
end
	
hook.Add("DoPlayerDeath", "CSS: Death Weapon Dropping", CSSDropWeaponAmmo )