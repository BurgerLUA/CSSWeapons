
if CLIENT then
	SWEP.PrintName			= "HE GRENADE"
	SWEP.Slot				= 4
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_he", "csd", "O", Color( 255, 80, 0, 255 ) )
	killicon.AddFont( "ent_cs_he", "csd", "O", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip 		= false
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/gfx/vgui/hegrenade")
end

SWEP.HoldType				= "grenade"
SWEP.Base					= "weapon_cs_base"
SWEP.Spawnable				= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel				= "models/weapons/cstrike/c_eq_fraggrenade.mdl"
SWEP.WorldModel				= "models/weapons/w_eq_fraggrenade.mdl"

SWEP.Primary.Damage			= 0
SWEP.Primary.NumShots		= 0
SWEP.Primary.Sound			= Sound("weapons/ak47/ak47-1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= -1
SWEP.Primary.SpareClip	= -1
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

function SWEP:PrimaryAttack()
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay + 2)
	self:SendWeaponAnim(ACT_VM_PULLPIN)
	--self:TakePrimaryAmmo(1)
	
	self.IsThrowing = true
	
	self.ThrowAnimation = CurTime() + 0.85
	self.Throw = CurTime() + 1
	self.ThrowRemove = CurTime() + 2
	
end

function SWEP:Think()
	if self.IsThrowing == true then
	
		if self.ThrowAnimation < CurTime() then
			if self.HasAnimated == false then
				self:SendWeaponAnim(ACT_VM_THROW)
				self.Owner:SetAnimation(PLAYER_ATTACK1) 
				self.HasAnimated = true
			end
		end
		
		if self.Throw < CurTime() then
			if self.HasThrown == false then
				self:ThrowHEGrenade(1000)
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
end

function SWEP:ThrowHEGrenade(force)
	if CLIENT then return end
	local EA =  self.Owner:EyeAngles()
	local pos = self.Owner:GetShootPos() + EA:Right() * 5 - EA:Up() * 4 + EA:Forward() * 8	

	local ent = ents.Create("ent_cs_he")		
		ent:SetPos(pos)
		ent:SetAngles(EA)
		ent:Spawn()
		ent:Activate()
		ent:SetOwner(self.Owner)
		ent:GetPhysicsObject():SetVelocity(self.Owner:GetVelocity() + EA:Forward() * force + EA:Up()*50)
		ent:GetPhysicsObject():AddAngleVelocity(Vector(1000,1000,1000))
		ent.Damage = 100
		ent.Radius = 100
end

