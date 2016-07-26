-- Copied from garry's tooltracer

EFFECT.BulletMats = {}
EFFECT.BulletMats[1] = Material( "effects/spark" )
EFFECT.BulletMats[2] = Material( "effects/gunshiptracer")
EFFECT.BulletMats[3] = Material( "effects/laser_tracer" )

EFFECT.SmokeTrailMat = Material("trails/smoke")

function EFFECT:Init( data )

	local Magnitude = data:GetMagnitude()
	local Range = data:GetRadius()
	
	self.Position = data:GetStart()
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	self.StartPos = self:GetTracerShootPos( self.Position, self.WeaponEnt, self.Attachment ) -- Should return normal position if no weapon
	self.EndPos = data:GetOrigin()
	self.Direction = (self.StartPos - self.EndPos):GetNormalized()
	self.Distance = self.StartPos:Distance(self.EndPos)
	self.Width = ((Magnitude*50)^0.30)*0.3
	self.Length = (Range*0.03)^1
	self.DamageType = data:GetDamageType()
	
	local Ratio = self.Length/self.Width

	self.BulletSpeed = math.Clamp(Ratio * 100,2000,6000) + 1000
	--self.BulletSpeed = 30
	self.FadeTime = Range
	self.MaxFade = GetConVar("sv_css_damagefalloff_scale"):GetFloat()
	self.PositionPercent = -(self.Length/self.Distance)
	self:SetRenderBoundsWS( self.StartPos, self.EndPos )
	
	-- Copied from Garrysmod Arrow Widget
	if self.WeaponEnt and self.WeaponEnt ~= NULL and (!self.WeaponEnt:IsWeapon() or !self.WeaponEnt:IsCarriedByLocalPlayer()) then
		local Distance, Position, WhatIsThis = util.DistanceToLine(self.StartPos,self.EndPos,EyePos())
		local SoundSize = 256*self.Width
		if Distance <= SoundSize then
			local VolumeMod = 1 - (Distance/SoundSize)
			sound.Play("Bullets.DefaultNearmiss",Position,75,100,VolumeMod)
		end
	end

end

function EFFECT:Think()
	self.PositionPercent = self.PositionPercent + (self.BulletSpeed/self.Distance)*FrameTime()
	--return self.PositionPercent < 2*self.Width
	return self.PositionPercent < 1
end

function EFFECT:Render()

	local DistanceTraveled = self.PositionPercent * self.Distance
	local AlphaMath = math.Clamp(math.min( (2) - (DistanceTraveled/self.FadeTime),1),self.MaxFade,1)
	local MinPos = LerpVector(math.Clamp(self.PositionPercent,0,1),self.StartPos,self.EndPos)
	local SmokeMinPos = LerpVector(math.Clamp(self.PositionPercent - 1,0,1),self.StartPos,self.EndPos)
	local ConvertMath = ( (self.Length*AlphaMath)/self.Distance )
	local MaxPos = LerpVector(math.Clamp( (self.PositionPercent + ConvertMath),0,1),self.StartPos,self.EndPos)
	
	if self.PositionPercent <= 1 then
	
		if self.BulletMats[self.DamageType] then
			render.SetMaterial( self.BulletMats[self.DamageType] )
		else
			render.SetMaterial( self.BulletMats[DMG_BULLET] )
		end

		render.DrawBeam( MinPos , MaxPos, self.Width,0, 1, Color(255,255,255,255) )
		
	end
	
	--[[
	local SmokeMul = self.PositionPercent/(2*self.Width)
	

	local SmokeOffset = Vector(0,0,self.PositionPercent)*1
	local SmokeInverse = (1-SmokeMul)
	
	local Size = self.Length 
	

	
	
	render.SetMaterial( self.SmokeTrailMat )
	render.DrawBeam( self.StartPos + SmokeOffset , MaxPos + SmokeOffset, self.Width*SmokeMul*2,0, 1, Color(255,255,255, math.max(0,Size) * SmokeInverse ) )
	--]]

	
	
end
