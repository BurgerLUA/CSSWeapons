ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "HE GRENADE"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false 

AddCSLuaFile()

function ENT:Initialize()

	if SERVER then
	
		self:SetModel("models/weapons/w_c4_planted.mdl") 
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

		self:SetUseType(CONTINUOUS_USE)
	
		local phys = self:GetPhysicsObject()
		if phys:IsValid() then
			phys:Wake()
			phys:SetBuoyancyRatio(0)
			--phys:EnableMotion(false)
			--phys:EnableCollisions(false)
		end
		
		
	
		self.Delay = CurTime() + 45
		self.First = true
		self.NextBeep = 0
		self.BeepLatch = 0
		self.DebugDelay = 0
		
		--print(Entity(0))
		
		--self:SetParent(Entity(0))
		
		self.NextTick = 0
		self.Progress = 0
		self.StopEverytingOhGod = false
		self.SendMessage = true

		
	end
	
	
end

function ENT:PhysicsCollide(data, physobj)

	if SERVER then
	
		self:SetMoveType(MOVETYPE_NONE)
	
	
		self.HitP = data.HitPos
		self.HitN = data.HitNormal
		
		if self:GetVelocity():Length() > 50 then
			self:EmitSound("weapons/hegrenade/he_bounce-1.wav",100,100)
		end
		
	end
	
end

function ENT:Use(activator,caller,useType,value)
 
	if self.Progress == 0 then
		self:EmitSound("items/ammopickup.wav",100,100)
		self:SetNWBool("defusing",true)
	end
	
	
	if ( activator:IsPlayer() ) then
		if self.NextTick <= CurTime() then
			self.Progress = self.Progress + 0.05
			self.NextTick = CurTime() + 0.05
		end

	self:SetNWInt("defusecount",self.Progress*10)	
		
		
	else
		--print("WHAT ARE YOU")
	end
 

 
 
end


function ENT:Think()
	if SERVER then
	
		if self.Progress >= 10 then
		
			if self.SendMessage == true then
				for n,p in pairs(player.GetAll()) do
					--print(p:Nick())
				
					p:PrintMessage(HUD_PRINTCENTER,"Bomb has been defused")
					p:SendLua("LocalPlayer():EmitSound(\"radio/bombdef.wav\")")
				
				
					timer.Simple(2, function()
						p:PrintMessage(HUD_PRINTCENTER,"Counter-Terrorists Win")
						p:SendLua("LocalPlayer():EmitSound(\"radio/ctwin.wav\")")
					end)
				
				end
				self.SendMessage = false
			end
		
		
			self.StopEverytingOhGod = true
		end
		
		if self.StopEverytingOhGod == true then
			SafeRemoveEntityDelayed(self,5)
		return end
	
		if CurTime() > self.Delay then 
			self:Detonate(self,self:GetPos())
		end
	
	
		local BeepMod = self.Delay - CurTime()
	
		if self.NextBeep <= CurTime() then
			self:EmitSound("weapons/c4/c4_beep1.wav")
			self:SetNWBool("beep",true)
			self.NextBeep = BeepMod/15 + CurTime()
			self.BeepLatch = BeepMod/30 + CurTime()
		end
	
		if self.BeepLatch <= CurTime() then
			self:SetNWBool("beep",false)
		end
	end
end

function ENT:Detonate(self,pos)
	if SERVER then
		if not self:IsValid() then return end
		local effectdata = EffectData()
			effectdata:SetStart( pos + Vector(0,0,100)) // not sure if we need a start and origin (endpoint) for this effect, but whatever
			effectdata:SetOrigin( pos)
			effectdata:SetScale( 100 )
			effectdata:SetRadius( 5000 )
		util.Effect( "HelicopterMegaBomb", effectdata )	
		--util.Effect( "Explosion", effectdata)
	

		util.BlastDamage(self, self:GetNWEntity("owner"), pos, 1000,1000)
	
	
		for i = 1, 50 do
			local ent = ents.Create("ent_cs_smokeparticle")
				ent:SetPos(self:GetPos())
				ent:SetAngles(Angle(0,0,0))
				ent:Spawn()
				ent:Activate()
				ent:SetOwner(self.Owner)
				ent:GetPhysicsObject():SetVelocity(Vector(math.Rand(-2500,2500),math.Rand(-2500,2500),math.Rand(0,25)))
				if i == 2 then
					timer.Simple(1, function()
						ent:EmitSound("weapons/c4/c4_exp_deb2.wav",100,100)
					end)
				end
		end
	
		self:EmitSound("weapons/c4/c4_explode1.wav",100,100)
		
	
		if table.Count(ents.FindInSphere(self:GetPos(),1000)) > 0 then
			for k,v in pairs(ents.FindInSphere(self:GetPos(),1000)) do
		
				if v:GetClass() == "prop_physics" then
		
					if math.Rand(0,100) >= 70 then
						local ignitetime = (1000 - v:GetPos():Distance( self:GetPos() ))/250
						v:Ignite(ignitetime,5)
					end
			
					timer.Simple(0,function() 
						if v:IsValid() == false then return end
						constraint.RemoveAll(v)
						v:GetPhysicsObject():EnableMotion(true)
						v:GetPhysicsObject():Wake()
					end)

				end
		
			end

		end
	
		for n,p in pairs(player.GetAll()) do
			--print(p:Nick())
			p:PrintMessage(HUD_PRINTCENTER,"Terrorists Win")
			p:SendLua("LocalPlayer():EmitSound(\"radio/terwin.wav\")")
		end
	
		self:Remove()
	end
end

local mat = Material("sprites/redglow1")

function ENT:Draw()
	if CLIENT then
		self:DrawModel()
		
		local Size = 100
		local Var = Size - self:GetNWInt("defusecount",0)
		
		
		--cam.Start3D2D( self:GetPos() + self:GetUp()*9 + self:GetForward()*3 + self:GetRight()*4.5, self:GetAngles() + Angle(0,-90,0), 1/20 ) -- for progressbar
		cam.Start3D2D( self:GetPos() + self:GetUp()*9 + self:GetForward()*3.5 + self:GetRight()*2, self:GetAngles() + Angle(0,-90,0), 0.125 )	
			
			
			--[[

		
		
			
		
			--				box	x			y			width	height	color
			draw.RoundedBox( 0, -Size/2 - 0, -Size/20 - 0, Size + 2, Size/10 + 2, Color(255,255,255) ) -- border
			
			draw.RoundedBox( 0, -Size/2 + 1, -Size/20 + 1, Var, Size/10, Color(255,0,0) ) -- actual
			]]--
			
			--800813
			
			rand1 = math.random(0,9)
			rand2 = math.random(0,9)
			rand3 = math.random(0,9)
			rand4 = math.random(0,9)
			rand5 = math.random(0,9)
			rand6 = math.random(0,9)
			
			
			
			if Var >= (Size/6)*5 then
				text = rand1 .. rand2.. rand3 .. rand4 .. rand5 .. rand6
			elseif Var >= (Size/6)*4 then
				text = "8" .. rand2.. rand3 .. rand4 .. rand5 .. rand6
			elseif Var >= (Size/6)*3 then
				text = "8" .. "0" .. rand3 .. rand4 .. rand5 .. rand6
			elseif Var >= (Size/6)*2 then
				text = "8" .. "0" .. "0" .. rand4 .. rand5 .. rand6
			elseif Var >= (Size/6)*1 then
				text = "8" .. "0" .. "0" .. "8" .. rand5 .. rand6
			elseif Var >= 0 then
				text = "8" .. "0" .. "0" .. "8" .. "1" .. rand6
			else
				text = "8" .. "0" .. "0" .. "8" .. "1" .. "3"
			end
			
			
			if self:GetNWBool("defusing",false) == true then
				draw.SimpleText( text, "DebugFixed", 0, 0, Color(255,0,0,255), 0, 0 )
			end
			
		cam.End3D2D()
		
	
		if self:GetNWBool("beep",false) == true then

			cam.Start3D(EyePos(),EyeAngles())
				render.SetMaterial( mat )
				render.DrawSprite( self:GetPos() + self:GetUp()*10, 32, 32, Color(255,0,0,255))
			cam.End3D()
			--print("beep")
		end
	end
end