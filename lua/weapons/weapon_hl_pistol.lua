
if CLIENT then
	SWEP.PrintName			= "HL2 PISTOL"
	SWEP.Slot				= 2
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_xm1014", "csd", "B", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "pistol"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category			= "HL2"

SWEP.ViewModel			= "models/weapons/c_pistol.mdl"
SWEP.WorldModel			= "models/weapons/w_pistol.mdl"

SWEP.Primary.Damage			= 5
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/pistol/pistol_fire2.wav")
SWEP.Primary.Cone			= .1
SWEP.Primary.ClipSize		= 18
SWEP.Primary.DefaultClip	= 18
SWEP.Primary.Delay			= 0.01
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = false

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "other" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 1
SWEP.EnableScope = false
SWEP.EnableCrosshair = true

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
	self.Weapon:EmitSound("weapons/pistol/pistol_reload1.wav",100,100)
	
	timer.Simple(self.Owner:GetViewModel():SequenceDuration()*0.75,function() 
		if IsValid(self) then
			self:SetClip1(self.Primary.ClipSize) 
		end	
	end)
end
