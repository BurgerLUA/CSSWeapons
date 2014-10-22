ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "SMOKE PARTICLE"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false 
ENT.RenderGroup = RENDERGROUP_BOTH

AddCSLuaFile()

function ENT:Initialize()
	if SERVER then
	
		local size = 1
		self:SetModel("models/Items/AR2_Grenade.mdl") 
		self:PhysicsInitSphere( size, "wood" )
		self:SetCollisionBounds( Vector( -size, -size, -size ), Vector( size, size, size ) )
		
		
		
		local phys = self:GetPhysicsObject()
		
		if phys:IsValid() then
			phys:Wake()
			phys:SetBuoyancyRatio(0)
			phys:EnableGravity(false)
			phys:EnableDrag(true)
		end
		
		SafeRemoveEntityDelayed(self,10)
	else
		self.SpawnTime = CurTime()
	
		--[[
		if math.Rand(1,100) > 75 then 
			self.EnableOtherRender = true
		else
			self.EnableOtherRender = false
		end
		--]]
	
		self.EnableOtherRender = false
	end
	
end

local mat1 = Material( "particle/particle_smokegrenade1" )
local mat2 = Material( "particle/warp1_warp" )

function ENT:Draw()
	if CLIENT then
		--self:DrawModel()
		self:DrawShadow(false)
	end
end

function ENT:DrawTranslucent()
	if CLIENT then
	
		local bonus = CurTime() - self.SpawnTime
		
		local r = 255
		local g = 255
		local b = 255
		local a = 255 - bonus*25.5
		
		
		
		cam.Start3D(EyePos(),EyeAngles()) -- Start the 3D function so we can draw onto the screen.
		
			render.SetMaterial( mat1 ) -- Tell render what material we want, in this case the flash from the gravgun
			render.DrawSprite( self:GetPos(), 320 + bonus*10, 320 + bonus*10, Color(255,255,255,255 - bonus*25.5)) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
			
			if self.EnableOtherRender == true then
				render.SetMaterial( mat2 ) -- Tell render what material we want, in this case the flash from the gravgun
				render.DrawSprite( self:GetPos(), 320 + bonus*10, 320 + bonus*10, Color(255,255,255,255)) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
			end
			
		cam.End3D()
	end
end