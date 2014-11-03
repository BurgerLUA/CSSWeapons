
if CLIENT then
	SWEP.PrintName			= "TF2 MedicGun"
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1
	SWEP.ViewModelFlip 		= false
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/usp45")
end

SWEP.HoldType				= "physgun"
SWEP.Base					= "weapon_base"
SWEP.Spawnable				= true
SWEP.Category				= "Team Fortress 2"

SWEP.ViewModel 				= "models/weapons/v_models/v_medigun_medic.mdl"
SWEP.WorldModel 			= "models/weapons/c_models/c_scattergun.mdl"

SWEP.Primary.Ammo			= "none"
SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic 		= false

SWEP.Secondary.Ammo 		= "none"
SWEP.Secondary.ClipSize 	= -1
SWEP.Secondary.DefaultClip 	= -1
SWEP.Secondary.Automatic	= false

SWEP.IsHealing 				= false


sound.Add( {
	name = "custom_tf2_medicgunloop", 
	channel = CHAN_WEAPON, 
	volume = 1.0, 
	level = SNDLVL_120dB ,
	pitch = {100, 100}, 
	sound = "weapons/medigun_heal.wav"
} )


function SWEP:Deploy()
	self.Owner:DrawViewModel(true)
	self:SendWeaponAnim(ACT_VM_DRAW)
end

function SWEP:PrimaryAttack()
	if self.IsHealing == false then
		if self:CheckForLatch() == true then
			self.IsHealing = true
			self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
			self:EmitSound("custom_tf2_medicgunloop")
			--print("Setting NWBool for CreateBeam...")
			self:SetNWBool("CreateBeam",true)
		end
	else
		self.IsHealing = false
		self:SendWeaponAnim(ACT_VM_IDLE)
		self:StopSound("custom_tf2_medicgunloop")
		--print("Setting NWBool for DestroyBeam...")
		self:SetNWBool("DestroyBeam",true)
	end
end

function SWEP:CheckForLatch()

	local ent = self.Owner:GetEyeTrace().Entity 

	if ent:IsPlayer() or ent:IsNPC() then
		if ent:GetPos():Distance(self.Owner:GetPos()) < 500 then
			return true
		else
			return false
		end
	else
		return false
	end

end

function SWEP:Think()

	if self:GetNWBool("CreateBeam",false) == true then
		--print("SHOULD SAY CLIENT AND SERVER")
	end

	if self:GetNWBool("CreateBeam",false) == true then	
		
		--print("NWBool Received for CreateBeam, telling it to self:CreateBeam")
		
		--if CLIENT then
			--print("Running the function self:CreateBeam on Client...")
			self:CreateBeam(self.Owner:GetEyeTrace().Entity )
		--end
		
		self:SetNWBool("CreateBeam",false)
		
	end
	
	if self:GetNWBool("DestroyBeam",false) == true then	
			
		--print("NWBool Received for DestroyBeam, telling it to self:DestroyBeam")
		
			
		--if CLIENT then
			--print("Running the function self:DestroyBeam on Client...")
			self:DestroyBeam()
		--end
			
		self:SetNWBool("DestroyBeam",false)
			
	end
	
end

function SWEP:CreateBeam(target)

	--[[
	if SERVER then
		local targetent = ents.Create("info_target")
			targetent:SetPos( target:GetPos() )
			targetent:Spawn()
			targetent:SetParent(target)
			targetent:SetName(tostring(targetent))
			self:SetNWEntity("targetent",targetent)
		
			print(targetent:GetPos())

		local viewmodelent = ents.Create("info_target")
			viewmodelent:SetPos(self.Owner:GetActiveWeapon():GetAttachment(1).Pos)
			viewmodelent:Spawn()
			viewmodelent:SetParent(self)
			self:SetNWEntity("viewmodelent",viewmodelent)
			
		local worldmodelent = ents.Create("info_target")
			worldmodelent:SetPos(self.Owner:GetActiveWeapon():GetAttachment(1).Pos)
			worldmodelent:Spawn()
			worldmodelent:SetParent(self)
			self:SetNWEntity("worldmodelent",worldmodelent)
		
		
		local beam = ents.Create("info_particle_system")
			beam:SetPos(self:GetPos())
			beam:SetParent(self)
			beam:SetKeyValue("effect_name","medicgun_beam_red")
			beam:SetKeyValue("cpoint1", targetent:GetName())
			beam:SetKeyValue("cpoint2", self:GetName())
			beam:SetKeyValue("start_active", "1")
			beam:Spawn()
			beam:Activate()
			self:SetNWEntity("beam",beam)
		
			
	end
	--]]
	
		
		
	if CLIENT  then
	
		--print("Creating Particle System of a beam. Everything went right.")
	
		PrecacheParticleSystem("medicgun_beam_red")
	
		local CPoint0 = {
			["entity"] = self.Owner:GetViewModel(),
			["attachtype"] = PATTACH_ABSORIGIN_FOLLOW,
		}
		local CPoint1 = {
			["entity"] = target:GetActiveWeapon(),
			["attachtype"] = PATTACH_ABSORIGIN_FOLLOW,
		}
	
		LocalPlayer():CreateParticleEffect("medicgun_beam_red",{CPoint0,CPoint1})
		
	end
	
	
end

function SWEP:DestroyBeam()

	if SERVER then
	
		--SafeRemoveEntity(self:GetNWEntity("targetent"))
		--SafeRemoveEntity(self:GetNWEntity("worldmodelent"))
		--SafeRemoveEntity(self:GetNWEntity("viewmodelent"))
		--SafeRemoveEntity(self:GetNWEntity("beam"))
		
	end



	if CLIENT  then
	
		
	
		--print("Removing Particle System of a beam. Everything went right.")
	
		LocalPlayer():StopParticleEmission("medicgun_beam_red")
	end
end

function SWEP:SecondaryAttack()
	----printTable(GetActivities(self))
end

function GetActivities( ent )
  local k, v, t
  
  t = { }

  for k, v in ipairs( ent:GetSequenceList( ) ) do
    table.insert( t, { id = k, act = ent:GetSequenceActivity( k ), actname = ent:GetSequenceActivityName( k ) } )
  end

  return t
end





