
if CLIENT then
	SWEP.PrintName			= "HL2 SHOTGUN"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_xm1014", "csd", "B", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "shotgun"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category			= "HL2"

SWEP.ViewModel			= "models/weapons/c_shotgun.mdl"
SWEP.WorldModel			= "models/weapons/w_shotgun.mdl"

SWEP.Primary.Damage			= 8
SWEP.Primary.NumShots		= 6
SWEP.Primary.Sound			= Sound("weapons/shotgun/shotgun_fire7.wav")
SWEP.Primary.Cone			= .1
SWEP.Primary.ClipSize		= 6
SWEP.Primary.DefaultClip	= 6
SWEP.Primary.Delay			= 1
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = false

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "shotgun" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 1
SWEP.EnableScope = false
SWEP.EnableCrosshair = true


function SWEP:PrimaryAttack()
	self.Owner:LagCompensation( true )
	self.Primary.NumShots = 6
	self:Shoot()
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)	
	self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)	
	
	timer.Simple(self.Primary.Delay*0.5, function() 
		if self.ReloadDelay > CurTime() then return end
		self:SendWeaponAnim(ACT_SHOTGUN_PUMP)
		self.Owner:EmitSound("weapons/shotgun/shotgun_cock.wav",90,100)

	end)
	self.Owner:LagCompensation( false)
end

function SWEP:SecondaryAttack()
	if self:Clip1() < 2 then return end
	self.Owner:LagCompensation( true )
	self.Primary.NumShots = 12
	self:Shoot()
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)	
	self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)	
	
	
	self:TakePrimaryAmmo(1)
	self.Weapon:EmitSound("weapons/shotgun/shotgun_dbl_fire.wav",100,100)
	timer.Simple(self.Primary.Delay*0.5, function() 
		if self.ReloadDelay > CurTime() then return end
		self:SendWeaponAnim(ACT_SHOTGUN_PUMP)
		self.Owner:EmitSound("weapons/shotgun/shotgun_cock.wav",90,100)	
	end)
	self.Owner:LagCompensation( false)
end

