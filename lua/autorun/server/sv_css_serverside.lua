AddCSLuaFile()

function ISaid( ply, text, public )

    if string.sub(text, 1, 9) == "!cssadmin" then
	
		if game.IsDedicated() then
			if ply:IsSuperAdmin() then
				ply:SendLua(
					[[chat.AddText(Color(255,0,0), "Unfortunately adjusting Counter-Strike:Source server settings with this menu on dedicated servers (servers hosted not on this machine) isn't possible. Please read the workshop description for clarification.")]]
				)
			end
		else
			if ply ~= Entity(1) then
				ply:SendLua(
					[[chat.AddText(Color(255,0,0), "You're not the server owner.")]]
				)
			else
				ply:ConCommand("cssadminsettings")
			end
		end
		
        return false
    elseif string.sub(text, 1, 10) == "!cssplayer" then
		ply:ConCommand("cssplayersettings")
		return false
	end

end

hook.Add( "PlayerSay", "ISaid", ISaid );


function OnSpawn( ply )
	

	ply:SendLua(
		[[chat.AddText(Color(255,255,255), "This server is running CSS weapons. Enter",Color(0,255,0)," !cssplayer ",Color(255,255,255),Color(255,255,255),"to access the player menu.")]]
	)
	
	if ply == Entity(1) then
		if game.IsDedicated() then
			

		else
			ply:SendLua(
				[[chat.AddText(Color(255,255,255), "Enter",Color(0,255,0)," !cssadmin ",Color(255,255,255),Color(255,255,255),"to access the admin menu.")]]
			)
		end
	end

end

hook.Add( "PlayerInitialSpawn", "OnSpawn", OnSpawn )

function DetectHeadshots(ply, hitgroup, dmginfo)

		if hitgroup == HITGROUP_HEAD then
			ply:EmitSound("player/headshot"..math.random(1,2)..".wav",SNDLVL_TALKING,100,1,CHAN_BODY)
		end

end

hook.Add("ScalePlayerDamage","CSS Detect Headshots",DetectHeadshots)


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
				dropped:SetPos(ply:GetShootPos())
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
						dropammo:SetPos(ply:GetShootPos())
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
	
hook.Add("DoPlayerDeath", "drop weapon after death", DropWeaponAmmo )







--[[

function CSSParentProject()

	if CLIENT then return end


	for k,ply in pairs(player.GetAll()) do

		local primary = ply:GetNWString("cssprimary",nil)
		local secondary = ply:GetNWString("csssecondary",nil)
		
		local PSWEP = weapons.GetStored(primary)
		local SSWEP = weapons.GetStored(secondary)

		local PlayerModel = ply:GetModel()
		
		local PBoneIndex = ply:LookupBone("ValveBiped.Bip01_Spine4")
		local PBonePos, PBoneAng = ply:GetBonePosition(PBoneIndex)
		
		local SBoneIndex = ply:LookupBone("ValveBiped.Bip01_R_Thigh")
		local SBonePos, SBoneAng = ply:GetBonePosition(SBoneIndex)
		
	
		print("--------------")
		
		for i=1, ply:GetBoneCount() do
			print(ply:GetBoneName(i))
		end
		
		print("--------------")
	
		
		local PModel = "models/weapons/w_rif_ak47.mdl"
		local SModel = "models/weapons/w_eq_eholster_elite.mdl"
			
		if PSWEP then
			PModel = PSWEP.WorldModel
		end
		
		if SSWEP then
			SModel = SSWEP.WorldModel
		end
		
		if not ply:HasWeapon(primary) then
			PModel = "models/weapons/w_rif_ak47.mdl"
		end
		
		if not ply:HasWeapon(secondary) then
			SModel = "models/weapons/w_pist_deagle.mdl"
		end
		
		if ply:GetActiveWeapon():IsValid() then
			if ply:GetActiveWeapon():GetClass() == primary then
				PModel = "models/hunter/blocks/cube025x025x025.mdl"
			end
			
			if ply:GetActiveWeapon():GetClass() == secondary then
				SModel = "models/hunter/blocks/cube025x025x025.mdl"
			end
		end
		

		if not ply.PrimaryObj and ply:Alive() then
	
			ply.PrimaryObj = ents.Create("ent_cs_holsteredweapon")
				ply.PrimaryObj:SetModel(PModel)
				ply.PrimaryObj:SetAngles( PBoneAng + Angle(45+180,20,90) )
				ply.PrimaryObj:SetPos(PBonePos + ply.PrimaryObj:GetForward()*0 + ply.PrimaryObj:GetRight()*5 + ply.PrimaryObj:GetUp()*-10 )
				ply.PrimaryObj:SetOwner( ply )
				ply.PrimaryObj:FollowBone( ply , PBoneIndex )
				--ply.PrimaryObj:SetParent(ply)
				ply.PrimaryObj:Spawn()
			
		elseif not ply:Alive() then
		
			if ply.PrimaryObj ~= false and ply.PrimaryObj:IsValid() then
				ply.PrimaryObj:Remove()
			end
			
			ply.PrimaryObj = false
	
		elseif ply.PrimaryObj ~= false and IsValid(ply.PrimaryObj) then
		
			ply.PrimaryObj:SetModel(PModel)
			
		end
		
		
		if not ply.SecondaryObj and ply:Alive() then
	
			ply.SecondaryObj = ents.Create("ent_cs_holsteredweapon")
				ply.SecondaryObj:SetModel(SModel)
				ply.SecondaryObj:SetAngles(SBoneAng + Angle(180,-90,90 + 90))
				ply.SecondaryObj:SetPos(SBonePos + ply.SecondaryObj:GetForward() + ply.SecondaryObj:GetRight() + ply.SecondaryObj:GetUp())
				ply.SecondaryObj:SetOwner( ply )
				ply.SecondaryObj:FollowBone( ply , SBoneIndex )
				--ply.SecondaryObj:SetParent(ply)
				ply.SecondaryObj:Spawn()
			
		elseif not ply:Alive() then
		
			if ply.SecondaryObj ~= false and ply.SecondaryObj:IsValid() then
				ply.SecondaryObj:Remove()
			end
			
			ply.SecondaryObj = false
	
		elseif ply.SecondaryObj ~= false and IsValid(ply.SecondaryObj) then
		
			local time = math.floor(CurTime())*5
			ply.SecondaryObj:SetModel(SModel)
			
			ply.SecondaryObj:SetAngles(Angle(0, 0 ,0 ) + SBoneAng)
			--ply.SecondaryObj:SetPos(SBonePos + ply.SecondaryObj:GetForward() * 1 + ply.SecondaryObj:GetRight() + ply.SecondaryObj:GetUp())

			
		end

	end



end

hook.Add ("Think", "CSSParentProject", CSSParentProject)

--]]



--[[
util.AddNetworkString( "CSSNetCommand" )

net.Receive("CSSNetCommand", function(len,ply)

	if not (ply:IsAdmin() or ply:IsAdmin()) then
		ply:ChatPrint("You're not an Admin")
	return end

	local command = net.ReadString()
	local stype = net.ReadString()
	local sentvalue
	local curvalue
	local convar = GetConVar(command)
	
	--print(stype)
	
	sentvalue = net.ReadFloat()
	curvalue = 	convar:GetFloat()
	
	if curvalue ~= sentvalue then
	
		print("[SERVER]: " .. ply:Nick() .. " has changed " .. command .. " to " .. sentvalue .. ".")
	
		--print(ply:Nick() .. " has changed " .. command .. " to " .. sentvalue)
		
	end
	
	
	
end)


util.AddNetworkString("CSSAskForCommand")
util.AddNetworkString( "CSSGetCommand" )


net.Receive("CSSAskForCommand", function(len,ply)

	local command = net.ReadString()
	
	if string.sub(command, 1, 5) == "sv_css" then

		local value = GetConVarNumber(command)
		
		net.Start("CSSGetCommand")
			net.WriteFloat(value)
			net.WriteEntity(ply)
		net.Broadcast()
		
		print("[SERVER]: Telling " .. ply .. " that the current args for " .. command .. " is " .. value .. ".")
		
	end
	
end)


--]]
