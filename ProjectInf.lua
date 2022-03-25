local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/NiceBBMBThai12/NBTScript/main/UI-Library-Robloxx"))()
local window = library:Win("Kimu X Hub")
local tap1 = window:addtap("Test")

local page1 = tap1:addpage()
page1:Toggle("Walk on Water",false,function(hee)
_G.Water = hee
end)

spawn(function()
    pcall(function()
        while game:GetService("RunService").Heartbeat:wait() do
            if _G.Water then
                if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                    if not game:GetService("Workspace"):FindFirstChild("Water") then
                        local Water = Instance.new("Part", game.Workspace)
                        Water.Name = "Water"
                        Water.Size = Vector3.new(10,0.5,10)
                        Water.Transparency = 0.8
                        Water.Anchored = true
                        game:GetService("Workspace").Water.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    else
                        game:GetService("Workspace").Water.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    end
                elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y >= 1 and game:GetService("Workspace"):FindFirstChild("Water") then
                    game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
                end
            else
                if game:GetService("Workspace"):FindFirstChild("Water") then
                    game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
                end
            end
        end
    end)
end)
page1:Toggle("inf Ability",false,function(inf)
    InfAbility = inf
end)
    
function InfAb()
	if InfAbility then
		if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
			local inf = Instance.new("ParticleEmitter")
			inf.Acceleration = Vector3.new(0,0,0)
			inf.Archivable = true
			inf.Drag = 20
			inf.EmissionDirection = Enum.NormalId.Top
			inf.Enabled = true
			inf.Lifetime = NumberRange.new(0.2,0.2)
			inf.LightInfluence = 0
			inf.LockedToPart = true
			inf.Name = "Agility"
			inf.Rate = 500
			local numberKeypoints2 = {
				NumberSequenceKeypoint.new(0, 0);  -- At t=0, size of 0
				NumberSequenceKeypoint.new(1, 4); -- At t=1, size of 10
			}

			inf.Size = NumberSequence.new(numberKeypoints2)
			inf.RotSpeed = NumberRange.new(999, 9999)
			inf.Rotation = NumberRange.new(0, 0)
			inf.Speed = NumberRange.new(30, 30)
			inf.SpreadAngle = Vector2.new(360,360)
			inf.Texture = "rbxassetid://243098098"
			inf.VelocityInheritance = 0
			inf.ZOffset = 2
			inf.Transparency = NumberSequence.new(0)
			inf.Color = ColorSequence.new(Color3.fromRGB(0, 255, 255),Color3.fromRGB(0, 255, 255))
			inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		end
	else
		if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
			game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
		end
	end
end

spawn(function()

        while wait() do
    
            if InfAbility then
    
                InfAb()
    
            end
    
        end
    
    end)
    function NoSoruCool()
        for i, v in pairs(getgc()) do
            if type(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Soru") then
                for i2,v2 in pairs(debug.getupvalues(v)) do
                    if type(v2) == 'table' then
                        if v2.LastUse then
                            repeat wait()
                                setupvalue(v, i2, {LastAfter = 0,LastUse = 0})
                            until not Sorunocool
                        end
                    end
                end
            end
        end
    end
    page1:Toggle("Soru No Cooldown",false,function(sorurrrrrrrr)
        Sorunocool = sorurrrrrrrr
        NoSoruCool()
    end)
    nododgecool = false
function NoDodgeCool()
    if nododgecool then
        for i,v in next, getgc() do
            if game.Players.LocalPlayer.Character.Dodge then
                if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
                    for i2,v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.4" then
                            repeat wait(.1)
                                setupvalue(v,i2,0)
                            until not nododgecool
                        end
                    end
                end
            end
        end
    end
end
function NoGeppoCool()
    if noGeppocool then
        for i,v in next, getgc() do
            if game.Players.LocalPlayer.Character.Geppo then
                if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Geppo then
                    for i2,v2 in next, getupvalues(v) do
                        if tostring(v2) == "0" then
                            repeat wait(.1)
                                setupvalue(v,i2,0)
                            until not noGeppocool
                        end
                    end
                end
            end
        end
    end
end
page1:Toggle("No Jump Cooldown",false,function(aaaaahhhhhhhhh)
    noGeppocool = aaaaahhhhhhhhh
    NoGeppoCool()
end)
page1:Toggle("No Doge cooldown",false,function(Dogeeee)
    nododgecool = Dogeeee
    NoDodgeCool()
end)
Fly = false  
function activatefly()
	local mouse = game.Players.LocalPlayer:GetMouse''
	localplayer = game.Players.LocalPlayer
	game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
	local speedSET = 25
	local keys = {a = false, d = false, w = false, s = false}
	local e1
	local e2
	local function start()
		local pos = Instance.new("BodyPosition",torso)
		local gyro = Instance.new("BodyGyro",torso)
		pos.Name="EPIXPOS"
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.position = torso.Position
		gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		gyro.cframe = torso.CFrame
		repeat wait()
			localplayer.Character.Humanoid.PlatformStand = true
			local new = gyro.cframe - gyro.cframe.p + pos.position
			if not keys.w and not keys.s and not keys.a and not keys.d then
			   speed = 1
			end
			if keys.w then
			   new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
			   speed = speed+speedSET
			end
			if keys.s then
			   new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
			   speed = speed+speedSET
			end
			if keys.d then
			   new = new * CFrame.new(speed,0,0)
			   speed = speed+speedSET
			end
			if keys.a then
			   new = new * CFrame.new(-speed,0,0)
			   speed = speed+speedSET
			end
			if speed > speedSET then
			   speed = speedSET
			end
			   pos.position = new.p
			   if keys.w then
				   gyro.cframe = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad(speed*15),0,0)
				elseif keys.s then
				   gyro.cframe = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(math.rad(speed*15),0,0)
				else
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame
			end
	   	until not Fly
		if gyro then 
			gyro:Destroy() 
		end
		if pos then 
			pos:Destroy() 
		end
		flying = false
		localplayer.Character.Humanoid.PlatformStand = false
		speed = 0
	end
	e1 = mouse.KeyDown:connect(function(key)
		if not torso or not torso.Parent then 
			flying = false
			e1:disconnect()
			e2:disconnect()
			return 
		end
		if key == "w" then
			keys.w = true
		elseif key == "s" then
			keys.s = true
		elseif key == "a" then
			keys.a = true
		elseif key == "d" then
			keys.d = true
		end
	end)
	e2 = mouse.KeyUp:connect(function(key)
		if key == "w" then
			keys.w = false
		elseif key == "s" then
			keys.s = false
		elseif key == "a" then
			keys.a = false
		elseif key == "d" then
			keys.d = false
		end
	end)
	start()
end

page1:Toggle("Fly", false, function(fly)
   Fly = fly
   activatefly()
end)
