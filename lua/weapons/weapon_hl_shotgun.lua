
if CLIENT then
	SWEP.PrintName			= "HL2 SHOTGUN"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_hl_shotgun", "HL2MPTypeDeath", "0", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "shotgun"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category			= "HL2"

SWEP.ViewModel			= "models/weapons/c_shotgun.mdl"
SWEP.WorldModel			= "models/weapons/w_shotgun.mdl"

SWEP.Primary.Damage			= 12
SWEP.Primary.NumShots		= 6
SWEP.Primary.Sound			= Sound("weapons/shotgun/shotgun_fire7.wav")
SWEP.Primary.Cone			= .05
SWEP.Primary.ClipSize		= 6
SWEP.Primary.DefaultClip	= 6
SWEP.Primary.Delay			= 0.75
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = false

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "shotgun" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 1
SWEP.EnableScope = false
SWEP.EnableCrosshair = true


function SWEP:PrimaryAttack()
	
	self.Primary.NumShots = 6
	self:Shoot()
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)	
	self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)	
	
	timer.Simple(0.3, function() 
		if not IsValid(self) then return end
		if self.IsReloading == 1 then return end
		if self:Clip1() >= 1 then
			self:SendWeaponAnim(ACT_SHOTGUN_PUMP)
			self.Owner:EmitSound("weapons/shotgun/shotgun_cock.wav",50,100)
		end	
	end)

end

function SWEP:SecondaryAttack()
	if self:Clip1() < 2 then
		self:PrimaryAttack()
	return end
	
	self.Primary.NumShots = 12
	self.Primary.Damage = 10
	self:Shoot()
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay*2.25)	
	self:SetNextSecondaryFire(CurTime() + self.Primary.Delay*2.25)	
	
	
	self:TakePrimaryAmmo(1)
	self.Weapon:EmitSound("weapons/shotgun/shotgun_dbl_fire.wav",100,100)
	timer.Simple(0.3, function() 
		if not IsValid(self) then return end
		if self.IsReloading == 1 then return end
		self:SendWeaponAnim(ACT_SHOTGUN_PUMP)
		self.Owner:EmitSound("weapons/shotgun/shotgun_cock.wav",50,100)	
	end)

end

