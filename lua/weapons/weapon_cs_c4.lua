
if CLIENT then
	SWEP.PrintName			= "CSS C4 EXPLOSIVE"
	SWEP.Slot				= 4
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_he", "csd", "O", Color( 255, 80, 0, 255 ) )
	killicon.AddFont( "ent_cs_he", "csd", "O", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip 		= false
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/last_match_performance")
end

SWEP.HoldType				= "slam"
SWEP.Base					= "weapon_cs_base"
SWEP.Spawnable				= true
SWEP.AdminOnly				= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel				= "models/weapons/cstrike/c_c4.mdl"
SWEP.WorldModel				= "models/weapons/w_c4.mdl"

SWEP.Primary.Damage			= 0
SWEP.Primary.NumShots		= 0
SWEP.Primary.Sound			= Sound("weapons/ak47/ak47-1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Delay			= 1
SWEP.Primary.Ammo			= "none"
SWEP.Primary.Automatic 		= false

SWEP.RecoilMul				= 1
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 0
SWEP.EnableCrosshair 		= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false

SWEP.IsThrowing 			= false
SWEP.HasAnimated			= false
SWEP.HasThrown				= false

SWEP.CanHolster				= true

function SWEP:Deploy()
	self.DefaultWalkSpeed = self.Owner:GetWalkSpeed()
	self.DefaultRunSpeed = self.Owner:GetRunSpeed()
end


function SWEP:Holster()
	return self.CanHolster
end

function SWEP:Initialize()
	self:SetWeaponHoldType(self.HoldType)
end

function SWEP:PrimaryAttack()
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay + 2)
	self.CanHolster = false
	self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	--self.Owner:Freeze(true)
	--self:TakePrimaryAmmo(1)
	
	
	self.Owner:SetRunSpeed(0.01)
	self.Owner:SetWalkSpeed(0.01)
	
	self.IsThrowing = true
	
	self.ThrowAnimation = CurTime() + 3
	self.Throw = CurTime() + 3.1
	self.ThrowRemove = CurTime() + 3.5
	
end

function SWEP:Think()
	if self.IsThrowing == true then
	
		if self.ThrowAnimation < CurTime() then
			if self.HasAnimated == false then
				self:SendWeaponAnim(ACT_VM_SECONDARYATTACK)
				self.Owner:SetAnimation(PLAYER_ATTACK1) 
				self.HasAnimated = true
			end
		end
		
		if self.Throw < CurTime() then
			if self.HasThrown == false then
				self:PlantC4()
				self.HasThrown = true
			end
		end
		
		if self.ThrowRemove < CurTime() then
			if CLIENT then return end
			self.Owner:SelectWeapon(self.Owner:GetWeapons()[1]:GetClass() )
			self:Remove() 
		end
		
	end
end

function SWEP:Reload()
	--PrintTable(GetActivities(self))
end

function SWEP:PlantC4()
	if CLIENT then return end
	local EA =  Angle(0,self.Owner:GetAngles().y,0)
	local pos = self.Owner:GetPos()

	self.Owner:SetRunSpeed(self.DefaultRunSpeed)
	self.Owner:SetWalkSpeed(self.DefaultWalkSpeed)
	self.CanHolster = true
	
	
	local ent = ents.Create("ent_cs_c4")		
		ent:SetPos(pos)
		ent:SetAngles(EA)
		ent:Spawn()
		ent:Activate()
		ent:SetNWEntity("owner",self.Owner)
		--ent:SetOwner(self.Owner)
		
	ent:EmitSound("weapons/c4/c4_plant.wav")
	
	--self.Owner:Freeze(false)
	
end


function GetActivities( ent )
  local k, v, t

  t = { }

  for k, v in ipairs( ent:GetSequenceList( ) ) do
    table.insert( t, { id = k, act = ent:GetSequenceActivity( k ), actname = ent:GetSequenceActivityName( k ) } )
  end

  return t
end