if CLIENT then
	killicon.AddFont( "weapon_cs_knife", "csd", "j", Color( 255, 80, 0, 255 ) )
	SWEP.WepSelectIcon 		= surface.GetTextureID("vgui/achievements/pistol_round_knife_kill")
end

SWEP.Category				= "Counter-Strike"
SWEP.PrintName				= "COMBAT KNIFE"
SWEP.Base					= "weapon_cs_base"
SWEP.WeaponType				= "Free"

SWEP.Cost					= 0
SWEP.MoveSpeed				= 250

SWEP.Spawnable				= true
SWEP.AdminOnly				= false

SWEP.Slot					= 0
SWEP.SlotPos				= 1

SWEP.ViewModel 				= "models/weapons/cstrike/c_knife_t.mdl"
SWEP.WorldModel				= "models/weapons/w_knife_t.mdl"
SWEP.VModelFlip 			= false
SWEP.HoldType				= "knife"

SWEP.Primary.Damage			= 20
SWEP.Primary.NumShots		= 1
SWEP.Primary.ClipSize		= -1
SWEP.Primary.SpareClip		= -1
SWEP.Primary.Delay			= 0.75
SWEP.Primary.Ammo			= "none"
SWEP.Primary.Automatic 		= true 

SWEP.Secondary.Damage		= 65
SWEP.Secondary.NumShots		= 1
SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.SpareClip	= -1
SWEP.Secondary.Delay		= 1
SWEP.Secondary.Ammo			= "none"
SWEP.Secondary.Automatic 	= true 

SWEP.RecoilMul				= 1
SWEP.HasScope 				= false
SWEP.ZoomAmount 			= 1
SWEP.HasCrosshair 			= false
SWEP.HasCSSZoom 			= false

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false
SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false
SWEP.HasDoubleZoom			= false
SWEP.HasSideRecoil			= false

function SWEP:PrimaryAttack()
	if self:IsUsing() then return end
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self:SetNextSecondaryFire(CurTime() + self.Primary.Delay)
	self:Swing(self.Primary.Damage)
	
end

function SWEP:SecondaryAttack()
	if self:IsUsing() then return end
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	self:SetNextPrimaryFire(CurTime() + self.Secondary.Delay)
	self:SetNextSecondaryFire(CurTime() + self.Secondary.Delay)
	self:Swing(self.Secondary.Damage)	
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


function SWEP:Swing(damage)


	local heavy = ACT_VM_MISSCENTER
	local light = ACT_VM_PRIMARYATTACK
	local miss = ACT_VM_PRIMARYATTACK

	local coneents = {self.Owner}
	
	if IsFirstTimePredicted() then
		coneents = ents.FindInCone(self.Owner:GetShootPos(),self.Owner:GetAimVector(),40,1)
	end
	
	table.RemoveByValue( coneents, self.Owner )
	
	local conecount = table.Count(coneents)
	local trace = self.Owner:GetEyeTrace() 
	
	self.HitAThing = false
	
	for k,v in pairs(coneents) do
		if self.HitAThing == false then
			if v ~= self.Owner then
				if v:IsPlayer() or v:IsNPC() then
				
					local angle = math.abs(v:GetAngles().y - self.Owner:GetAngles().y)
					
					if angle > 330 or angle < 30 then
						damage = damage * 3
					end
					
					self.HitAThing = true
					
					self:StabDamage(damage,v)
					
				end
			end
		end
	end

	if self.HitAThing == false then
		if trace.StartPos:Distance(trace.HitPos) < 40 then
			self:StabEffect(trace.StartPos,trace.HitPos,trace.SurfaceProps,trace.Entity)
			
			if trace.Entity:IsValid() then
				self:StabDamage(damage,trace.Entity)
			end
			
		end
	end

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

function SWEP:StabEffect(StartPos,HitPos,SurfaceProp,HitEntity)
	if HitEntity:IsPlayer() then return end
	
	local effect = EffectData()
		effect:SetOrigin(HitPos)
		effect:SetStart(StartPos)
		effect:SetSurfaceProp(SurfaceProp)
		effect:SetDamageType(DMG_SLASH)
		
	if CLIENT then
		effect:SetEntity(HitEntity)
	else
		effect:SetEntIndex(HitEntity:EntIndex())
	end
		
	util.Effect("Impact", effect)
end


function SWEP:QuickKnife()

	self.Owner:SetAnimation(PLAYER_ATTACK1)
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay*1.5)
	self:SetNextSecondaryFire(CurTime() + self.Primary.Delay*1.5)
	self:Swing(55)

	timer.Simple(1, function()
	
		if not IsValid(self) then return end
		if not IsValid(self.Owner) then return end
		
		if not self.Owner:GetActiveWeapon():GetClass() == "weapon_cs_knife" then return end

		local foundp = false
		local founds = false
		
		for k,v in pairs(self.Owner:GetWeapons()) do
			if v:IsScripted() then
				if foundp == false then
					if weapons.GetStored(v:GetClass()).WeaponType == "Primary" then
						self.Owner:SelectWeapon(self.Owner:GetWeapons()[k]:GetClass() )
						foundp = true
					end
				end
			end
		end
		
		if foundp == false then
			for k,v in pairs(self.Owner:GetWeapons()) do
				if v:IsScripted() then
					if founds == false then
						if weapons.GetStored(v:GetClass()).WeaponType == "Secondary" then
							self.Owner:SelectWeapon(self.Owner:GetWeapons()[k]:GetClass() )
							founds = true
						end
					end
				end
			end
		end

		if founds == false and foundp == false then
			self.Owner:SelectWeapon(self.Owner:GetWeapons()[1]:GetClass() )
		end
	
	end)

end







function GetActivities( ent )
  local k, v, t

  t = { }

  for k, v in ipairs( ent:GetSequenceList( ) ) do
    table.insert( t, { id = k, act = ent:GetSequenceActivity( k ), actname = ent:GetSequenceActivityName( k ) } )
  end

  return t
end







