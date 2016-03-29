AddCSLuaFile()

ENT.Type 				= "anim"
ENT.Base 				= "base_entity"
ENT.PrintName 			= "SWEP Ammo Gift"
ENT.Author 				= ""
ENT.Information 		= ""

ENT.Spawnable 			= false
ENT.AdminOnly			= false
ENT.Category			= "CS:S Ammo"



function ENT:Initialize()

	if SERVER then
	
		self:SetModel("models/hunter/blocks/cube05x05x05.mdl")
		
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:DrawShadow(false)
		self:SetCollisionGroup(COLLISION_GROUP_NONE)
		
		self:SetUseType(SIMPLE_USE)
		
	
		local phys = self:GetPhysicsObject()
		if phys:IsValid() then
			phys:Wake()
			phys:SetBuoyancyRatio(0)
		end
	end
	
	self:EmitSound("items/gift_drop.wav")
	
end

function ENT:SpawnFunction( ply, tr, ClassName )

	if ( !tr.Hit ) then return end

	local SpawnPos = tr.HitPos + tr.HitNormal * 16

	local ent = ents.Create( ClassName )
	ent:SetPos( SpawnPos )
	ent:Spawn()
	ent:Activate()

	return ent

end

function ENT:Use(activator,caller,useType,value)
	
	if ( activator:IsPlayer() ) then
	
		for k,v in pairs(activator:GetWeapons()) do	
		
			if v:GetClass() ~= "weapon_ex_ammo" then
				if v:GetPrimaryAmmoType() then
					if v:GetMaxClip1() and v:GetMaxClip1() >= 1 then
						activator:GiveAmmo(v:GetMaxClip1(),v:GetPrimaryAmmoType(),false)
					else
						activator:GiveAmmo(1,v:GetPrimaryAmmoType(),false)
					end
				end
			end
		end
	
		self:EmitSound("items/gift_pickup.wav")
		
		SafeRemoveEntity(self)

	end

end

function ENT:Draw()

	local settings = {}

	if file.Exists("models/items/cs_gift.mdl","GAME") then
		settings["model"] = "models/items/cs_gift.mdl"
	else
		settings["model"] = "models/maxofs2d/companion_doll.mdl"
	end
		
	settings["pos"] = self:GetPos() - Vector(0,0,12)
	settings["angle"] = Angle(0,CurTime()*500,0)

	render.Model(settings)

end
