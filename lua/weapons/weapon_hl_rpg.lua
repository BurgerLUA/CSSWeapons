
if CLIENT then
	SWEP.PrintName			= "HL2 RPG"
	SWEP.Slot				= 4
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_hl_rpg", "HL2MPTypeDeath", "3", Color( 255, 80, 0, 255 ) )
	killicon.AddFont( "ent_hl2_rocket", "HL2MPTypeDeath", "3", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "rpg"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category			= "HL2"

SWEP.ViewModel			= "models/weapons/c_rpg.mdl"
SWEP.WorldModel			= "models/weapons/w_rocket_launcher.mdl"

SWEP.Primary.Damage			= 0
SWEP.Primary.NumShots		= 0
SWEP.Primary.Sound			= Sound("weapons/rpg/rocketfire1.wav")
SWEP.Primary.Cone			= .05
SWEP.Primary.ClipSize		= 1
SWEP.Primary.DefaultClip	= 1
SWEP.Primary.Delay			= 0.3
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = false


SWEP.RecoilMul	= 1
SWEP.Type = "sniper" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 4
SWEP.EnableScope = true
SWEP.EnableCrosshair = true

function SWEP:PrimaryAttack()
	if !self:CanPrimaryAttack() then return end
	self:ThrowRocket(100)
	self:TakePrimaryAmmo(1)
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)	
	self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)	
	self:EmitSound(self.Primary.Sound)
	self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	timer.Simple(0.25,function() 
		--if self:GetNWBool("zoomed",false) == false then
			if not IsValid(self) then return end
			self:Reload()
		--end
	end)
end

function SWEP:ThrowRocket(damage)
	if CLIENT then return end
	self.Owner:ViewPunch(Angle(-2,0,0))
	local EA =  self.Owner:EyeAngles()
	local pos = self.Owner:GetShootPos() + EA:Right() * 5 - EA:Up() * 4 + EA:Forward()*25
	
	local ent = ents.Create("ent_hl2_rocket")	
		ent:SetPos(pos)
		ent:SetAngles(EA)
		ent:SetNWInt("damage",damage)
		ent:SetOwner(self.Owner)
		ent:Spawn()
		ent:Activate()
		ent:SetOwner(self.Owner)
		ent:GetPhysicsObject():SetVelocity(EA:Forward() * 100 + EA:Up()*50)

		--ent:GetPhysicsObject():AddAngleVelocity(Vector(100000,100000,100000))
end