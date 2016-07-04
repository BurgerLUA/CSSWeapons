AddCSLuaFile()

ENT.Type 				= "anim"
ENT.Base 				= "base_entity"
ENT.PrintName 			= "[CHEAT] Ammo Gift"
ENT.Author 				= ""
ENT.Information 		= ""

ENT.Spawnable 			= true
ENT.AdminOnly			= true
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
			if v:IsScripted() == true then
				local SWEP = weapons.GetStored(v:GetClass())
				if SWEP.Category == "Counter-Strike" then
					if SWEP.Primary.Ammo ~= "none" then
						activator:SetAmmo(9999,SWEP.Primary.Ammo)
					end
				end
			end
		end
		activator:ChatPrint("You have received max ammo for all of your CSS Weapons")
		self:EmitSound("items/gift_pickup.wav")
		self:Remove()
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
