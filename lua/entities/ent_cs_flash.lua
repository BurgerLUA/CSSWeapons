ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "FLASH NADE"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false 

ENT.BounceSound = Sound("Flashbang.Bounce")
ENT.ExplodeSound = Sound("Flashbang.Explode")

AddCSLuaFile()

function ENT:Initialize()

	if SERVER then
		self:SetModel("models/weapons/w_eq_flashbang.mdl") 
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
	
		local phys = self:GetPhysicsObject()
		if phys:IsValid() then
			phys:Wake()
			phys:SetBuoyancyRatio(0)
		end

	end
	
	self.Delay = CurTime() + 3
	self.First = true
	
end

function ENT:PhysicsCollide(data, physobj)
	if SERVER then
		self.HitP = data.HitPos
		self.HitN = data.HitNormal
		
		if self:GetVelocity():Length() > 50 then
			self:EmitSound(self.BounceSound)
		end
	end
end



function ENT:Think()

	if self.First == true then
		self.First = false
	end

	if CurTime() > self.Delay then 
		self:Detonate(self,self:GetPos())
	end
	
	if SERVER then
		self:NextThink( CurTime() + 1 )
	end
	
	if CLIENT then
		self:SetNextClientThink( CurTime() + 1 )
	end

end

function ENT:Detonate(self,pos)

	local maxdistance = 1000

	if not self:IsValid() then return end

	if CLIENT then
	
		self:EmitSound(self.ExplodeSound)
	
		local effectdata = EffectData()
			effectdata:SetStart( pos + Vector(0,0,100)) // not sure if we need a start and origin (endpoint) for this effect, but whatever
			effectdata:SetOrigin( pos)
			effectdata:SetScale( 100 )
			effectdata:SetRadius( 5000 )
		util.Effect( "HelicopterMegaBomb", effectdata )	
		
		local Players = player.GetAll()
	
		if table.Count(Players) > 0 then

			for k,v in pairs(Players) do
					
				local distancecount = maxdistance/100 - self:GetPos():Distance(v:GetPos())/100

				if distancecount > 0 and distancecount < 8 then 
					for n,f in pairs(ents.FindInCone(v:GetShootPos(), v:GetAimVector(),maxdistance,90)) do
						if f == self.Entity then
							self:BlindEffects(v,distancecount)
						end
					end
				elseif distancecount >= 8 then
					self:BlindEffects(v,distancecount)
				end

			end
		end
		
	end

	if SERVER then
		SafeRemoveEntity(self)
	end
	
end


function ENT:BlindEffects(v,distancecount)

	--print("BLINDED BY THE LIGHT")

	if distancecount > 1 then
		v:SetDSP( 37, false )
	end
	
	v.BlindAmount = distancecount
	v.IsBlinded = true
	
end

function ENT:Draw()
	if CLIENT then
		self:DrawModel()
	end
end