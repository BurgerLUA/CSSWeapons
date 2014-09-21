
if CLIENT then
	SWEP.PrintName			= "weapon_cs_botgun"
	SWEP.Slot				= 3
	SWEP.SlotPos			= 1
	killicon.AddFont( "weapon_cs_botgun", "csd", "bD", Color( 0, 80, 255, 255 ) )
	SWEP.ViewModelFlip = true
end

SWEP.HoldType			= "ar2"
SWEP.Base				= "weapon_cs_base"
SWEP.Spawnable			= true
SWEP.Category			= "EXPERIMENTAL"

SWEP.ViewModel			= "models/weapons/v_rif_ak47.mdl"
SWEP.WorldModel			= "models/weapons/w_rif_ak47.mdl"

SWEP.Primary.Damage			= 35
SWEP.Primary.NumShots		= 1
SWEP.Primary.Sound			= Sound("weapons/ak47/ak47-1.wav")
SWEP.Primary.Cone			= .002
SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 10
SWEP.Primary.Delay			= .14
SWEP.Primary.Ammo			= "ar2"
SWEP.Primary.Automatic = true

SWEP.CoolDown = 0
SWEP.RecoilMul	= 0.25
SWEP.Type = "other" -- shotgun, sniper, selective, other
SWEP.ZoomAmount = 1
SWEP.EnableScope = false
SWEP.EnableCrosshair = true

SWEP.AutoSwitchTo		= true
SWEP.AutoSwitchFrom		= false

SWEP.Bot = {}
SWEP.Bot.SearchDelay = 0
SWEP.Bot.ShootDelay = 0
SWEP.Bot.SwitchTime = 0

nex = 0


function SWEP:BotThink()
	local FindPlayers = ents.FindByClass("player")
	
	if self.Bot.SearchDelay <= CurTime() then
		
		Result = {}
		
		for k,v in pairs(FindPlayers) do
			
			if v ~= self.Owner and v:Alive() then 
			
				--if CLIENT then
					RealDistance = v:GetPos():Distance(self.Owner:GetPos())
				--end
			
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
		
		Main = (target.Pos - self.Owner:GetShootPos() ):Angle()
		
		P = math.NormalizeAngle(Main.p)
		Y = math.NormalizeAngle(Main.y)
		R = 0
		
		Tots = Angle(P,Y,R)
		
		if RealDistance < 2000 then
			self.Owner:SetEyeAngles(Tots)
		end
		
	end
	
	if self:Clip1() <= 1 then
		self:SetClip1(30)
	end
	
	
	--if CLIENT then
		if self.Owner:GetEyeTrace().Entity:Health() > 0 then
			if self.Bot.ShootDelay <= CurTime() then
				self:Shoot()
				self.Weapon:EmitSound(self.Primary.Sound,100,100)
				self.Bot.ShootDelay = CurTime() + self.Primary.Delay
			end
		end
	--end
	
	if not DebugTime then
		DebugTime = 0
	end
	
	if DebugTime <= CurTime() then
		DebugTime = CurTime() + 5
		if SERVER then
			print(self.Owner:Nick() .. " is targeting " .. Winner:Nick())
		end
	end
end

