ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "CSS Bullet"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false 

AddCSLuaFile()

function ENT:Initialize()
	if SERVER then
		self:SetModel("models/weapons/shell.mdl") 

		local size = 1
		
		self:PhysicsInitSphere( size, "metal_bouncy" )
		self:SetCollisionBounds( Vector( -size, -size, -size ), Vector( size, size, size ) )
		
		
		

		local phys = self:GetPhysicsObject()
		if phys:IsValid() then
			phys:Wake()
			phys:SetBuoyancyRatio(0)
			phys:EnableGravity(false)
			phys:EnableDrag(false)
			phys:SetMass(1)
		end
		
		
		self.StartTime = CurTime()
		self.Damage = self:GetNWInt("Damage",100)
		
		util.SpriteTrail( self, 0, Color(255,255,0,100) , true , 4 , 1 , 0.005*self.Damage, 64, "trails/smoke.vmt" )
		
	end
end

function ENT:PhysicsCollide(data, physobj)
	if SERVER then
	
		self:Remove()
		
		local damageinfo = DamageInfo()
		
		damageinfo:SetDamage(self.Damage)
		damageinfo:SetAttacker(self.Owner)
		data.HitEntity:TakeDamageInfo(damageinfo)
		
		
	end

	local e = EffectData()
		e:SetOrigin(data.HitPos)
		e:SetStart(data.HitPos - data.HitNormal)
		--e:SetSurfaceProp(data.SurfaceProps)
		e:SetDamageType(DMG_BULLET)
		--e:SetHitBox(data.HitBox)
	if CLIENT then
		e:SetEntity(data.HitEntity)
	else
		e:SetEntIndex(data.HitEntity:EntIndex())
	end
	
	util.Effect("Impact", e)
	
	
	
	
	
end

function ENT:Think()
	if SERVER then
	
	
	
		local timepassed = CurTime() - self.StartTime
		local damage = self.Damage - timepassed*30
		local phys = self:GetPhysicsObject()
		
		--print(damage)
		
		if damage < 10 then
			phys:EnableGravity(true)
			--print("FALL")
			phys:ApplyForceCenter(Vector(0,0,80))
		end
	
	
	
	end
end

local material = Material( "sprites/splodesprite" )
local color = Color( 255, 255, 255, 255 ) --Define this sort of stuff outside of loops to make more efficient code.

function ENT:Draw()
	if CLIENT then
		self:DrawModel()
		--[[
		cam.Start3D( EyePos(), EyeAngles() ) -- Start the 3D function so we can draw onto the screen.
			render.SetMaterial( material ) -- Tell render what material we want, in this case the flash from the gravgun
			render.DrawSprite( self:GetPos(), 16, 16, color ) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
		cam.End3D()
		--]]
	end
end
