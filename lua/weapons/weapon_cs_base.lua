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

CreateConVar("sv_css_enable_damagemod", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "1 enables damage modifications, 0 disables. Default is 1." )
CreateConVar("sv_css_enable_damagesounds", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "1 enables damage sounds, 0 disables. Default is 1." )
CreateConVar("sv_css_enable_deathsounds", "1", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "1 enables death sounds, 0 disables. Default is 1." )

CreateConVar("sv_css_enable_speedmod", "0", FCVAR_REPLICATED  + FCVAR_ARCHIVE , "1 enables speed mod, 0 disables. Default is 1." )

CreateClientConVar("cl_css_customslots", "0", true, true )
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

if SERVER and not game.SinglePlayer() then
	util.AddNetworkString( "ThirdPersonShellsNet" )
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
SWEP.Category				= "Counter-Strike"
SWEP.Author					= "Burger"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions			= ""

SWEP.Spawnable				= false
SWEP.UseHands				= true

SWEP.Cost					= 0
SWEP.MoveSpeed				= 250

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
SWEP.NextCoolTick			= 0

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
	
	if CLIENT then
		if GetConVarNumber("cl_css_customslots") == 1 then
		
			if self.WeaponType == "Primary" then
				self.Slot = 2
			elseif self.WeaponType == "Secondary" then
				self.Slot = 1
			end
		
		end
	end
	
end

function SWEP:PostDrawViewModel( vm, weapon, ply )

	if CLIENT then
		if GetConVarNumber("cl_css_viewmodel_cmodel") == 0 then
			LocalPlayer():GetHands():SetModel("models/weapons/c_arms_cstrike.mdl")
		end
	end
	
end

function SWEP:Deploy()

	if SERVER then
	
		if self.AlreadyGiven == false then
		
			if GetConVarNumber("sv_css_ammo_loaded") == 1 then
				self:SetClip1(self.Primary.ClipSize)
			end
			
			if GetConVarNumber("sv_css_ammo_givespare") == 1 then
				self.Owner:GiveAmmo(self.Primary.SpareClip,self.Primary.Ammo,false)
			end

			self.AlreadyGiven = true
			
		end
		
		if GetConVarNumber("sv_css_limit_equipped") == 1 then
			for k,v in pairs (self.Owner:GetWeapons()) do
				if v.BurgerBase ~= nil then
					if v ~= self then
						if self.WeaponType == v.WeaponType and v.WeaponType ~= "Free" then
							self.Owner:StripWeapon(v:GetClass())
							
							local dropped = ents.Create("ent_cs_droppedweapon")
							dropped:SetPos(self.Owner:GetPos() + self.Owner:OBBCenter() )
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
	self:SetNWInt("waszoomed",0)
	
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

	
	if not self:CanPrimaryAttack() then return end
	if self:IsBusy() then return end
	if self:IsUsing() then return end

	self.Owner:SetAnimation(PLAYER_ATTACK1)

	local Damage,Shots,Cone,Recoil = self:Modifiers(self.Primary.Damage,self.Primary.NumShots,self.Primary.Cone,self.RecoilMul)
	
	if self.HasScope then
		if SERVER then
			if self.HasBoltAction then
				if self:GetNWInt("zoommode",0) >= 1 then
					
						local value = self:GetNWInt("zoommode",0)
						--print(value)
						
						self:SetNWInt("waszoomed", value )
						self:SetNWInt("zoommode",0)
						

				else
					self:SetNWInt("waszoomed",0)
				end
			end
		end
	end
	
	local Source = self.Owner:GetShootPos()
	local Direction = (self.Owner:EyeAngles() + self.Owner:GetPunchAngle()):Forward()
	
	self:ShootBullet(Damage, Shots, Cone, Source, Direction,Source)
	self:AddHeat(Damage,Shots)
	self:Recoil(Damage,Shots,Cone,Recoil)
	self:ShootEffects()

end

function SWEP:Modifiers(Damage,Shots,Cone,Recoil)

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

	if self.HasPumpAction then
		self.ReloadDelay = CurTime() + 1
	else
		self.ReloadDelay = CurTime() + math.max(self.Primary.Delay,0.25)
	end

	if self.Owner:Crouching() == true and self.Owner:IsOnGround() == true then
		Cone = Cone * 0.5
	else
		Cone = Cone * 1
	end
	
	local VelCone = self.Owner:GetVelocity():Length()*0.0001

	
	
	if SERVER then
		--Shots = Shots
		Cone = ( VelCone * GetConVarNumber("sv_css_velcone_scale") ) + (Cone * GetConVarNumber("sv_css_cone_scale")) + (self.CoolDown/100)
		Recoil = Recoil * GetConVarNumber("sv_css_recoil_scale") * self.RecoilMul
	end
	
	if CLIENT then
		--Shots = Shots
		
		if not self.Owner.css_velcone_scale then
			Cone = ( VelCone * 1 ) + (Cone * 1) + (self.CoolDown/100)
			Recoil = Recoil * 1 * self.RecoilMul
		else
			Cone = ( VelCone * self.Owner.css_velcone_scale ) + (Cone * self.Owner.css_cone_scale) + (self.CoolDown/100)
			Recoil = Recoil * self.Owner.css_recoil_scale * self.RecoilMul
		end
		
	end

	self:EmitGunSound(GunSound)
	
	
	return Damage,Shots,Cone,Recoil
	
end

function SWEP:Recoil(Damage,Shots,Cone,Recoil)

	local ViewKick = -(Damage*Shots/20)/2*Recoil

	if self.CoolDown > 0.25 and self.HasSideRecoil == true then
		bonusmul = math.Rand(-1,1)
		sideways = 3
	else
		bonusmul = 1
		sideways = 1
	end

	local uppunch = (ViewKick/2)*3*bonusmul
	local sidepunch = (ViewKick/2)*math.Rand(-1,1)*sideways
	local rollpunch = 0
	local punchangle = Angle(uppunch,sidepunch,rollpunch)

	self.Owner:ViewPunch(punchangle)
	
end

function SWEP:SecondaryAttack()
	
	
	if self:IsBusy() then return end
	if self:IsUsing() then return end

	if self.HasBurstFire == true then
		self:SwitchFireMode()
	elseif self.HasScope == true then
		if GetConVarNumber("sv_css_enable_csszoom") == 1 and self.HasCSSZoom == true then
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
				self:SetNWInt("waszoomed",0)
			end
		else
			if var == 0 then
				var = 1
			else
				var = 0
				self:SetNWInt("waszoomed",0)
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

function SWEP:CanPrimaryAttack()

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

function SWEP:AddHeat(Damage,Shots)

	if CLIENT and not IsFirstTimePredicted() then return end
	
	if CLIENT then
		self.CoolDown = math.Clamp(self.CoolDown+(Damage*Shots*0.01)*self.Owner.css_heat_scale,0,20)
		self.CoolTime = CurTime() + ((Damage*Shots*0.01) - 0.1)*self.Owner.css_cooltime_scale
	end
		
	if SERVER  then 
		self.CoolDown = math.Clamp(self.CoolDown+(Damage*Shots*0.01)*GetConVarNumber("sv_css_heat_scale"),0,20)
		self.CoolTime = CurTime() + ((Damage*Shots*0.01) - 0.1)*GetConVarNumber("sv_css_cooltime_scale")
	end

	if game.SinglePlayer() then
		self:SetNWFloat("SinglePlayerNetwork",self.CoolDown)
	end

end

function SWEP:ShootBullet(Damage, Shots, Cone, Source, Direction,LastHitPos)

	if CLIENT and not IsFirstTimePredicted() then return end

	--if not IsFirstTimePredicted() then return end
	
	
	local bullet = {}
	bullet.Damage	= Damage
	bullet.Num		= Shots
	bullet.Spread	= Vector(Cone, Cone, 0)
	bullet.Src		= Source
	bullet.Dir		= Direction
	
	bullet.Tracer	= 0
	bullet.TracerName = "Tracer"
	bullet.Force	= 0
	
	bullet.Callback = function( attacker, tr, dmginfo)
	
		if attacker:IsPlayer() or attacker:IsBot() then
		
			if GetConVarNumber("sv_css_enable_penetration") == 1 then
			
				local matmul = 1
				local mat = tr.MatType
			
				if mat == MAT_GLASS or MAT_SAND or MAT_SNOW or MAT_DIRT then
					matmul = 1/3
				elseif mat == MAT_ANTLION or mat == MAT_ALIENFLESH or mat == MAT_FLESH then
					matmul = 1/2
				elseif mat == MAT_CONCRETE then
					matmul = 1/0.85
				elseif mat == MAT_METAL then
					matmul = 1/0.75
				else
					matmul = 1
				end
				
				if tr.HitWorld == true then
				
					self:WorldBulletSolution(tr.HitPos,Direction,Damage)
					
					return
					
					

				else
					WorldOffset = Vector(0,0,0)
				end
				
				

				
				local newtrace = {}
					newtrace.start = tr.HitPos + WorldOffset
					newtrace.endpos = tr.HitPos + Direction*(8*10^10)
					newtrace.mask = MASK_SHOT
					newtrace.filter = tr.Entity
				local newtracedone = util.TraceLine(newtrace)
					
				local newtrace2 = {}
					newtrace2.start = newtracedone.HitPos
					newtrace2.endpos = newtracedone.HitPos - Direction*(8*10^10)
					newtrace.mask = MASK_SHOT
					--newtrace2.filter = tr.Entity
				local newtracedone2 = util.TraceLine(newtrace2)

				
				local Distance = (tr.HitPos + Direction):Distance(newtracedone2.HitPos)
				
				local NewDamage = Damage - ( GetConVarNumber("sv_css_penetration_scale") * Distance * matmul )
				local NewShots = 1
				local NewCone = 0
				local NewSource =  newtracedone.HitPos - newtracedone.HitNormal*1
				local NewDirection = Direction
				local NewLastHitPos = tr.HitPos
				
				self:BulletEffect(newtracedone.HitPos , newtracedone2.HitPos, newtracedone.Entity, newtracedone.SurfaceProps)
				self:BulletEffect(tr.HitPos , newtracedone.HitPos, tr.Entity, tr.SurfaceProps)
				
				if LastHitPos ~= tr.HitPos then
					if NewDamage > 0 and tr.HitSky == false then
						self:ShootBullet(NewDamage, NewShots, NewCone, NewSource, NewDirection, NewLastHitPos)
					end
				else
					--[[
					if NewDamage > 0 and tr.HitSky == false then
						if tr.Entity ~= nil then
							if tr.Entity:GetClass() == "prop_physics" then
								tr.Entity:GetPhysicsObject():EnableMotion(true)
								constraint.RemoveAll(tr.Entity)
							end
						end
					end
					--]]
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


function SWEP:WorldBulletSolution(Pos,Direction,Damage)

	
	local Amount = 3
	
	local data = {}
	data.start = Pos + Direction
	data.endpos = Pos + Direction*Amount
	
	local trace = util.TraceLine(data)
	
	local NewDamage = Damage - ( GetConVarNumber("sv_css_penetration_scale") * Amount )
	
	--print("Running... Newdamage is " .. NewDamage )

	--print(trace.HitWorld)
	--print(NewDamage)
	
	
	if trace.HitWorld and NewDamage > 1 then
		self:WorldBulletSolution(Pos + Direction*Amount,Direction,NewDamage)
	elseif NewDamage > 1 then
	
		local FinalPos = Pos + Direction*(Amount+0.5)
	
		self:ShootBullet(NewDamage, 1 , 0, FinalPos, Direction , FinalPos )
		
		--[[
		local debugmodel1 = ents.Create("prop_physics")
		debugmodel1:SetPos(FinalPos)
		debugmodel1:SetModel("models/hunter/blocks/cube025x025x025.mdl")
		debugmodel1:SetColor(Color(0,255,0,255)) -- green
		debugmodel1:Spawn()
		debugmodel1:Activate()
		debugmodel1:GetPhysicsObject():EnableMotion(false)
		debugmodel1:GetPhysicsObject():EnableCollisions(false)
		
		SafeRemoveEntityDelayed(debugmodel1,5)
		--]]
		
	end

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

function SWEP:IsUsing()

	if self.Owner:KeyDown(IN_USE) then return true end
	
end


function SWEP:Reload()

	if not IsFirstTimePredicted( ) then return false end
	
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
		self.ViewModelFOV = GetConVarNumber("cl_css_viewmodel_fov")
	end

	--self:BotThink()
	self:EquipThink()
	
	if SERVER then
		if self.HasBoltAction then
			if self.BoltCurTime <= CurTime() then
				if self:GetNWInt("waszoomed",0) > 0 then
					if self.IsReloading == 0 then
						self:SetNWInt("zoommode",self:GetNWInt("waszoomed",0))
						self:SetNWInt("waszoomed",0)
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

			if self.NextCoolTick < CurTime() then
			
			
				if CLIENT then
					self.CoolDown = math.max(0,self.CoolDown - (0.18 * self.Owner.css_cooldown_scale ) )
				end
				
				if SERVER then
					self.CoolDown = math.max(0,self.CoolDown - (0.18 * GetConVarNumber("sv_css_cooldown_scale") ))
				end
				
				self.NextCoolTick = CurTime() + 0.025
				
				
			end

		else
			self.CoolDown = 0
		end
	end
	
	if SERVER then
		if game.SinglePlayer() then
			self:SetNWFloat("SinglePlayerNetwork",self.CoolDown)
		end
	end

	--[[
	if SERVER then
		self:SetNWFloat("weaponheat", math.Clamp(self.CoolDown,0,10))
	end
	--]]
	
end

function SWEP:EquipThink()

end

function SWEP:QuickThrow()

end

function SWEP:QuickKnife()

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

	if not LocalPlayer().css_cone_scale and not game.SinglePlayer() then return end
	
	local x = ScrW()
	local y = ScrH()

	local length = GetConVarNumber("cl_css_crosshair_length")
	local width = GetConVarNumber("cl_css_crosshair_width")
	local convar = GetConVarNumber("fov_desired")

	local r = GetConVarNumber("cl_css_crosshair_color_r")
	local g = GetConVarNumber("cl_css_crosshair_color_g")
	local b = GetConVarNumber("cl_css_crosshair_color_b")
	local a = GetConVarNumber("cl_css_crosshair_color_a")
	
	local Cone = self.Primary.Cone
	
	if self.HasScope and !self.HasCrosshair then
		if self:GetNWInt("zoommode",0) == 0 then
			Cone = 0.1
		end
	elseif self.HasBurstFire == true then
		if self:GetFireMode( ) == BURST then
			Cone = Cone * 2
		end
	elseif self.HasSilencer == true then
		if self.IsSilenced then
			Cone = Cone*0.9
		end
	end
	
	if self.Owner:Crouching() == true and self.Owner:IsOnGround() == true then
		Cone = Cone * 0.5
	else
		Cone = Cone * 1
	end
	
	local VelCone = self.Owner:GetVelocity():Length()*0.0001
	
	local CoolDown
	
	if game.SinglePlayer() then
		CoolDown = self:GetNWFloat("SinglePlayerNetwork",0)
		VelConeScale = GetConVarNumber("sv_css_velcone_scale")
		ConeScale = GetConVarNumber("sv_css_cone_scale")
	else
		CoolDown = self.CoolDown
		VelConeScale = LocalPlayer().css_velcone_scale
		ConeScale = LocalPlayer().css_cone_scale
	end

	Cone = (VelCone * VelConeScale) + (Cone * ConeScale) + (CoolDown/100)
	Cone = Cone*1000

	if self.HasCrosshair == true then
		if self:GetNWInt("zoommode",0) == 0 and self:GetNWBool("IronSights",false) == false then
		
			if GetConVarNumber("cl_css_crosshair_style") >= 1 and GetConVarNumber("cl_css_crosshair_style") <= 4 then
		
				if width > 1 then
					local fix = length/2
				
					surface.SetDrawColor(r,g,b,a)
					surface.DrawRect( x/2 - width/2, y/2 - length/2 + Cone + fix , width, length )
					surface.DrawRect( x/2 - width/2, y/2 - length/2 - Cone - fix, width, length )
					surface.DrawRect( x/2 - length/2 + Cone + fix, y/2 - width/2, length, width )
					surface.DrawRect( x/2 - length/2 - Cone - fix, y/2 - width/2, length, width )
				else
					surface.SetDrawColor(r,g,b,a)
					surface.DrawLine( x/2+1+Cone+length, y/2, x/2+0.5+Cone, y/2 )
					surface.DrawLine( x/2-1-Cone-length, y/2, x/2-0.5-Cone, y/2 )
					surface.DrawLine( x/2, y/2+1+Cone+length, x/2, y/2+0.5+Cone )
					surface.DrawLine( x/2, y/2-1-Cone-length, x/2, y/2-0.5-Cone )
				end
			
			end
		
			if GetConVarNumber("cl_css_crosshair_style") >= 2 and GetConVarNumber("cl_css_crosshair_style") <= 5 then
				if GetConVarNumber("cl_css_crosshair_style") == 4 then
					surface.DrawCircle(x/2,y/2, Cone + length, Color(r,g,b,a))
				elseif GetConVarNumber("cl_css_crosshair_style") == 3 then
					surface.DrawCircle(x/2,y/2, Cone + length/2, Color(r,g,b,a))
				else
					surface.DrawCircle(x/2,y/2, Cone, Color(r,g,b,a))
				end
			end
		
		end

	end

	if self.HasScope == true then
		if self:GetNWInt("zoommode",0) ~= 0 then

			local fovbonus = convar/self.Owner:GetFOV()
			local offset = 0
			
			--DrawMaterialOverlay("gmod/scope-refract",-0.05)
			
			if Cone > 0.1 then
				surface.DrawCircle( x/2, y/2, math.Clamp(Cone*fovbonus,3,x/2*0.33), Color(0,255,0) )
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
	
		local Damage
		local Cone
		local Recoil
		
	
		if game.SinglePlayer() then
			Damage = self.Primary.NumShots * self.Primary.Damage * GetConVarNumber("sv_css_damage_scale")
			Cone = self.Primary.Cone * GetConVarNumber("sv_css_cone_scale")
			Recoil = Damage * self.RecoilMul * GetConVarNumber("sv_css_recoil_scale")
		else
			Damage = self.Primary.NumShots * self.Primary.Damage * LocalPlayer().css_damage_scale
			Cone = self.Primary.Cone * LocalPlayer().css_cone_scale
			Recoil = Damage * self.RecoilMul * LocalPlayer().css_recoil_scale
		end
	
	
	
		local str
		local title_color = "<color=0,0,0,255>"
		local text_color = "<color=255,150,150,255>"
		
		str = "<font=HudSelectionText>"
		str = str .. title_color .. "Damage:</color> "..text_color..Damage.."</color>\n" 
		str = str .. title_color .. "Firerate:</color> "..text_color.. math.floor((self.Primary.Delay^-1)*60) .. " RPM" .."</color>\n"
		str = str .. title_color .. "Damage Per Second:</color> "..text_color..math.floor((self.Primary.Delay^-1) * Damage ).. "DPS" .. "</color>\n"
		str = str .. title_color .. "Recoil:</color> "..text_color.. math.floor(Recoil * 2) .. "%" .."</color>\n" 
		str = str .. title_color .. "Accuracy:</color> "..text_color.. 100 - (Cone*100) .. "%" .. "</color>\n"
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


SWEP.Bot.TargetEnt			= nil
SWEP.Bot.TargetPos			= nil
--[[
function SWEP:BotThink()

	if SERVER then
		if not self.Owner:IsBot() then return end
		
		if self.Bot.TargetEnt == nil then
		
			if self.Bot.SearchDelay < CurTime() then
			
				local Bump = self.Owner:GetEyeTrace().StartPos:Distance(self.Owner:GetEyeTrace().HitPos)
			
				if Bump > 300 then
					self.Owner:SetEyeAngles(self.Owner:EyeAngles() + Angle(0,math.Rand(-45,45),0 ))
				else
					self.Owner:SetEyeAngles(self.Owner:EyeAngles() + Angle(0,180,0 ))
				end
			
			
				self.Bot.TargetEnt = self:BotFindTarget()
				self.Bot.SearchDelay = CurTime() + 1
			end
			
		else
		
			self.Bot.TargetPos = self.Bot.TargetEnt:GetPos() + self.Bot.TargetEnt:OBBCenter()
		
			local Main = (self.Bot.TargetPos - self.Owner:GetShootPos() ):Angle()
			
			P = math.NormalizeAngle(Main.p)
			Y = math.NormalizeAngle(Main.y)
			R = 0
			
			Tots = Angle(P,Y,R)
		
			self.Owner:SetEyeAngles(Tots)

			if self:Clip1() == 0 then
				self:Reload()
			end
			
			if self:Ammo1() <= self:Clip1() then
				self.Owner:SetAmmo(self:Clip1(), self.Primary.Ammo)
			end
			
			if self.Bot.TargetEnt:Health() > 0 then
				
				if self.Owner:GetEyeTrace().Entity == self.Bot.TargetEnt then
				
					if self.Bot.ShootDelay <= CurTime() then
					
						if self:Clip1() > 0 then
							local Distance = self.Owner:GetPos():Distance(self.Bot.TargetEnt:GetPos())
							self:PrimaryAttack()
							
							if self.Primary.Automatic == true then
								self.Bot.ShootDelay = CurTime() + self.Primary.Delay*math.Rand(1.5,3)
							else
								self.Bot.ShootDelay = CurTime() + math.max(self.Primary.Delay,(1/math.Rand(6,7)))
							end
							
						elseif self.Owner:GetActiveWeapon():GetClass() == "weapon_cs_sun" then
							self:PrimaryAttack()
						end
						
					end

				end
				
			else

				print("BOT: You're dead " .. self.Bot.TargetEnt:Nick() .. "!")
				self.Bot.TargetEnt = nil
				
			end

		end
		
	end
	
end

function SWEP:BotFindTarget()

	local EnemyList = {}

	local ConeEnts = ents.FindInCone(self.Owner:GetShootPos(),self.Owner:EyeAngles():Forward(),8000, 60)

	if #ConeEnts == 0 then return nil end
	
	for k,v in pairs(ConeEnts) do
		
		if v:IsPlayer() and v ~= self.Owner then	
			if v:Alive() == true then

				local data = {}
				data.start = self.Owner:EyePos()
				data.endpos = v:GetPos() + v:OBBCenter()
				data.filter = self.Owner
				--data.mask = MASK_BLOCKLOS_AND_NPCS

				local trace = util.TraceLine(data)
			
				if IsValid(trace.Entity) then
				
					if trace.Entity == v then 
						print("BOT: You're going to die " .. v:Nick() .. "!")
						EnemyList[v] = v:GetPos():Distance(self.Owner:EyePos())
					end
					
				end
			end
		end

	end
	
	EnemyList = table.SortByKey(EnemyList,true)
	
	return EnemyList[1]
	
end

--]]
