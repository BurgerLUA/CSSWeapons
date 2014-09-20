
if CLIENT then
	SWEP.PrintName			= "HL2 AR2"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_hl_ar2", "HL2MPTypeDeath", "2", Color( 255, 80, 0, 255 ) )
	killicon.AddFont( "ent_hl2_ar2ball", "HL2MPTypeDeath", "8", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "ar2"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category			= "HL2"

SWEP.ViewModel			= "models/weapons/c_irifle.mdl"
SWEP.WorldModel			= "models/weapons/w_irifle.mdl"

SWEP.Primary.Damage			= 33
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/ar2/fire1.wav")
SWEP.Primary.Cone			= .005
SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Delay			= 0.1
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = true

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "other" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 4
SWEP.EnableScope = true
SWEP.EnableCrosshair = true

function SWEP:SecondaryAttack()
	if !self:CanPrimaryAttack() then return end
	self:SetNextPrimaryFire(CurTime()+3)
	self:EmitSound("weapons/cguard/charging.wav",100,100)
	self:SendWeaponAnim(ACT_VM_FIDGET)
	timer.Simple(1,function()
		if not IsValid(self) then return end
		if self.Owner:GetActiveWeapon() ~= self then return end
		self:SendWeaponAnim(ACT_VM_SECONDARYATTACK)
		self:EmitSound("weapons/irifle/irifle_fire2.wav",100,100)
		self:ThrowCombineBall(self:Clip1()*self.Primary.Damage)
		self:TakePrimaryAmmo(self:Clip1())
	end)
	
end


function SWEP:ThrowCombineBall(damage)
	--PrintTable(GetActivities(self))
	if CLIENT then return end
	self.Owner:ViewPunch(Angle(-5,0,0))
	local EA =  self.Owner:EyeAngles()
	local pos = self.Owner:GetShootPos() + EA:Right() * 5 - EA:Up() * 4 + EA:Forward()*25
	
	local ent = ents.Create("ent_hl2_ar2ball")
	--local ent = ents.Create("prop_combine_ball")		
		ent:SetPos(pos)
		ent:SetAngles(EA)
		ent:SetNWInt("damage",damage)
		ent:SetOwner(self.Owner)
		--ent:SetSaveValue('m_flRadius',12)
		--ent:SetSaveValue("m_bEmit",false)
		--ent:SetSaveValue("m_bheld",false)
		--ent:SetSaveValue("m_bLaunched",true)
		--PrintTable(ent:GetKeyValues())
		ent:Spawn()
		ent:Activate()
		ent:SetOwner(self.Owner)
		ent:GetPhysicsObject():SetVelocity(self.Owner:GetVelocity() + EA:Forward() * 1000 + EA:Up()*0)
		ent:GetPhysicsObject():AddAngleVelocity(Vector(100000,100000,100000))
end

--[[
function GetActivities( ent )
  local k, v, t

  t = { }

  for k, v in ipairs( ent:GetSequenceList( ) ) do
    table.insert( t, { id = k, act = ent:GetSequenceActivity( k ), actname = ent:GetSequenceActivityName( k ) } )
  end

  return t
end
--]]

