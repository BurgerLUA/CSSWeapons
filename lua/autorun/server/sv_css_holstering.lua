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