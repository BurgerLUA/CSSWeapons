net.Receive( "ThirdPersonShellsNet", function( len )

	-- You won't recieve this unless it's multiplayer

	local ply = net.ReadEntity()
		
	if CLIENT then
		if GetConVarNumber("cl_css_shells") == 1 then
			if LocalPlayer() ~= ply then
				CustomShellEffects(ply)
			elseif ply:ShouldDrawLocalPlayer() then
				CustomShellEffects(ply)
			end
		end
	end

		
end ) 

function CustomShellEffects(ply)

	
	local Weapon = ply:GetActiveWeapon()
	local Ammo = Weapon.Primary.Ammo
	local Shell
	

	
	
if Ammo == "Buckshot" then
		Shell = "EjectBrass_12Gauge"
	elseif Ammo == "SniperPenetratedRound" or Ammo == "Battery" or Ammo == "GaussEnergy" then --.45ACP or 9mm or .357SIG
		Shell = "EjectBrass_9mm"
	elseif Ammo == "AlyxGun" then -- 5.7mm
		Shell = "EjectBrass_57"
	elseif Ammo == "AirboatGun" then -- 5.56mm
		Shell = "EjectBrass_556"
	elseif Ammo == "StriderMinigun" then -- 7.62mm
		Shell = "EjectBrass_762Nato"
	elseif Ammo == "SniperRound" then -- .338
		Shell = "EjectBrass_338Mag"
	elseif Ammo == "CombineCannon" then
		Shell = "ShellEject" -- .50AE
	else
		Shell = "EjectBrass_9mm"
	end

	local effectdata = EffectData()
	
	local muzzlepos
	local muzzleang
	
	--if not game.SinglePlayer() then
		muzzlepos = Weapon:GetAttachment(1).Pos
		muzzleang = Weapon:GetAttachment(1).Ang
	--end
		
		
	--local fixpos, fixang = LocalToWorld(-self:OBBCenter(), Angle(0,0,0), muzzlepos, muzzleang)					
	local origin
				
	--if not game.SinglePlayer() then		
		if Weapon.WeaponType == "Primary" then
			origin = muzzlepos - muzzleang:Forward()*20
		else
			origin = muzzlepos - muzzleang:Forward()*7
		end
	--[[
	else
		if Weapon.WeaponType == "Primary" then
			origin = muzzlepos - muzzleang:Forward()*20
		else
			origin = muzzlepos - muzzleang:Forward()*7
		end
	end
	--]]
	
	effectdata:SetOrigin( origin )
	--effectdata:SetStart( origin + self:GetRight()*-100 )
	effectdata:SetAngles( muzzleang + Angle(0,90,0) )
	effectdata:SetMagnitude( 0.01 )
	
	util.Effect( Shell, effectdata, true, true )


end