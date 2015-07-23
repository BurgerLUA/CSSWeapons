local allammo = {}

allammo[1] = 	"AR2"
allammo[2] =	"AR2AltFire"
allammo[3] =	"Pistol"
allammo[4] =	"SMG1"
allammo[5] =	"357"
allammo[6] =	"XBowBolt"
allammo[7] =	"Buckshot"
allammo[8] =	"RPG_Round"
allammo[9] =	"SMG1_Grenade"
allammo[10] =	"Grenade"
allammo[11] =	"slam"

allammo[12] = 	"AlyxGun"
allammo[13] =	"SniperRound"
allammo[14] =	"SniperPenetratedRound"
allammo[15] =	"Thumper"
allammo[16] =	"Gravity"
allammo[17] =	"Battery"
allammo[18] =	"GaussEnergy"
allammo[19] =	"CombineCannon"
allammo[20] =	"AirboatGun"
allammo[21] =	"StriderMinigun"
allammo[22] =	"HelicopterGun"

function CSSDropWeaponAmmo(ply)

	ply:SetNWString("cssprimary","")
	ply:SetNWString("csssecondary","")

	if GetConVar("sv_css_enable_drops"):GetInt() == 1 then
	
		for k,v in pairs(ply:GetWeapons()) do
			if v.BurgerBase ~= nil then
			
				local StoredWeapon =  weapons.GetStored(v:GetClass())

				local model = StoredWeapon.WorldModel
			
				if model ~= "" then
				
					if StoredWeapon.WeaponType == "Throwable" and v:Clip1() ~= 0 then return end
				
					//local dropped = ents.Create("ent_cs_droppedweapon")
					//dropped:SetPos(ply:GetPos() + ply:OBBCenter())
					//dropped:SetAngles(ply:EyeAngles())
					//dropped:SetModel(model)
					//dropped:Spawn()
					//dropped:Activate()
					//dropped:SetNWString("class",v:GetClass())
					//dropped:SetNWInt("clip",v:Clip1())
					--dropped:SetNWInt("spare",v:Ammo1())
					
					--[[
					if v:Ammo1() > 0 then
					
						if StoredWeapon.Primary.Ammo ~= "" then
						
							local dropammo = ents.Create("ent_cs_ammo_base")
							dropammo.AmmoType = StoredWeapon.Primary.Ammo
							dropammo.AmmoAmount = v:Ammo1()
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
					--]]
					
					
					
					
				end
				
			end
			
		end

		--[[
		for i=1, 50 do
			--if (i >= 11) or (i == 7) then
				if ply:GetAmmoCount( i ) > 0 then
				
					local dropammo = ents.Create("ent_cs_ammo_base")
						dropammo.AmmoType = i
						dropammo.AmmoAmount = ply:GetAmmoCount( i )
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
			--end
		end
		--]]
		
		local AllAmmoTable = {}
		
		for i = 1, 100 do
			--[[
			if ply:GetAmmoCount(i) > 0 then
				print(i,ply:GetAmmoCount(i))
			end
			--]]
			AllAmmoTable[i] = ply:GetAmmoCount( i )
			
		end
		
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
	
hook.Add("DoPlayerDeath", "CSS: Death Weapon Dropping", CSSDropWeaponAmmo )