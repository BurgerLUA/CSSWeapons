
if CLIENT then
	killicon.AddFont( "weapon_cs_knife", "csd", "j", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/achievements/pistol_round_knife_kill")
end

SWEP.PrintName			= "COMBAT KNIFE"
SWEP.Slot				= 0
SWEP.SlotPos			= 1
SWEP.ViewModelFlip 		= false

SWEP.HoldType				= "knife"
SWEP.Base					= "weapon_cs_base"
SWEP.Spawnable				= true
SWEP.Category				= "Counter-Strike"

SWEP.ViewModel				= "models/weapons/cstrike/c_knife_t.mdl"
SWEP.WorldModel				= "models/weapons/w_knife_t.mdl"

SWEP.Primary.Damage			= 0
SWEP.Primary.NumShots		= 0
SWEP.Primary.Sound			= Sound("weapons/ak47/ak47-1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= -1
SWEP.Primary.SpareClip		= -1
SWEP.Primary.Delay			= 0.75
SWEP.Primary.Ammo			= "none"
SWEP.Primary.Automatic 		= true
SWEP.Secondary.Automatic 	= true

SWEP.RecoilMul				= 1
SWEP.EnableScope 			= false
SWEP.ZoomAmount 			= 1
SWEP.EnableCrosshair 		= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false

function SWEP:PrimaryAttack()
	
	--self:SendWeaponAnim(ACT_VM_HITCENTER)
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)
	self:SetNWInt("damage",34)
	self:Swing()

	
end

function SWEP:SecondaryAttack()
	
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay*1.5)
	self:SetNextSecondaryFire(CurTime() + self.Primary.Delay*1.5)
	self:SetNWInt("damage",55)
	self:Swing()
	
	
	
end

function SWEP:Reload()
	--PrintTable(GetActivities(self))
end

function SWEP:Deploy()

	self:EmitSound("weapons/knife/knife_deploy1.wav",100,100)
	self.Owner:DrawViewModel(true)
	self:SendWeaponAnim(ACT_VM_DRAW)
	self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())	
	
	return true
end


function SWEP:Swing()

	--if CLIENT then return end

	local damage = self:GetNWInt("damage")

	local heavy = ACT_VM_PRIMARYATTACK
	local light = ACT_VM_PRIMARYATTACK
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
				
				self.HitAThing = true
				
				
			else
				damage = 10
			end
			
			self:StabDamage(damage,v)


		end
	end
	--print(trace.StartPos:Distance(trace.HitPos))
	if trace.StartPos:Distance(trace.HitPos) < 40 then
		if trace.HitWorld then
			self:StabEffect(trace.StartPos,trace.HitPos,trace.SurfaceProps)
		end
	end
	
	print(damage)

	if self.HitAThing == true then
		if damage <= 50 then
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
		dmginfo:SetDamageForce( self.Owner:GetForward()*100 )
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

function GetActivities( ent )
  local k, v, t

  t = { }

  for k, v in ipairs( ent:GetSequenceList( ) ) do
    table.insert( t, { id = k, act = ent:GetSequenceActivity( k ), actname = ent:GetSequenceActivityName( k ) } )
  end

  return t
end


