function NadeKeyPress(ply,key)

	if GetConVarNumber("sv_css_quick") == 0 then return end
	
	if ply:KeyDown(IN_USE) or ply:IsBot() then
		if key == IN_ATTACK or ply:IsBot() then
			if ply:InVehicle() then return end
		
			local Weapon = ply:GetActiveWeapon()
			
			if not IsValid(Weapon) then return end
			if not Weapon:IsScripted() then return end	
			if Weapon.Base ~= "weapon_cs_base" then return end	
			if Weapon:IsBusy() == true then return end
			
			if CLIENT then return end
			
			if not CSS_SuperThrowCheck(ply,Weapon) then return false end
			
			if Weapon.HasHolster then
				local ThrowDelay = Weapon.Owner:GetViewModel():SequenceDuration()
				timer.Simple(ThrowDelay + FrameTime(), function()
					Weapon = ply:GetActiveWeapon()
					if Weapon and Weapon ~= NULL then
						Weapon:QuickThrow()
					end
				end)
			else
				Weapon = ply:GetActiveWeapon()
				Weapon:QuickThrow()
			end
			
		end
	end

end

function CSS_SuperThrowCheck(ply,Weapon)

	if CSS_ThrowCheck(ply,Weapon,"weapon_cs_he") then
		return true
	elseif CSS_ThrowCheck(ply,Weapon,"weapon_ex_gas") then
		return true
	elseif CSS_ThrowCheck(ply,Weapon,"weapon_cs_flash") then
		return true
	elseif CSS_ThrowCheck(ply,Weapon,"weapon_cs_smoke") then
		return true
	else
		return false
	end
	
end


function CSS_ThrowCheck(ply,Weapon,class)

	if not ply:HasWeapon(class) then return false end
	if Weapon:GetClass() == class and not ply:IsBot() then return false end	
	ply:SelectWeapon(class)

	return true

end

hook.Add("KeyPress","Quick Grenade",NadeKeyPress)

--[[

CSS_AllBullets = {}


function CSS_BulletThink()

	local UpdateRate = FrameTime()
	
	for num,Bullet in pairs(CSS_AllBullets) do
	
		local Energy = Bullet.energy
		Energy = Energy - UpdateRate
		
		if Energy > 0 then

			local Position = Bullet.pos
			local Speed = Bullet.speed	
			Position = Position + (Speed*UpdateRate)
			
			CSS_AllBullets[num].pos = Position
			--CSS_AllBullets[num].speed = Position
			CSS_AllBullets[num].energy = Energy
			
			local TraceLine = util.TraceLine(
				{
					start = Position,
					endpos = Position + Speed:GetNormalized()*5,
					filter = Bullet.owner
				}
			)
			
			if TraceLine.Hit then
			
				print(TraceLine.Entity)
			
				local Data = EffectData()
				Data:SetAngles(Angle(0,0,0))
				Data:SetColor(1)
				Data:SetDamageType(DMG_BULLET)
				if SERVER then
					Data:SetEntIndex(TraceLine.Entity:EntIndex())
				end
				Data:SetEntity(TraceLine.Entity)
				Data:SetFlags(3)
				Data:SetMagnitude(100)
				Data:SetNormal(TraceLine.HitNormal)
				Data:SetOrigin(TraceLine.HitPos)
				Data:SetRadius(128)
				Data:SetScale(1)
				Data:SetStart(TraceLine.HitPos)
				Data:SetSurfaceProp(TraceLine.SurfaceProps)
				
				util.Effect("AR2Impact",Data)
				
				table.remove(CSS_AllBullets,num)
			
			end

		else
			table.remove(CSS_AllBullets,num)
		end
		
	end

end

hook.Add("Think","CSS_BulletThink",CSS_BulletThink)

local Mat = Material("sprites/bomb_planted_ring")

if CLIENT then


	function CSS_DrawBullets()
		for num,Bullet in pairs(CSS_AllBullets) do
		
			render.SetMaterial(Mat)
			render.DrawSprite(Bullet.pos,4,4, Color(255,0,0,255))
			
			--local Ang = ( (Bullet.pos + Bullet.speed) - (Bullet.pos - Bullet.speed) ):Angle()

			render.DrawLine( Bullet.pos, Bullet.pos + Bullet.speed:GetNormalized()*5, Color(255,255,255,255), true )

		end
	end

	hook.Add("PostDrawTranslucentRenderables","CSS_DrawBullets",CSS_DrawBullets)


end
--]]
