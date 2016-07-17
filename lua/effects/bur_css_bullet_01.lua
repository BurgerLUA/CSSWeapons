-- Copied from garry's tooltracer

EFFECT.BeamMat = Material( "effects/blooddrop001" )

function EFFECT:Init( data )

	local Magnitude = data:GetMagnitude()
	self.Position = data:GetStart()
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	self.StartPos = self:GetTracerShootPos( self.Position, self.WeaponEnt, self.Attachment ) -- Should return normal position if no weapon
	self.EndPos = data:GetOrigin()
	self.Direction = (self.StartPos - self.EndPos):GetNormalized()
	self.Distance = self.StartPos:Distance(self.EndPos)
	--self.BulletSpeed = 2000 * (0.5 + (Magnitude/30) * 0.5)-- Units per second
	self.BulletSpeed = 100
	self.Width = Magnitude*0.1
	self.Length = Magnitude*1.5
	self.FadeTime = data:GetRadius()
	self.MaxFade = GetConVar("sv_css_damagefalloff_scale"):GetFloat()
	
	local ConvertMath = (self.Length/self.Distance)
	
	self.PositionPercent = -ConvertMath
	
	self:SetRenderBoundsWS( self.StartPos, self.EndPos )

end

function EFFECT:Think()
	return self.PositionPercent < 1
end

function EFFECT:Render()

	if self.PositionPercent > 1 then return end
	
	self.PositionPercent = self.PositionPercent + (self.BulletSpeed/self.Distance)*FrameTime()
	local RenderPos = LerpVector(self.PositionPercent,self.StartPos,self.EndPos)

	
	
	
	local DistanceTraveled = self.PositionPercent * self.Distance
	
	local AlphaMath = (1 - self.MaxFade) + math.min(1, ( (self.FadeTime) / math.max(1,DistanceTraveled) ))*self.MaxFade
	
	local ConvertMath = (self.Length/self.Distance) * (AlphaMath)
	
	local MinPos = LerpVector(math.Clamp(self.PositionPercent,0,1),self.StartPos,self.EndPos)
	local MaxPos = LerpVector(math.Clamp( (self.PositionPercent + ConvertMath),0,1),self.StartPos,self.EndPos)
	
	
	


	local TotalScale = MinPos:Distance(MaxPos) / self.Length
	
	render.SetMaterial( self.BeamMat )
	render.DrawBeam( MinPos , MaxPos, self.Width, 1 - TotalScale, 1, Color(255,255,255,AlphaMath*255) )

end
