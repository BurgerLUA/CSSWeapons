
if CLIENT then
	SWEP.PrintName			= "CSS KNIFE"
	SWEP.Slot				= 4
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_knife", "csd", "j", Color( 255, 80, 0, 255 ) )
	SWEP.ViewModelFlip = false
end

SWEP.HoldType			= "knife"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel			= "models/weapons/v_knife_t.mdl"
SWEP.WorldModel			= "models/weapons/w_knife_t.mdl"

SWEP.Primary.Damage			= 0
SWEP.Primary.NumShots		= 0
SWEP.Primary.Sound			= Sound("weapons/ak47/ak47-1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Delay			= 0.75
SWEP.Primary.Ammo			= "none"
SWEP.Primary.Automatic = true
SWEP.Secondary.Automatic = true

SWEP.CoolDown = 0
SWEP.RecoilMul	= 0
SWEP.Type = "knife" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 1
SWEP.EnableScope = false
SWEP.EnableCrosshair = false

function SWEP:PrimaryAttack()
	self.Owner:LagCompensation( true )
	self:SendWeaponAnim(ACT_VM_HITCENTER)
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)
	self:Swing(34)
	self.Owner:LagCompensation( false )
end

function SWEP:SecondaryAttack()
	self.Owner:LagCompensation( true )
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay*1.5)
	self:SetNextSecondaryFire(CurTime() + self.Primary.Delay*1.5)
	self:Swing(55)
	self.Owner:LagCompensation( false )
end

function SWEP:Swing(damage)

	local light = ACT_VM_HITCENTER
	local heavy = ACT_VM_HITCENTER
	local miss = ACT_VM_MISSCENTER
	


	local coneents = ents.FindInCone(self.Owner:GetShootPos(),self.Owner:GetAimVector(),40,5)
	
	table.RemoveByValue( coneents, self.Owner )
	
	
	
	
	local conecount = table.Count(coneents)
	local trace = self.Owner:GetEyeTrace()
	
	self.HitAThing = false
	for k,v in pairs(coneents) do
		if v ~= self.Owner then
			if v:IsPlayer() or v:IsNPC() then
				local angle = math.abs(v:GetAngles().y - self.Owner:GetAngles().y)
				if damage == 55 then
					if angle > 330 or angle < 30 then
						damage = 195
					end
				end
				
				self:StabDamage(damage,v)
				self.HitAThing = true
			end
		end
	end
	--print(trace.StartPos:Distance(trace.HitPos))
	if trace.StartPos:Distance(trace.HitPos) < 40 then
		if trace.HitWorld then
			self:StabEffect(trace.StartPos,trace.HitPos,trace.SurfaceProps)
		end
	end
	

	if self.HitAThing == true then
		if damage == 34 then
			self:SendWeaponAnim(light)
			self.Weapon:EmitSound("weapons/knife/knife_hit"..math.random(1,4)..".wav",100,100)
		else
			self:SendWeaponAnim(heavy)
			self.Weapon:EmitSound("weapons/knife/knife_stab.wav",100,100)
		end
	elseif trace.StartPos:Distance(trace.HitPos) < 40 then
		self.Weapon:EmitSound("weapons/knife/knife_hitwall1.wav",100,100)
		if damage == 34 then
			self:SendWeaponAnim(light)
		else
			self:SendWeaponAnim(heavy)
		end
	else
		self.Weapon:EmitSound("weapons/knife/knife_slash1.wav",100,100)
		self:SendWeaponAnim(miss)
	end
	
end

function SWEP:StabDamage(damage, entity)
	local dmginfo = DamageInfo()
		dmginfo:SetDamage( damage )
		dmginfo:SetDamageType( DMG_SLASH )
		dmginfo:SetAttacker( self.Owner )
		dmginfo:SetInflictor( self )
		dmginfo:SetDamageForce( self.Owner:GetForward()*1000 )
	if SERVER then
		entity:TakeDamageInfo( dmginfo )
	end
end

function SWEP:StabEffect(StartPos,HitPos,SurfaceProp)
	local effect = EffectData()
		effect:SetOrigin(HitPos)
		effect:SetStart(StartPos)
		effect:SetSurfaceProp(SurfaceProp)
		effect:SetDamageType(DMG_SLASH)
		--print("EFFECT")
	util.Effect("Impact", effect)
end


