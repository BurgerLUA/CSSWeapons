
if CLIENT then

	surface.CreateFont( "csd",
	{
		font      = "csd",
		size      = 48,
		weight    = 700
	})



	SWEP.DrawAmmo			= true
	SWEP.DrawCrosshair		= false
	SWEP.ViewModelFlip		= false
	SWEP.ViewModelFOV		= 60
	SWEP.BobScale			= 0
	SWEP.SwayScale			= .1

end

SWEP.Author					= "Burger"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions			= ""
SWEP.Category				= "Counter-Strike"
SWEP.Spawnable				= false
SWEP.UseHands				= true

SWEP.Primary.Damage			= 35
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/ak47/ak47-1.wav")
SWEP.Primary.Cone			= 0
SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 90
SWEP.Primary.Delay			= .14
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = true

SWEP.CoolDown = 0
SWEP.RecoilMul	= 1
SWEP.Type = "other" -- shotgun, sniper, selective, other, silenced
SWEP.ZoomAmount = 1
SWEP.EnableScope = true
SWEP.EnableCrosshair = true


if SERVER then

	SWEP.Weight				= SWEP.Primary.Damage * SWEP.Primary.NumShots
	SWEP.AutoSwitchTo		= true
	SWEP.AutoSwitchFrom		= false
	CreateConVar("ss_unlimitedammo", 0)
end

function SWEP:Initialize()
	self:SetWeaponHoldType(self.HoldType)
	util.PrecacheSound(self.Primary.Sound)
end

function SWEP:Deploy()
	self:SendWeaponAnim(ACT_VM_DRAW)
	self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())	
	return true
end

function SWEP:Holster()
	self:SetNWBool("zoomed",false)
	return true
end

function SWEP:PrimaryAttack()
	if self.Type == "selective" then
	
		if not self.FireMode then
			self.FireMode = 1
		end
	
		if self.FireMode == 1 then
			self:Shoot()
			--self.Primary.NumShots = 1
			self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)	
		else
			--self.Primary.NumShots = 3
			self:Shoot()
			timer.Simple(self.Primary.Delay*0.33,function() self:Shoot() end)
			timer.Simple(self.Primary.Delay*0.66,function() self:Shoot() end)
			self:SetNextPrimaryFire(CurTime() + self.Primary.Delay*3)	
		end
	
	elseif self.Type == "silenced" then
	
		if not self.AttachDelay then
			self.AttachDelay = 0
		end
	
		if self.AttachDelay < CurTime() then
			self:Shoot()
			self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)	
		end
	else
		self:Shoot()
		self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)	
	end
	
	
	
end

function SWEP:SecondaryAttack()

	if self.Type == "selective" then
	
		self:EmitSound("weapons/elite/elite_sliderelease.wav")
		
		--if SERVER then
		
			if self.FireMode == 1 then
				self.Owner:PrintMessage( HUD_PRINTCENTER, "Switched to Burst Fire Mode" )
				self.FireMode = 2
			else
				self.FireMode = 1
				self.Owner:PrintMessage( HUD_PRINTCENTER, "Switched to Semi-Automatic" )
			end
		--end
	
	
	elseif self.Type == "sniper" then
	
		self:EmitSound("weapons/zoom.wav",100,100)
		
		if SERVER then
			local delay = 0.3
	
			if not self.ScopeDelay then
				self.ScopeDelay = 0
			end
	
			if self.ScopeDelay > CurTime() then return end
	
			self.ScopeDelay = delay + CurTime()
	
			if not self.ScopeMode then
				self.ScopeMode = 0
			end
	
			if self.ScopeMode == 1 then
				self.ScopeMode = 0
				self.Owner:SetFOV(75,delay)
				self:SetNWBool("zoomed",false)
			elseif self.ScopeMode == 0 then
				self.ScopeMode = 1
				self.Owner:SetFOV(75/self.ZoomAmount,delay)
				self:SetNWBool("zoomed",true)
			end
		end
		
	elseif self.Type == "silenced" then
	
		if not self.AttachDelay then
			self.AttachDelay = 0
		end

		if not self.IsSilenced then
			self.IsSilenced = 0
		end
	
		if self.AttachDelay < CurTime() then 
			self.AttachDelay = CurTime() + 3
			if self.IsSilenced == 1 then
				self:SendWeaponAnim(ACT_VM_DETACH_SILENCER)
				self.IsSilenced = 0
			else
				self:SendWeaponAnim(ACT_VM_ATTACH_SILENCER)
				self.IsSilenced = 1
			end
		end
	end
end

function SWEP:Shoot()
	if !self:CanPrimaryAttack() then return end
	self:TakePrimaryAmmo(1)
	
	local Damage = self.Primary.Damage
	local Shots = self.Primary.NumShots
	local Cone = self.Primary.Cone
	local Recoil = self.Primary.Recoil
	
	
	if self:GetNWBool("zoomed",false) == true then -- If you're zoomed
		if self.EnableCrosshair == true then --And you can hip fire
			Cone = self.Primary.Cone * 0.5
			Recoil = self.RecoilMul*0.75
		else -- And you can't hip fire
			Cone = self.Primary.Cone
			Recoil = self.RecoilMul*0.25
		end
	else --If you're not zoomed
		if self.EnableCrosshair == true then --And you can hip fire 
			Cone = self.Primary.Cone
			Recoil = self.RecoilMul
		else -- And you can't hip fire
			Cone = 0.1
			Recoil = self.RecoilMul
		end
	end
	
	if self.Type == "silenced" then
		if self.IsSilenced == 1 then
			self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_SILENCED)
			GunSound = self.Secondary.Sound
			Damage = Damage*0.9
			Recoil = Recoil*0.9
			Cone = Cone*0.9
		else
			self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
			GunSound = self.Primary.Sound
			--Damage = Damage*1
			--Recoil = Recoil*1
			--Cone = Cone*1
		end
	else
		self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
		GunSound = self.Primary.Sound
	end
	
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	
	self:ShootBullet(Damage, Shots, Cone, Recoil, GunSound)
	
	
end

function SWEP:Reload()
	if self:Clip1() >= self.Primary.ClipSize then return end
	
	if not self.ReloadDelay then 
		self.ReloadDelay = 0
	end
	if self.ReloadDelay > CurTime() then return end
	
	if self.Type == "silenced" then
		if self.IsSilenced == 1 then
			self:SendWeaponAnim(ACT_VM_RELOAD_SILENCED)
		else
			self:SendWeaponAnim(ACT_VM_RELOAD)
		end
	else
		self:SendWeaponAnim(ACT_VM_RELOAD)
	end
	
	
	if self.Type == "shotgun" then
		
		self.ShellTime = 0.5
		self:SetNextPrimaryFire(CurTime() + self.ShellTime + 0.1 + (self.Primary.ClipSize-self:Clip1())*self.ShellTime)
		
		self.ReloadDelay = (self.Primary.ClipSize-self:Clip1())*self.ShellTime + CurTime()
		for i=1, self.Primary.ClipSize-self:Clip1() do
			timer.Simple(i*self.ShellTime - self.ShellTime,function()
				if IsValid(self) then
					--self:SetNextPrimaryFire(CurTime() + self.ShellTime)
					self:SetClip1(self:Clip1()+1)
					--self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_START)
					self:SendWeaponAnim( ACT_VM_RELOAD )
				end
			end)
		end
		
		timer.Simple((self.Primary.ClipSize-self:Clip1())*self.ShellTime, function() 
			if IsValid(self) then
				self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH ) 
			end
		end)
		
	else
		self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		self.ReloadDelay = CurTime() + self.Owner:GetViewModel():SequenceDuration()
		self.Owner:SetAnimation(PLAYER_RELOAD)
		timer.Simple(self.Owner:GetViewModel():SequenceDuration(),function() 
			if IsValid(self) then
				self:SetClip1(self.Primary.ClipSize) 
			end
			
		end)
	end
	
	
	

	
	if SERVER then
		self.Owner:SetFOV(75,0.3)
		self:SetNWBool("zoomed",false)
	end
	
end

function SWEP:CanPrimaryAttack()
	if self:Clip1() <= 0 then
		self:Reload()
		--self.ReloadDelay = 0
		return false
	end 
	
	if not self.ReloadDelay then 
		self.ReloadDelay = 0
	end
	
	if self.ReloadDelay > CurTime() then return false end
	
	if self.Type ~= "selective" then
		if self:GetNextPrimaryFire() > CurTime() then return false end
	end
	
	return true
	
	
end

function SWEP:ShootBullet(Damage, Shots, Cone, Recoil, GunSound)

	self.Weapon:EmitSound(GunSound,100,100)


	if not self.CoolDown then
		self.CoolDown = 0
	end

	self.CoolDown = math.Clamp(self.CoolDown+(Damage*Shots*0.01),0,10)
	self.CoolTime = CurTime() + 0.25
		
	if self.Owner:Crouching() == true and self.Owner:IsOnGround() == true then
		self.CrouchMul = 0.5
	else
		self.CrouchMul = 1
	end
		

		
	self.ExtraSpread = ((self.CoolDown - (Damage*Shots*0.01))/100 + self.Owner:GetVelocity():Length()*0.0001)*self.CrouchMul
	self.ViewKick = -(Damage*Shots/20)/2*Recoil
	

	--

	local punchangle = Angle(self.ViewKick,self.ViewKick*math.Rand(-1,1)*0.5,0)*1

	--print(self.ExtraSpread)
	--print(Cone)
	
	local bullet = {}
	bullet.Num 		= Shots
	bullet.Src 		= self.Owner:GetShootPos() 
	bullet.Dir 		= (self.Owner:EyeAngles() + punchangle):Forward()
	bullet.Spread 	= Vector(Cone, Cone, 0) + Vector(self.ExtraSpread,self.ExtraSpread,0)
	bullet.Tracer	= 3
	bullet.Force	= Damage/10
	bullet.Damage	= Damage*math.Rand(0.99,1.01)
	self.Owner:FireBullets(bullet)

	if CLIENT or game.SinglePlayer() then
		--if self.Owner:GetPunchAngle().x != 0 then
			self.Owner:SetEyeAngles( self.Owner:EyeAngles() + punchangle )
			self.Owner:ViewPunch(Angle(self.ViewKick*3,self.ViewKick*math.Rand(-1,1)*1,0))
		--end
	end

end

function SWEP:Think()
	
	if not self.CoolDown then
		self.CoolDown = 0
	end
	
	if not self.CoolTime then
		self.CoolTime = 0
	end

	if self.CoolTime < CurTime() then
		if self.CoolDown > 0.03 then
			self.CoolDown = self.CoolDown - 0.06
		else
			self.CoolDown = 0
		end
	end
	
	if SERVER then
		self:SetNWInt("weaponheat", math.Clamp(self.CoolDown,0,10))
	end
	
end

function SWEP:AdjustMouseSensitivity()
	if self.Type == "sniper" then
		if self:GetNWBool("zoomed",false) == true then
			sen = 1/self.ZoomAmount
		else
			sen = 1
		end	
	else
		sen = 1
	end
	
	return sen
end

function SWEP:DrawHUD()


	if SERVER then return end

	local x = ScrW() / 2
	local y = ScrH() / 2

	local length = 10
	
	if self.Owner:Crouching() == true and self.Owner:IsOnGround() == true then
		crouchmul = 0.5
	else
		crouchmul = 1
	end
	
	local heat = self:GetNWInt("weaponheat",0)
	local extra = (heat*10 + (self.Primary.Cone*400) + self.Owner:GetVelocity():Length()*0.1)*crouchmul

	if self.EnableCrosshair == true then
		if self:GetNWBool("zoomed",false) == false then
			surface.SetDrawColor( 50, 255, 50, 200 )
			surface.DrawLine( x+1+extra+length, y, x+.5+extra, y )
			surface.DrawLine( x-1-extra-length, y, x-.5-extra, y )
			surface.DrawLine( x, y+1+extra+length, x, y+.5+extra )
			surface.DrawLine( x, y-1-extra-length, x, y-.5-extra )
		end
	end
	
	if self.EnableScope == true then
		if self:GetNWBool("zoomed",false) == true then
		
			local fovbonus = 75/self.Owner:GetFOV()
			surface.DrawCircle( x, y, extra*fovbonus, Color(0,0,0) )
			
		
			surface.SetMaterial(Material("sprites/scope_arc"))
			surface.SetDrawColor(255, 255, 255, 255)
			surface.DrawTexturedRectRotated(ScrW()/2+ScrH()/4, ScrH()/2+ScrH()/4, ScrH()/2, ScrH()/2,0)
			surface.DrawTexturedRectRotated(ScrW()/2-ScrH()/4, ScrH()/2-ScrH()/4, ScrH()/2, ScrH()/2,180)
			surface.DrawTexturedRectRotated(ScrW()/2+ScrH()/4, ScrH()/2-ScrH()/4, ScrH()/2, ScrH()/2,90)
			surface.DrawTexturedRectRotated(ScrW()/2-ScrH()/4, ScrH()/2+ScrH()/4, ScrH()/2, ScrH()/2,270)
	
			surface.SetMaterial(Material("vgui/gfx/vgui/solid_background"))
			surface.SetDrawColor(255, 255, 255, 255)
			surface.DrawTexturedRect(0,0,ScrW()*0.11,ScrH())
	
			surface.SetMaterial(Material("vgui/gfx/vgui/solid_background"))
			surface.SetDrawColor(255, 255, 255, 255)
			surface.DrawTexturedRect(ScrW()*0.89,0,ScrW()*0.12,ScrH())
		end
	end
	
end