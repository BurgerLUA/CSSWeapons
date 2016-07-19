-- Copied from garry's tooltracer

EFFECT.BeamMat = Material( "effects/spark" )
--EFFECT.SmokeMat = Material( "trails/smoke" )

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
	
	--local Size = self.Width*self.Length
	local Ratio = self.Length/self.Width

	self.BulletSpeed = math.Clamp(Ratio * 100,2000,6000) + 1000
	self.FadeTime = Range
	self.MaxFade = GetConVar("sv_css_damagefalloff_scale"):GetFloat()
	self.PositionPercent = -(self.Length/self.Distance)
	self:SetRenderBoundsWS( self.StartPos, self.EndPos )
	
	-- Copied from Garrysmod Arrow Widget
	if self.WeaponEnt and self.WeaponEnt ~= NULL and not self.WeaponEnt:IsCarriedByLocalPlayer() then
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
	return self.PositionPercent < 1
end

function EFFECT:Render()

	if self.PositionPercent > 1 then return end
	
	local DistanceTraveled = self.PositionPercent * self.Distance
	local AlphaMath = (1 - self.MaxFade) + math.min(1, ( (self.FadeTime) / math.max(1,DistanceTraveled) ))*self.MaxFade
	local ConvertMath = ( (self.Length*AlphaMath)/self.Distance )
	local MinPos = LerpVector(math.Clamp(self.PositionPercent,0,1),self.StartPos,self.EndPos)
	local MaxPos = LerpVector(math.Clamp( (self.PositionPercent + ConvertMath),0,1),self.StartPos,self.EndPos)
	--local TotalScale = MinPos:Distance(MaxPos) / (self.Length*AlphaMath)
	
	--local BulletChange = (1-AlphaMath)*FrameTime()*3000
	
	--self.BulletSpeed = math.Clamp(self.BulletSpeed - BulletChange,1000,6000)
	
	--print(self.BulletSpeed)
	
	render.SetMaterial( self.BeamMat )
	render.DrawBeam( MinPos , MaxPos, self.Width * AlphaMath,0, 1, Color(255,255,255,AlphaMath*255) )

end
