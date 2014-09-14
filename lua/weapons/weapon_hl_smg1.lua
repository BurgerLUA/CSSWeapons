
if CLIENT then
	SWEP.PrintName			= "HL2 SMG"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_xm1014", "csd", "B", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "smg"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category			= "HL2"

SWEP.ViewModel			= "models/weapons/c_smg1.mdl"
SWEP.WorldModel			= "models/weapons/w_smg1.mdl"

SWEP.Primary.Damage			= 4
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/smg1/smg1_fire1.wav")
SWEP.Primary.Cone			= .01
SWEP.Primary.ClipSize		= 45
SWEP.Primary.DefaultClip	= 45
SWEP.Primary.Delay			= 0.13
SWEP.Primary.Ammo			= "smg"
SWEP.Primary.Automatic = true

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "other" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 1
SWEP.EnableScope = false
SWEP.EnableCrosshair = true

SWEP.EnableBurst = false

function SWEP:Reload()
	if self:Clip1() >= self.Primary.ClipSize then return end
	
	if not self.ReloadDelay then 
		self.ReloadDelay = 0
	end
	
	if self.ReloadDelay > CurTime() then return end

	self.ReloadDelay = CurTime() + self.Owner:GetViewModel():SequenceDuration() + 0.25
	self.Owner:SetAnimation(PLAYER_RELOAD)
	self:SendWeaponAnim( ACT_VM_RELOAD )
	self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration()  + 0.1)
	self.Weapon:EmitSound("weapons/smg1/smg1_reload.wav",100,100)
	
	timer.Simple(self.Owner:GetViewModel():SequenceDuration()*0.75,function() 
		if IsValid(self) then
			self:SetClip1(self.Primary.ClipSize) 
		end	
	end)
end

function SWEP:PrimaryAttack()
	if !self:CanPrimaryAttack() then return end
	
	
	
	if self.EnableBurst == true then
	
		self.Primary.Delay = 0.39
		self.Primary.Automatic = false
	
	
		if self.Weapon:Clip1() >= 3 then
			self:TakePrimaryAmmo(2)
			self.Primary.NumShots = 3
			self.Primary.Sound = Sound("weapons/smg1/smg1_fireburst1.wav")
		else
			self:TakePrimaryAmmo(self.Weapon:Clip1()-1)
			self.Primary.NumShots = self.Weapon:Clip1()
			self.Primary.Sound = Sound("weapons/smg1/smg1_fire1.wav")
		end	
		

		
	else
		self.Primary.NumShots = 1
		self.Primary.Delay = 0.13
		self.Primary.Sound = Sound("weapons/smg1/smg1_fire1.wav")
		
		self.Primary.Automatic = true
	end
	
		self:Shoot()
		
	
end



function SWEP:SecondaryAttack()
	if self.EnableBurst == false then
		self.EnableBurst = true
		self.Weapon:EmitSound("weapons/smg1/switch_burst.wav")
		self.Owner:PrintMessage( HUD_PRINTCENTER, "Switched to Burst Fire Mode" )
	else
		self.EnableBurst = false
		self.Weapon:EmitSound("weapons/smg1/switch_single.wav")
		self.Owner:PrintMessage( HUD_PRINTCENTER, "Switched to Automatic" )
	end
end




