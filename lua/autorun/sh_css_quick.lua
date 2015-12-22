function NadeKeyPress(ply,key)
	
	
	
	if GetConVarNumber("cl_css_quick") == 0 then return end
	
	
	if ply:KeyDown(IN_USE) then
		if key == IN_ATTACK then
			if ply:InVehicle() then return end
		
			local Weapon = ply:GetActiveWeapon()
			
			if not IsValid(Weapon) then return end
			if not Weapon:IsScripted() then return end	
			if Weapon.Base ~= "weapon_cs_base" then return end	
			if Weapon:IsBusy() == true then return end
			if Weapon:GetIsZoomed() then return end

			if Weapon:GetClass() == "weapon_cs_smg" then
				if ply:GetAmmoCount(Weapon.Secondary.Ammo) > 0 then
				
					if Weapon:GetNextSecondaryFire() <= CurTime() then
						Weapon.Owner:SetAnimation(PLAYER_ATTACK1)
						Weapon:SendWeaponAnim(ACT_VM_SECONDARYATTACK)
						Weapon:ThrowObject(Weapon.Object,1000)
						ply:EmitSound("weapons/ar2/ar2_altfire.wav")
						Weapon:TakeSecondaryAmmo(1)
					end
					
					
					Weapon:SetNextSecondaryFire(CurTime() + 1)
					
					return 
				end
				
			end
			
			if not ply:HasWeapon("weapon_cs_he") then return end
			if Weapon:GetClass() == "weapon_cs_he" then return end	
		
			if CLIENT then return end
		
			ply:SelectWeapon("weapon_cs_he")
			ply:GetActiveWeapon():QuickThrow()

		
			
		end
	end

end

hook.Add("KeyPress","Quick Grenade",NadeKeyPress)

print("QuickThrow")