AddCSLuaFile()

CreateConVar("sv_css_damage_scale", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value that all damage from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_recoil_scale", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value that all recoil from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_cone_scale", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "This is the value that the spread from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_velcone_scale", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "This is the value that the spread from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_heat_scale", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "This is the value that the spread from CSS weapons is multiplied. Default is 1." )
CreateConVar("sv_css_cooltime_scale", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "This is the value that the cooldown delay time from CSS weapons is multiplied by. Default is 1." )
CreateConVar("sv_css_cooldown_scale", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "This is the value that the cooldown amount from CSS weapons is multiplied by. Default is 1." )

CreateConVar("sv_css_enable_csszoom", "0", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "1 enables CSS-Like zooms for the AUG and SG552. Default is 0." )

CreateConVar("sv_css_ammo_loaded", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables giving weapons already loaded. Default is 1." )
CreateConVar("sv_css_ammo_givespare", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables giving spare ammo to players upon pickup. Default is 1." )

CreateConVar("sv_css_enable_drops", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables players to drop css weapons on death, all other values disables it. Default is 1." )
CreateConVar("sv_css_timed_drops", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 creates a removal time limit for weapons that drop. 0 never removes weapon drops." )
CreateConVar("sv_css_drop_timer", "60", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value in seconds that determines how long the weapons are removed after they are dropped. Default is 60." )
CreateConVar("sv_css_limit_equipped", "0", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 limits only one primary weapon and one secondary weapon. Equipment is unlimited. Default is 0." )

--CreateConVar("sv_css_enable_c4", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables non-admins to use c4, all other values disables it. Default is 1." )
CreateConVar("sv_css_enable_c4nonadmin", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables non-admins to use c4, all other values disables it. Default is 1." )
CreateConVar("sv_css_enable_c4smoke", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables smoke effects for the c4, all other values disables it. Default is 1." )
CreateConVar("sv_css_c4_time_explosion", "45", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value in seconds that the C4 detonates when planted. Default is 45." )
CreateConVar("sv_css_c4_time_defuse", "10", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value in seconds that the C4 is defused. Default is 10." )
CreateConVar("sv_css_c4_damage", "500", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value in points that determines maximum damage. Default is 500." )
CreateConVar("sv_css_c4_radius", "1500", FCVAR_REPLICATED + FCVAR_ARCHIVE , "This is the value in units that determines the maximum blast radius. Default is 1500." )
CreateConVar("sv_css_c4_notifyplayers", "1", FCVAR_REPLICATED + FCVAR_ARCHIVE , "1 enables players to receive cosmetic round winning notifications and sounds, all other values disables it. Default is 1." )

CreateConVar("sv_css_enable_penetration", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "1 enable penetration through objects, 0 disables. Default is 1." )
CreateConVar("sv_css_penetration_scale", "0.5", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "This is the value that all damage from CSS weapons is multiplied from penetration. Default is 0.5." )

CreateConVar("sv_css_enable_mags", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "1 enables cosmetic magazine drops. Requires separate addon. Default is 0." )


CreateClientConVar("cl_css_viewmodel_fov", "45", true, true )
CreateClientConVar("cl_css_equipment", "1", true, true )
CreateClientConVar("cl_css_shells", "1", true, true )
CreateClientConVar("cl_css_mags", "1", true, true )
CreateClientConVar("cl_css_viewmodel_cmodel", "1", true, true )
CreateClientConVar("cl_css_crosshair_style", "1", true, true )
CreateClientConVar("cl_css_crosshair_length", "15", true, true )
CreateClientConVar("cl_css_crosshair_width", "1", true, true )
CreateClientConVar("cl_css_crosshair_color_r", "50", true, true )
CreateClientConVar("cl_css_crosshair_color_g", "255", true, true )
CreateClientConVar("cl_css_crosshair_color_b", "50", true, true )
CreateClientConVar("cl_css_crosshair_color_a", "200", true, true )



if CLIENT then
	
	language.Add("AlyxGun_ammo","5.7mm")
	language.Add("SniperPenetratedRound_ammo",".45 ACP")
	language.Add("Gravity_ammo","4.6mm")
	language.Add("Battery_ammo","9mm")
	language.Add("CombineCannon_ammo",".50 AE")
	language.Add("AirboatGun_ammo","5.56MM")
	language.Add("StriderMinigun_ammo","7.62mm")
	language.Add("SniperRound_ammo",".338")
	language.Add("GaussEnergy_ammo",".357 SIG")

	surface.CreateFont( "csd",{font = "csd",size = 48,weight = 700})
	
end

SWEP.DrawAmmo				= true
SWEP.DrawCrosshair			= false

SWEP.VModelFlip				= false
SWEP.VModelFOV				= 47

SWEP.CSMuzzleFlashes 		= true
SWEP.CSMuzzleX				= false

SWEP.Weight					= 0
SWEP.AutoSwitchTo			= false
SWEP.AutoSwitchFrom			= false

SWEP.WeaponType				= "Primary"

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
SWEP.Primary.Automatic 		= true
SWEP.Primary.Delay			= .14

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 0
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.SpareClip		= 90

SWEP.Secondary.Ammo 		= "none"
SWEP.Secondary.ClipSize 	= -1
SWEP.Secondary.DefaultClip 	= -1
SWEP.Secondary.Automatic	= false

SWEP.RecoilMul				= 1

SWEP.HasCrosshair 			= true

SWEP.HasScope 				= false
SWEP.HasDoubleZoom			= false
SWEP.HasCSSZoom 			= false
SWEP.ZoomAmount 			= 1

SWEP.HasBurstFire 			= false
SWEP.HasSilencer 			= false 

SWEP.HasIronSights 			= false
SWEP.IronSightTime			= 1
SWEP.IronSightsPos 			= Vector( 0, 0, 0 )
SWEP.IronSightsAng 			= Vector( 0, 0, 0 )

SWEP.HasPumpAction 			= false
SWEP.HasBoltAction 			= false

SWEP.HasSideRecoil			= false


SWEP.BurgerBase				= true

SWEP.CoolDown 				= 0
SWEP.CoolTime 				= 0
SWEP.ShotgunReload 			= 0
SWEP.NextShell 				= 0
SWEP.IsReloading 			= 0
SWEP.NormalReload 			= 0
SWEP.ReloadFinish 			= 0
SWEP.NextZoomTime 			= 0
SWEP.ReloadDelay 			= 0
SWEP.FakeDelay 				= 0
SWEP.First					= 0
SWEP.ZoomData 				= 1
SWEP.AttachDelay 			= 0
SWEP.ScopeDelay 			= 0
SWEP.IsSilenced 			= false
SWEP.ClickSoundDelay 		= 0
SWEP.ZoomCurTime			= 1
SWEP.IronTime				= 0
SWEP.AlreadyGiven			= false
SWEP.BoltCurTime 			= 0

SWEP.PhysBullets			= false

--Burst fire Code from Kogitsune
local BURST, AUTO = 0, 1

function SWEP:SetupDataTables( )

	if self.HasBurst == false then return end

	self:NetworkVar( "Int", 0, "FireMode" )

	if SERVER then
		self:SetFireMode( AUTO )
	end

end

function SWEP:Initialize()

	self:SetHoldType( self.HoldType )
	util.PrecacheSound(self.Primary.Sound)
	
end

function SWEP:CalcViewModelView(vm,oldPos,oldAng,pos,ang)

	local fraction = 0.25
	
	if LocalPlayer():GetVelocity():Length() > 0 and LocalPlayer():IsOnGround() then
		offset = LerpVector(fraction*2,Vector(0,0,0),(oldAng:Forward() * math.sin(CurTime()*4)) + (oldAng:Up() * math.sin(CurTime()*4)*0.25))
		pos = oldPos + offset
	elseif offset ~= nil then
		LengthyEroticRoleplay = LerpVector(fraction,offset,Vector(0,0,0))
		pos = oldPos + LengthyEroticRoleplay
	end
	
	ang = oldAng

	return pos, ang

end

function SWEP:PostDrawViewModel( vm, weapon, ply )

	if CLIENT then
		if GetConVar("cl_css_viewmodel_cmodel"):GetInt() == 0 then
			LocalPlayer():GetHands():SetModel("models/weapons/c_arms_cstrike.mdl")
		end
	end
	
end

function SWEP:Deploy()
	
	if SERVER then
	
		if self.AlreadyGiven == false then
		
			if GetConVar("sv_css_ammo_loaded"):GetInt() == 1 then
				self:SetClip1(self.Primary.ClipSize)
			end
			
			if GetConVar("sv_css_ammo_givespare"):GetInt() == 1 then
				self.Owner:GiveAmmo(self.Primary.SpareClip,self.Primary.Ammo,false)
			end

			self.AlreadyGiven = true
			
		end
		
		if GetConVar("sv_css_limit_equipped"):GetInt() == 1 then
			for k,v in pairs (self.Owner:GetWeapons()) do
				if v.BurgerBase ~= nil then
					if v ~= self then
						if self.WeaponType == v.WeaponType and v.WeaponType ~= "Free" then
							self.Owner:StripWeapon(v:GetClass())
							
							local dropped = ents.Create("ent_cs_droppedweapon")
							dropped:SetPos(self.Owner:GetShootPos() - Vector(0,0,20) )
							dropped:SetAngles(self.Owner:EyeAngles() )
							dropped:SetModel(weapons.GetStored(v:GetClass()).WorldModel)
							dropped:Spawn()
							dropped:Activate()
							dropped:SetNWString("class",v:GetClass())
							dropped:SetNWInt("clip",v:Clip1())
								
						end
					end
				end
			end
		end

		self.GetMagModel = string.Replace( self.WorldModel,"/w_" , "/unloaded/" )
		self.GetMagModel = string.Replace( self.GetMagModel , ".mdl" , "_mag.mdl")
		--print(self.GetMagModel)

	end

	self.Owner:GetHands():SetMaterial("")
	self.Owner:DrawViewModel(true)
	
	if self.HasSilencer then
		if self.IsSilenced then
			self:SendWeaponAnim(ACT_VM_DRAW_SILENCED)
			self.WorldModel = self.WorldModel2
		else
			self:SendWeaponAnim(ACT_VM_DRAW)
			self.WorldModel = self.WorldModel1
		end
	else
		self:SendWeaponAnim(ACT_VM_DRAW)
	end

	self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
	
	return true
	
end

function SWEP:Holster()
	
	if self:GetNWInt("zoommode",0) ~= 0 then
		return false 
	end
	
	if self:IsBusy() then
		return false
	end
	

	self:SetNWBool("IronSights",false)
	self:SetNWBool("waszoomed",false)
	
	--self:SendWeaponAnim(ACT_VM_HOLSTER)
	
	if self.Slot then
		if self.Slot > 1 then 
			self.Owner:SetNWString("cssprimary",self:GetClass())
		else
			self.Owner:SetNWString("csssecondary",self:GetClass())
		end
	end
	
	
	
	return true
	
end

function SWEP:PrimaryAttack()

	if self:IsBusy() then return end
	
	self:Shoot()

end

function SWEP:SecondaryAttack()

	if self:IsBusy() then return end

	if self.HasBurstFire == true then
		self:SwitchFireMode()
	elseif self.HasScope == true then
		if GetConVar("sv_css_enable_csszoom"):GetInt() == 1 and self.HasCSSZoom == true then
			self:CSSZoom()
		else
			self:ScopeZoom()
		end
	elseif self.HasIronSights == true then
		self:IronSights()
	elseif self.HasSilencer == true then
		self:Silencer()
	end
	
end

function SWEP:SwitchFireMode()

	if self.Primary.Automatic == true then
		message = "Automatic"
	else
		message = "Semi-Automatic"
	end
	
	if self:GetFireMode( ) == AUTO then
		self:SetFireMode( BURST )
		self.Weapon:EmitSound("weapons/smg1/switch_burst.wav")
		self.Owner:PrintMessage( HUD_PRINTCENTER, "Switched to Burst Fire Mode" )
	else
		self:SetFireMode( AUTO )
		self.Weapon:EmitSound("weapons/smg1/switch_single.wav")
		self.Owner:PrintMessage( HUD_PRINTCENTER, "Switched to "..message )
	end

end

function SWEP:Silencer()

	--if self.AttachDelay < CurTime() then
	
	if self:IsBusy() then return end
		
	if self.IsSilenced then
		self:SendWeaponAnim(ACT_VM_DETACH_SILENCER)
		self.IsSilenced = false
		self.WorldModel = self.WorldModel1
		self.AttachDelay = CurTime() + self.Owner:GetViewModel():SequenceDuration()
	else
		self:SendWeaponAnim(ACT_VM_ATTACH_SILENCER)
		self.WorldModel = self.WorldModel2
		self.AttachDelay = CurTime() + self.Owner:GetViewModel():SequenceDuration()
		self.IsSilenced = true
	end
	
end

function SWEP:IronSights()

	if self:GetNWBool("IronSights",false) == true then
		self.Owner:SetFOV(0,self.IronSightTime)
		self:SetNWBool("IronSights",false)
	else
		self.Owner:SetFOV(45,self.IronSightTime)
		self:SetNWBool("IronSights",true)
	end
	
end

function SWEP:ScopeZoom()

	if not self:CanBoltZoom() then return end
	if self:IsBusy() then return false end

	local var = self:GetNWInt("zoommode",0)
	
	if SERVER then
		if self.HasDoubleZoom then
			if var < 2 then
				var = var + 1
			else
				var = 0
				self:SetNWBool("waszoomed",false)
			end
		else
			if var == 0 then
				var = 1
			else
				var = 0
				self:SetNWBool("waszoomed",false)
			end
		end
		
		self:SetNWInt("zoommode",var)
		
	end
	
	if CLIENT or game.SinglePlayer() == true then
		self:EmitSound("weapons/zoom.wav",100,100)
	end
	
	

end

function SWEP:CSSZoom()

	if not self:CanBoltZoom() then return end
	if self:IsBusy() then return end

	if SERVER then
		if self:GetNWBool("csszoomed",false) == true then
			self.Owner:SetFOV(0, 0.25 )
			self:SetNWBool("csszoomed",false)
		else
			self.Owner:SetFOV( 90 / self.ZoomAmount , 0.25 )
			self:SetNWBool("csszoomed",true)
			--print(self.Owner:GetFOV())
		end
	end


end

function SWEP:CanBoltZoom()

	if not self.HasBoltAction then 
		return true
	else
		if self.BoltCurTime <= CurTime() then
			return true
		else
			return false
		end
	end

	return true
	
end

function SWEP:TranslateFOV(oldfov)

	if self:GetNWInt("zoommode",0) > 0 then
		
		if self.HasDoubleZoom == true then
			newfov = 90 / (self.ZoomAmount*(self:GetNWInt("zoommode",0)/2))
		else
			newfov = 90 / self.ZoomAmount
		end
		
		self.Owner:DrawViewModel(false)
		
		return newfov
		
	else
	
		self.Owner:DrawViewModel(true)
		
		return oldfov
		
	end
	
end

function SWEP:Shoot()

	if not self:CanPrimaryAttack() then return end
	if self:IsBusy() then return end

	self.Owner:SetAnimation(PLAYER_ATTACK1)
	
	local Damage = self.Primary.Damage
	local Shots = self.Primary.NumShots
	local Cone = self.Primary.Cone
	local Recoil = self.RecoilMul
	local GunSound = self.Primary.Sound
	
	if self.HasScope and !self.HasCrosshair then
		if self:GetNWInt("zoommode",0) == 0 then
			if not self.Owner:IsBot() then
				Cone = 0.1
			end
		end
	end
	
	if self.HasBoltAction == true then
		self.BoltCurTime = CurTime() + self.Primary.Delay
	end
	
	if self.HasBurstFire == true then

		if self:GetFireMode( ) == BURST then

			Recoil = Recoil * 0.75
			Cone = Cone * 2
			Shots = math.min(self.Weapon:Clip1(),3)
			
			self:TakePrimaryAmmo(Shots)
				
			if self.Primary.Automatic == true then
				--self.FakeDelay = CurTime() + self.Primary.Delay*4
				self:SetNextPrimaryFire(CurTime() + 1)
			else
				self:SetNextPrimaryFire(CurTime() + 0.5)
			end
			

			self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)

			
		
		else
			
			self:TakePrimaryAmmo(1)
			self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)

		end
		
		if Shots > 1 then
			for i=1, Shots-1 do
				timer.Simple(0.01*i,function() 
					if IsValid(self) == true then 
						self:EmitGunSound(GunSound)
						self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
					end
				end)
			end
		else
			self:EmitGunSound(GunSound)
			self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
		end
		
	elseif self.HasSilencer == true then
	
		if self.IsSilenced then
			self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_SILENCED)
			GunSound = self.Secondary.Sound
			Damage = Damage*0.9
			Recoil = Recoil*0.9
			Cone = Cone*0.9
		else
			self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
			GunSound = self.Primary.Sound
		end
		
		self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
		self:TakePrimaryAmmo(1)
			
	else
	
		self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
		GunSound = self.Primary.Sound
		
		self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
		self:TakePrimaryAmmo(1)
		
	end

	if self.HasScope then
	
		if SERVER then
			if self.HasBoltAction then
				if self:GetNWInt("zoommode",0) >= 1 then
					
						self:SetNWInt("zoommode",0)
						self:SetNWBool("waszoomed",true)

				else
					self:SetNWBool("waszoomed",false)
				end
			end
		end
		
	end
	
	if self.HasPumpAction then
		self.ReloadDelay = CurTime() + 1
	else
		self.ReloadDelay = CurTime() + math.max(self.Primary.Delay,0.25)
	end
	
	self:ShootBullet(Damage, Shots, Cone, Recoil, GunSound)

end

function SWEP:CanPrimaryAttack()
	--if not IsFirstTimePredicted( ) then return end
	if self:GetNextPrimaryFire() > CurTime() then return false end

	if self:Clip1() <= 0 then
		--self:Reload()
		if self.ClickSoundDelay <= CurTime() then
			self.ClickSoundDelay = CurTime()+0.25
			self:EmitSound("weapons/clipempty_pistol.wav",100,100)
		end

		return false
	end

	return true
	
end

function SWEP:ShootBullet(Damage, Shots, Cone, Recoil, GunSound)

	--if not IsFirstTimePredicted( ) then return end

	
	local direction, bonusmul, sideways
	
	self:EmitGunSound(GunSound)

	self.ViewKick = -(Damage*Shots/20)/2*Recoil*self.RecoilMul*GetConVar("sv_css_recoil_scale"):GetFloat()
	self.ExtraSpread = ((self.CoolDown)/100 + self.Owner:GetVelocity():Length()*0.0001*GetConVar("sv_css_velcone_scale"):GetFloat())
	self.CoolDown = math.Clamp(self.CoolDown+(Damage*Shots*0.01)*GetConVar("sv_css_heat_scale"):GetFloat(),0,20)
	self.CoolTime = CurTime() + ((Damage*Shots*0.01) - 0.1)*GetConVar("sv_css_cooltime_scale"):GetFloat()

	if self.CoolDown > 0.25 and self.HasSideRecoil == true then
		bonusmul = math.Rand(-1,1)
		sideways = 3
	else
		bonusmul = 1
		sideways = 1
	end

	if self.Owner:IsPlayer() then
	
		local uppunch = (self.ViewKick/2)*3*bonusmul
		--local uppunch = -self.CoolDown
		local sidepunch = (self.ViewKick/2)*math.Rand(-1,1)*sideways
		--local rollpunch = (self.ViewKick/1) * math.Rand(-1,1)
		local rollpunch = 0
		local punchangle = Angle(uppunch,sidepunch,rollpunch)

		self.Owner:ViewPunch(punchangle)
		--self.Owner:SetViewPunchAngles( punchangle )
		
		Direction = (self.Owner:EyeAngles() + self.Owner:GetPunchAngle()):Forward()
		--Direction = self.Owner:EyeAngles():Forward()
	
		if self.Owner:Crouching() == true and self.Owner:IsOnGround() == true then
			self.CrouchMul = 0.5 * GetConVar("sv_css_cone_scale"):GetFloat()
		else
			self.CrouchMul = 1 * GetConVar("sv_css_cone_scale"):GetFloat()
		end
		
	else
	
		self.CrouchMul = 0.25
		Direction = self.Owner:GetAimVector()
		
	end
	
	local Number = Shots
	local Source = self.Owner:GetShootPos()
	local Spread = Vector(Cone*self.CrouchMul, Cone*self.CrouchMul, 0) + Vector(self.ExtraSpread,self.ExtraSpread,0)
	local Force	= Damage/100
	local Damage = Damage*GetConVar("sv_css_damage_scale"):GetFloat()
	local LastHitPos = self.Owner:GetPos()

	self:LaunchBullet(Number,Source,Direction,Spread,Force,Damage,LastHitPos)

end

function SWEP:EmitGunSound(GunSound)

	self.Weapon:EmitSound(GunSound, 355 , 100, 1, CHAN_WEAPON )
	
end

function SWEP:ShootEffects()

	if SERVER and not game.SinglePlayer() then
		net.Start( "ThirdPersonShellsNet" )
			net.WriteEntity(self.Owner)
		net.Broadcast()
	end
	
end

if SERVER and not game.SinglePlayer() then
	util.AddNetworkString( "ThirdPersonShellsNet" )
end

function SWEP:LaunchBullet(Num,Src,Dir,Spread,Force,Damage,LastHitPos)

	--PrintTable(self:GetAttachments())

	self:ShootEffects()

	if self.PhysBullets then
		--self.Owner:LagCompensation( true )
	
		if SERVER then
		
			local physics = physenv.GetPerformanceSettings( )
			local EyeTrace = self.Owner:GetEyeTrace() 
			
			for i=1, Num do
			
				local XSpread = math.Rand(-Spread.x,Spread.x)
				local YSpread = math.Rand(-Spread.y,Spread.y)
				
				local EyeA = self.Owner:EyeAngles()
				local Offset = EyeA:Forward()*-20 + EyeA:Right()*8 + EyeA:Up()*-3
				
				local APSpread = EyeA:Right()*XSpread + EyeA:Up()*YSpread*500
				local VelSpread = EyeA:Right()*XSpread + EyeA:Up()*YSpread
				local Velocity = physics.MaxVelocity
			
				local ApplyForceCenterMethod = (EyeTrace.HitPos - self.Owner:GetShootPos() - Offset - VelSpread - self.Owner:GetPunchAngle():Up() ) * Velocity
				local SetVelocityMethod = Velocity * (Dir + VelSpread)
				--Dir is (self.Owner:EyeAngles() + self.Owner:GetPunchAngle()):Forward()

				local bullet = ents.Create("ent_cs_bullet")
					bullet:SetPos(self.Owner:GetShootPos() + Offset)
					bullet:SetAngles(EyeA)
					bullet:SetNWInt("Damage",Damage)
					bullet:Spawn()
					bullet:SetOwner(self.Owner)
					--bullet:GetPhysicsObject():ApplyForceCenter( ApplyForceCenterMethod )
					bullet:GetPhysicsObject():SetVelocity( SetVelocityMethod )
			end
			--print(tostring(distancemod2) .. " vs " .. tostring(Dir))
			--print(tostring(Dir) .. " vs " .. tostring(abnormal))
		
		end
		
		--self.Owner:LagCompensation( false )
	
	return end

	local bullet = {}
	bullet.Num		= Num
	bullet.Src		= Src
	bullet.Dir		= Dir
	bullet.Spread	= Spread
	bullet.Tracer	= 0
	bullet.TracerName = "Tracer"
	bullet.Force	= Force
	bullet.Damage	= Damage
	bullet.Callback = function( attacker, tr, dmginfo)
		if attacker:IsPlayer() or attacker:IsBot() then
			if GetConVar("sv_css_enable_penetration"):GetInt() == 1 then
			
				local matmul = 1
				local mat = tr.MatType
			
				if mat == MAT_GLASS or MAT_SAND or MAT_SNOW or MAT_DIRT then
					matmul = 1/3
				elseif mat == MAT_ANTLION or mat == MAT_ALIENFLESH or mat == MAT_FLESH then
					matmul = 1/2
				elseif mat == MAT_CONCRETE or mat == MAT_METAL then
					matmul = 1/0.85
				else
					matmul = 1
				end
				
				if tr.HitWorld == true then
					WorldOffset = tr.Normal*32
				else
					WorldOffset = Vector(0,0,0)
				end
				
				local newtrace = {}
					newtrace.start = tr.HitPos + WorldOffset
					newtrace.endpos = tr.HitPos + Dir*(8*10^10)
					--newtrace.mask = MASK_SHOT
					newtrace.filter = tr.Entity
				local newtracedone = util.TraceLine(newtrace)
					
				local newtrace2 = {}
					newtrace2.start = newtracedone.HitPos
					newtrace2.endpos = newtracedone.HitPos - Dir*(8*10^10)
					--newtrace.mask = MASK_SHOT
					--newtrace2.filter = tr.Entity
				local newtracedone2 = util.TraceLine(newtrace2)

				
				if SERVER then	
					--[[
					timer.Simple(1,function() 
					
						local debugmodel1 = ents.Create("prop_physics")
							debugmodel1:SetPos(newtracedone.HitPos)
							debugmodel1:SetModel("models/hunter/blocks/cube025x025x025.mdl")
							debugmodel1:SetColor(Color(0,255,0,255)) -- green
							debugmodel1:Spawn()
							debugmodel1:Activate()
							debugmodel1:GetPhysicsObject():EnableMotion(false)
							debugmodel1:GetPhysicsObject():EnableCollisions(false)
							
						SafeRemoveEntityDelayed(debugmodel1,5)
							
						local debugmodel2 = ents.Create("prop_physics")
							debugmodel2:SetPos(tr.HitPos)
							debugmodel2:SetModel("models/hunter/blocks/cube025x025x025.mdl")
							debugmodel2:SetColor(Color(255,0,0,255)) -- red
							debugmodel2:Spawn()
							debugmodel2:Activate()
							debugmodel2:GetPhysicsObject():EnableMotion(false)
							debugmodel2:GetPhysicsObject():EnableCollisions(false)
							
						SafeRemoveEntityDelayed(debugmodel2,5)
						
						local debugmodel3 = ents.Create("prop_physics")
							debugmodel3:SetPos(newtracedone2.HitPos)
							debugmodel3:SetModel("models/hunter/blocks/cube025x025x025.mdl")
							debugmodel3:SetColor(Color(0,0,255,255)) --blue
							debugmodel3:Spawn()
							debugmodel3:Activate()
							debugmodel3:GetPhysicsObject():EnableMotion(false)
							debugmodel3:GetPhysicsObject():EnableCollisions(false)
							
						SafeRemoveEntityDelayed(debugmodel3,5)

					end)
					--]]
				end
		
				local distance = (tr.HitPos + Dir):Distance(newtracedone2.HitPos)
				local newdamage = Damage - ( GetConVar("sv_css_penetration_scale"):GetFloat() * distance * matmul )
				
				self:BulletEffect(newtracedone.HitPos , newtracedone2.HitPos, newtracedone.Entity, newtracedone.SurfaceProps)
				self:BulletEffect(tr.HitPos , newtracedone.HitPos, tr.Entity, tr.SurfaceProps)
				
				
				
				if LastHitPos ~= tr.HitPos then
					if newdamage > 0 and tr.HitSky == false then
						self:LaunchBullet(1,newtracedone.HitPos - newtracedone.HitNormal*1, Dir, Vector(0,0,0), Force, newdamage, tr.HitPos)
					end
				end
				

			end
			
			if SERVER then
				if tr.Entity:GetClass() == "prop_vehicle_prisoner_pod" or tr.Entity:IsVehicle() then
					if tr.Entity:GetDriver() ~= NULL then
						tr.Entity:GetDriver():TakeDamageInfo(dmginfo)
					end
				end
			end

		end
		
	end
	
	self.Owner:FireBullets(bullet)
	
end

function SWEP:BulletEffect(HitPos,StartPos,HitEntity,SurfaceProp)
	
	if HitEntity:IsPlayer() then return end
	
	local effect = EffectData()
		effect:SetOrigin(HitPos)
		effect:SetStart(StartPos)
		effect:SetSurfaceProp(SurfaceProp)
		effect:SetDamageType(DMG_BULLET)
		
	if CLIENT then
		effect:SetEntity(HitEntity)
	else
		effect:SetEntIndex(HitEntity:EntIndex())
	end
		
	util.Effect("Impact", effect)
	
end

function SWEP:IsBusy()

	if self.IsReloading == 1 then
		return true
	elseif self.HasSilencer then
		if self.AttachDelay > CurTime() then
			return true
		end
	end
	
	return false

end

function SWEP:Reload()

	if self:IsBusy() then return end
	if self:Clip1() >= self.Primary.ClipSize then return end
	if self:GetNextPrimaryFire() > CurTime() then return false end
	if self.Owner:GetAmmoCount(self:GetPrimaryAmmoType()) == 0  then return end

	if self:GetNWBool("Ironsights",false) == true then
		self:SetNWBool("Ironsights",false)
		self.Owner:SetFOV(0,self.IronSightTime)
	end
		
	if self:GetNWBool("csszoomed",false) == true then
		self:SetNWBool("csszoomed",false)
		self.Owner:SetFOV(0,self.IronSightTime)
	end
	
	if self.HasSilencer == true then
		if self.IsSilenced then
			self:SendWeaponAnim(ACT_VM_RELOAD_SILENCED)
		else
			self:SendWeaponAnim(ACT_VM_RELOAD)
		end
	else
		self:SendWeaponAnim(ACT_VM_RELOAD)
	end

	if self.HasPumpAction == true then

		self.WeaponShellTime = 0.5
		self:SetNextPrimaryFire(CurTime() + self.WeaponShellTime + 0.1 + (self.Primary.ClipSize-self:Clip1())*self.WeaponShellTime)
		
		self.NextShell = self.WeaponShellTime
		
		if self.ShotgunReload == 0 then
			self.ShotgunReload = 1
		end
		
	else
	
		self.Owner:SetAnimation(PLAYER_RELOAD)
		self.ReloadFinish = CurTime() + self.Owner:GetViewModel():SequenceDuration()
		
		if self.NormalReload == 0 then
			self.NormalReload = 1
		end

	end
	
	if self.HasScope == true then
		self:SetNWInt("zoommode",0)
		self.NextZoomTime = CurTime() + self.Owner:GetViewModel():SequenceDuration()
	end
	
	if SERVER then
		if GetConVarNumber("sv_css_enable_mags") == 1 then
			timer.Simple(0.75, function()
				if self.GetMagModel then
					if file.Exists(self.GetMagModel,"GAME") then
						local mag = ents.Create("ent_cs_debris")
							mag:SetPos(self.Owner:GetShootPos() + self.Owner:GetUp()*-12 + self.Owner:GetRight()*3)
							mag:SetModel(self.GetMagModel)
							mag:SetAngles(self.Owner:EyeAngles())
							mag:Spawn()
							mag:Activate()
						SafeRemoveEntityDelayed(mag,10)
					end
				end
			end)
		end
	end

	self.IsReloading = 1
	
end

function SWEP:GetViewModelPosition( pos, ang )

	if ( !self.IronSightsPos ) then return pos, ang end

	local bIron = self.Weapon:GetNetworkedBool( "Ironsights" )
	
	if ( bIron != self.bLastIron ) then
	
		self.bLastIron = bIron 
		self.fIronTime = CurTime()
		
		if ( bIron ) then 
			self.SwayScale 	= 0.5
			self.BobScale 	= 0.5
		else 
			self.SwayScale 	= 1
			self.BobScale 	= 1
		end
	
	end
	
	local fIronTime = self.fIronTime or 0

	if ( !bIron && fIronTime < CurTime() - self.IronSightTime ) then 
		return pos, ang 
	end
	
	local Mul = 1.0
	
	if ( fIronTime > CurTime() - self.IronSightTime ) then
	
		Mul = math.Clamp( (CurTime() - fIronTime) / self.IronSightTime, 0, 1 )
		
		if (!bIron) then Mul = 1 - Mul end
	
	end

	local Offset	= self.IronSightsPos
	
	if ( self.IronSightsAng ) then
	
		ang = ang * 1
		ang:RotateAroundAxis( ang:Right(), 		self.IronSightsAng.x * Mul )
		ang:RotateAroundAxis( ang:Up(), 		self.IronSightsAng.y * Mul )
		ang:RotateAroundAxis( ang:Forward(), 	self.IronSightsAng.z * Mul )
	
	
	end
	
	local Right 	= ang:Right()
	local Up 		= ang:Up()
	local Forward 	= ang:Forward()

	pos = pos + Offset.x * Right * Mul
	pos = pos + Offset.y * Forward * Mul
	pos = pos + Offset.z * Up * Mul

	return pos, ang
	
end

function SWEP:Think()

	if CLIENT then
		self.ViewModelFOV = GetConVar("cl_css_viewmodel_fov"):GetFloat()
	end

	self:BotThink()
	self:EquipThink()
	
	if SERVER then
		if self.HasBoltAction then
			if self.BoltCurTime <= CurTime() then
				if self:GetNWBool("waszoomed",false) then
					if self.IsReloading == 0 then
						self:SetNWInt("zoommode",1)
						self:SetNWBool("waszoomed",false)
					end
				end
			end
		end
	end
	
	
	
	local ammotype = self:GetPrimaryAmmoType()
	
	if self.NormalReload == 1 then
		self.IsReloading = 1
		
		if SERVER then
			if self.First == 0 then
				self.Owner:GiveAmmo(self:Clip1(),ammotype,true)
				self:SetClip1(0)
				self.First = 1
			end
		end
		
		if self.ReloadFinish <= CurTime() then
			--print("I AM DONE RELOADING")
			
			if self.Owner:GetAmmoCount( ammotype ) >= self.Primary.ClipSize then
				self:SetClip1(self.Primary.ClipSize)
				self.Owner:RemoveAmmo(self.Primary.ClipSize,ammotype)
			else
				self:SetClip1(self.Owner:GetAmmoCount(ammotype))
				self.Owner:RemoveAmmo(self.Owner:GetAmmoCount(ammotype),ammotype)
			end

			self.NormalReload = 0
			self.IsReloading = 0
			self.First = 0
			
		end
		
	elseif self.ShotgunReload == 1 then
		self.IsReloading = 1
		if self.NextShell <= CurTime() then
			
			if self.Owner:GetAmmoCount( ammotype ) > 0 and self:Clip1() < self.Primary.ClipSize then 
				self:SetClip1(self:Clip1()+1)
				self.Owner:RemoveAmmo(1,ammotype)
				self:SendWeaponAnim(ACT_VM_RELOAD)
				self.NextShell = CurTime()+self.WeaponShellTime
			else
				self.ShotgunReload = 0
				self.IsReloading = 0
				self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )
			end

		end
	end
	
	if self.CoolTime < CurTime() then
		if self.CoolDown ~= 0 then
			self.CoolDown = math.max(0,self.CoolDown - (0.06 * GetConVar("sv_css_cooldown_scale"):GetFloat() ))
		else
			self.CoolDown = 0
		end
	end

	if SERVER then
		self:SetNWFloat("weaponheat", math.Clamp(self.CoolDown,0,10))
	end
	
end

function SWEP:EquipThink()

end

function SWEP:AdjustMouseSensitivity()

	if self:GetNWBool("IronSights",false) == true then
		sen = 1 / self.ZoomAmount
	elseif self.HasScope == true then
	
		if self:GetNWBool("csszoomed",false) == true and self.HasCSSZoom == true then
			sen = 1 / self.ZoomAmount
		elseif self:GetNWInt("zoommode",0) ~= 0 then
			if self.HasDoubleZoom == true then
				sen = 1 / (self.ZoomAmount*(self:GetNWInt("zoommode",0)/2))
			else
				sen = 1 / self.ZoomAmount
			end
		else
			sen = 1
		end
	else
		sen = 1
	end

	return sen
end

function SWEP:DrawHUD()

	local x = ScrW()
	local y = ScrH()

	local length = GetConVarNumber("cl_css_crosshair_length")
	local width = GetConVarNumber("cl_css_crosshair_width")
	local convar = GetConVarNumber("fov_desired")

	local r = GetConVarNumber("cl_css_crosshair_color_r")
	local g = GetConVarNumber("cl_css_crosshair_color_g")
	local b = GetConVarNumber("cl_css_crosshair_color_b")
	local a = GetConVarNumber("cl_css_crosshair_color_a")
	
	local csscrouchmul
	
	if self.Owner:Crouching() == true and self.Owner:IsOnGround() == true then
		csscrouchmul = 0.5
	else
		csscrouchmul = 1
	end

	self.ActualCone = self.Primary.Cone * GetConVar("sv_css_cone_scale"):GetFloat()

	local add = 2

	if self:GetNWInt("zoommode",0) ~= 0 then
		add = 0.1
	end

	local heat = self:GetNWInt("weaponheat",0)*15
	local extra = (self.ActualCone*1000*csscrouchmul + ( heat + self.Owner:GetVelocity():Length()*0.1*GetConVar("sv_css_velcone_scale"):GetFloat() )) + add
	
	if self.HasCrosshair == true then
		if self:GetNWInt("zoommode",0) == 0 and self:GetNWBool("IronSights",false) == false then
		
			if GetConVarNumber("cl_css_crosshair_style") >= 1 and GetConVarNumber("cl_css_crosshair_style") <= 4 then
		
				if width > 1 then
					local fix = length/2
				
					surface.SetDrawColor(r,g,b,a)
					surface.DrawRect( x/2 - width/2, y/2 - length/2 + extra + fix , width, length )
					surface.DrawRect( x/2 - width/2, y/2 - length/2 - extra - fix, width, length )
					surface.DrawRect( x/2 - length/2 + extra + fix, y/2 - width/2, length, width )
					surface.DrawRect( x/2 - length/2 - extra - fix, y/2 - width/2, length, width )
				else
					surface.SetDrawColor(r,g,b,a)
					surface.DrawLine( x/2+1+extra+length, y/2, x/2+0.5+extra, y/2 )
					surface.DrawLine( x/2-1-extra-length, y/2, x/2-0.5-extra, y/2 )
					surface.DrawLine( x/2, y/2+1+extra+length, x/2, y/2+0.5+extra )
					surface.DrawLine( x/2, y/2-1-extra-length, x/2, y/2-0.5-extra )
				end
			
			end
		
			if GetConVarNumber("cl_css_crosshair_style") >= 2 and GetConVarNumber("cl_css_crosshair_style") <= 5 then
				if GetConVarNumber("cl_css_crosshair_style") == 4 then
					surface.DrawCircle(x/2,y/2, extra + length, Color(r,g,b,a))
				elseif GetConVarNumber("cl_css_crosshair_style") == 3 then
					surface.DrawCircle(x/2,y/2, extra + length/2, Color(r,g,b,a))
				else
					surface.DrawCircle(x/2,y/2, extra, Color(r,g,b,a))
				end
			end
		
		end

	end

	if self.HasScope == true then
		if self:GetNWInt("zoommode",0) ~= 0 then

			local fovbonus = convar/self.Owner:GetFOV()
			local offset = 0
			
			--DrawMaterialOverlay("gmod/scope-refract",-0.05)
			
			if extra > 0.1 then
				surface.DrawCircle( x/2, y/2, math.Clamp(extra*fovbonus,3,x/2*0.33), Color(0,255,0) )
			end
			

			
			local faggot = 1
			
			---if file.Exists( "materials/sprites/scope_arc", "GAME" ) then
			if faggot == 0 then
			
				local space = 2
				
				surface.SetDrawColor(Color(0,0,0))
				surface.SetMaterial(Material("overlays/scope_lens"))
				surface.DrawTexturedRectRotated(x/2,y/2,y,y,0)
				
				
				surface.SetDrawColor(Color(0,0,0))
				surface.SetMaterial(Material("sprites/scope_arc"))
				surface.DrawTexturedRectRotated(x/2 - y/4,y/2 - y/4,y/2 + space,y/2 + space,0-180)
				surface.DrawTexturedRectRotated(x/2 - y/4,y/2 + y/4,y/2 + space,y/2 + space,90-180)
				surface.DrawTexturedRectRotated(x/2 + y/4,y/2 + y/4,y/2 + space,y/2 + space,180-180)
				surface.DrawTexturedRectRotated(x/2 + y/4,y/2 - y/4,y/2 + space,y/2 + space,270-180)
			else
				local space = 1
				
				surface.SetDrawColor(Color(0,0,0))
				surface.SetMaterial(Material("gui/sniper_corner"))
				surface.DrawTexturedRectRotated(x/2 - y/4,y/2 - y/4,y/2 + space,y/2 + space,0-180-180)
				surface.DrawTexturedRectRotated(x/2 - y/4,y/2 + y/4,y/2 + space,y/2 + space,90-180-180)
				surface.DrawTexturedRectRotated(x/2 + y/4,y/2 + y/4,y/2 + space,y/2 + space,180-180-180)
				surface.DrawTexturedRectRotated(x/2 + y/4,y/2 - y/4,y/2 + space,y/2 + space,270-180-180)
				
				surface.DrawLine(x/2,0,x/2,y)
				surface.DrawLine(0,y/2,x,y/2)
			end
			
			
			
			
			
			surface.SetDrawColor(Color(0,0,0))
			surface.SetMaterial(Material("vgui/gfx/vgui/solid_background"))
			surface.DrawTexturedRectRotated(x/4 - y/4,y/2,x/2 - y/2,y,0)
			surface.DrawTexturedRectRotated(x - x/4 + y/4,y/2,x/2 - y/2,y,0)
			

			--surface.DrawCircle(x/2,y/2,y/16,Color(0,0,0))
			
			--[[
			if fovbonus > 4 then
				surface.SetDrawColor(Color(0,0,0))

			else
				surface.DrawCircle(x/2,y/2,10,Color(255,0,0))
			end
			--]]
		end
	end
end


function SWEP:HUDShouldDraw( element )
	if self:GetNWInt("zoommode",0) ~= 0 and element == "CHudWeaponSelection" then return false end
	return true
end

function SWEP:PrintWeaponInfo( x, y, alpha )

	local InfoColor = Color(255,255, 100, alpha)

	--if ( self.DrawWeaponInfoBox == false ) then return end

	if (self.InfoMarkup == nil ) then
		local str
		local title_color = "<color=0,0,0,255>"
		local text_color = "<color=255,150,150,255>"
		
		str = "<font=HudSelectionText>"
		str = str .. title_color .. "Base Damage:</color> "..text_color..self.Primary.Damage.."</color>\n" 
		str = str .. title_color .. "Firerate:</color> "..text_color.. math.floor((self.Primary.Delay^-1)*60) .. " RPM" .."</color>\n"
		str = str .. title_color .. "Damage Per Second:</color> "..text_color..math.floor((self.Primary.Delay^-1) * self.Primary.Damage ).. "DPS" .. "</color>\n"
		str = str .. title_color .. "Recoil:</color> "..text_color.. math.floor((self.Primary.Damage * self.RecoilMul) * 2) .. "%" .."</color>\n" 
		str = str .. title_color .. "Accuracy:</color> "..text_color.. 100 - (self.Primary.Cone*100) .. "%" .. "</color>\n"
		str = str .. "</font>"
		
		self.InfoMarkup = markup.Parse( str, 250 )
	end
	
	surface.SetDrawColor( InfoColor )
	surface.SetTexture( self.SpeechBubbleLid )
	

	
	surface.DrawTexturedRect( x, y - 64 - 5, 128, 64 ) 
	draw.RoundedBox( 8, x - 5, y - 6, 260, self.InfoMarkup:GetHeight() + 18, InfoColor )
	
	self.InfoMarkup:Draw( x+5, y+5, nil, nil, alpha )
	
end

SWEP.Bot = {}
SWEP.Bot.SearchDelay 		= 0
SWEP.Bot.ShootDelay 		= 0
SWEP.Bot.SwitchTime 		= 0

function SWEP:BotThink()

	if not self.Owner:IsBot() then return end

	local FindPlayers = ents.FindByClass("player")
	
	if self.Bot.SearchDelay <= CurTime() then
		
		Result = {}
		
		for k,v in pairs(FindPlayers) do
			
			if v ~= self.Owner and v:Alive() then 
			

				RealDistance = v:GetPos():Distance(self.Owner:GetPos())
				Distance = v:GetPos():Distance(self.Owner:GetPos()) - 10000000
				
				Result[v] = math.abs(Distance)
			
				if SERVER then
					--PrintTable(Result)
				end

			end

		end
	
		Winner = table.GetWinningKey( Result ) or Entity(1)
		
		self.Bot.SearchDelay = CurTime() + 0.75

	end
	
	if SERVER then
		
		local target = Winner:GetPos() + Vector(0,0,25)
		
		Main = (target - self.Owner:GetShootPos() ):Angle()
		
		P = math.NormalizeAngle(Main.p)
		Y = math.NormalizeAngle(Main.y)
		R = 0
		
		Tots = Angle(P,Y,R)
		
		--if RealDistance < 2000 then
			self.Owner:SetEyeAngles(Tots)
		--end
		
	end
	
	if self:Clip1() == 0 then
		--self:SetClip1(self.Primary.ClipSize)
		self:Reload()
	end
	
	
	if SERVER then
	
		local Victim = self.Owner:GetEyeTrace().Entity
		
		if Victim:IsPlayer() then
			
			if Victim:Health() > 0 then
				if self.Bot.ShootDelay <= CurTime() then
					if self:Clip1() > 0 then
						
						local distance = self.Owner:GetPos():Distance(Victim:GetPos())
						
							
						self:Shoot()
						--self.Weapon:EmitSound(self.Primary.Sound,100,100)
						self.Bot.ShootDelay = CurTime() + math.min(0, self.Primary.Delay + ( self.Primary.Delay * distance/2000 ) - ( self.Primary.Delay * self.Owner:GetVelocity():Length()/50 ))
					end
				end
			end
		
		elseif Victim:GetNWFloat("propcurhealth",-1) ~= -1 then
			if self.Bot.ShootDelay <= CurTime() then
				if self:Clip1() > 0 then
					self:Shoot()
					self.Bot.ShootDelay = CurTime() + self.Primary.Delay*3
				end
			end	
	
		end
		
	end
	
	if not DebugTime then
		DebugTime = 0
	end
	
	if DebugTime <= CurTime() then
		DebugTime = CurTime() + 5
		if SERVER then
			--print(self.Owner:Nick() .. " is targeting " .. Winner:Nick())
		end
	end
end