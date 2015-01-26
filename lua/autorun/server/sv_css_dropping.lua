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

function DropWeaponAmmo(ply)

	ply:SetNWString("cssprimary",nil)
	ply:SetNWString("csssecondary",nil)

	if GetConVar("sv_css_enable_drops"):GetInt() == 1 then
	
	
	
		for k,v in pairs(ply:GetWeapons()) do
			if v.BurgerBase ~= nil and v:GetClass() ~= "weapon_cs_botgun" then
				local dropped = ents.Create("ent_cs_droppedweapon")
				dropped:SetPos(ply:GetPos() + ply:OBBCenter())
				dropped:SetAngles(ply:EyeAngles())
				dropped:SetModel(weapons.GetStored(v:GetClass()).WorldModel)
				dropped:Spawn()
				dropped:Activate()
				dropped:SetNWString("class",v:GetClass())
				dropped:SetNWInt("clip",v:Clip1())
			end
		end
		
		for i=1, 22 do
			if i >= 11 then
				if ply:GetAmmoCount( i ) > 0 then
				
					local dropammo = ents.Create("ent_cs_ammo_base")
						dropammo.AmmoType = allammo[i]
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
			end
		end
		
	end
end
	
hook.Add("DoPlayerDeath", "CSSSWEP: Drop Weapon On Death", DropWeaponAmmo )