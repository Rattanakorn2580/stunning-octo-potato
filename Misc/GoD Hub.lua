local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))() 
local Player = game.Players.LocalPlayer 
  local Window = OrionLib:MakeWindow({
		Name = "GoD Hub Key System",
		HidePremium = false,
		SaveConfig = true,
		ConfigFolder = "OrionTest",
        IntroText = "Loading..."       
})

function MakeScriptHub()
        local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "GoD Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "Loading... GoD Hub"})

local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-1000000, 1000000)), (math.random(10000, 50000)), (math.random(-1000000, 1000000)))
    SafeZoneOuterSpace.Anchored = true

local SafeZoneFarm = Instance.new("Part",game.Workspace)
    SafeZoneFarm.Name = "SafeZoneLightPart"
    SafeZoneFarm.Size = Vector3.new(30,2,30)
    SafeZoneFarm.Position = Vector3.new(-339, 3623, -641)
    SafeZoneFarm.Anchored = true

spawn(function() -- autofarm velocity
    while wait(0) do
        pcall(function()
            if AutoFish or AutoPack or AutoFarmM or FarmZom then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
            elseif  AutoFish == false or AutoPack == false or AutoFarmM == false or FarmZom == false then
                --if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                wait(1)
                --end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            end
        end)
    end
end)

local Cache = { DevConfig = {} };

Cache.DevConfig["ListOfMob"] = {"Cutie Noob", "Elite Noob", "Thug", "Evil Thug", "Snake", "Slime", "King Slime"};
Cache.DevConfig["ListOfNpc"] = {" "};
Cache.DevConfig["ListOfBoss"] = {"Cider+", "Cider", "Lemonade+", "Lemonade", "Juice+", "Juice", "Smoothie+", "Smoothie"};
Cache.DevConfig["ListOfSafeZone"] = {"SafeZone Sky", "SafeZone LightFarm"};
Cache.DevConfig["ListOfBox3"] = {"Rare Box", "Ultra Rare Box"};
Cache.DevConfig["ListOfIsland"] = {"Sand Castle","Not Worm","King Slime","Starter","Bar",
	                           "Cliffs","Windmill", "Cave","Krizma","Sam","Green","Trees",
	                           "Pyramid","Package","Snowy","Mountain","Marine Ford","Sand Castle",
	                           "Forest","Evil","Crescent","Islands","Town","Rocky","Palm","Sand",
	                           "Sand 2","Small","Tiny","Super Tiny","Grass","Atlar"};
Cache.DevConfig["ListOfMerchant"] = {"Rayleigh", "Better Drink", "Drink", "Flail", "QuestFish", "Krizma", "Sword", "Sniper", "Emote", "Affinity","Fish", "Expertise"};
Cache.DevConfig["ListOfAffinities"] = {"Devil Fruit ( Left )", "Devil Fruit ( Right )"};

local TabAuto = Window:MakeTab({
	Name = "Status",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabAuto:AddSection({
	Name = "Up Stats"
})

TabAuto:AddToggle({
	Name = "Auto Chara",
	Default = false,
	Callback = function(AFH)
		AutoFish = AFH
	end    
})

TabAuto:AddToggle({
	Name = "Auto Sans",
	Default = false,
	Callback = function(APK)
		AutoPack = APK
	end    
})

TabAuto:AddToggle({
	Name = "Auto Sickle",
	Default = false,
	Callback = function(AMS)
		AutoMission = AMS
	end    
})

TabAuto:AddToggle({
	Name = "Bring DF",
	Default = false,
	Callback = function(BDF)
		BringDF = BDF
	end    
})

local TabFarm = Window:MakeTab({
	Name = "Auto Farming",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabFarm:AddSection({
	Name = "Auto Farm Level"
})
	
TabFarm:AddDropdown({
	Name = "Choose Mob",
	Default = "",
	Options = Cache.DevConfig["ListOfMob"],
	Callback = function(SM)
		SelectMob = SM
	end    
})

TabFarm:AddToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(AFK)
		AutoFarm = AFK
	end    
})

local Section = TabFarm:AddSection({
	Name = "Other"
})

local Weaponlist = {}
local Weapon = nil

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    table.insert(Weaponlist,v.Name)
end

TabFarm:AddDropdown({
	Name = "Select Weapon",
	Default = "",
	Options = Weaponlist,
	Callback = function(WP)
		Weapon = WP
	end    
})

TabFarm:AddToggle({
	Name = "Auto Click",
	Default = false,
	Callback = function(ACK)
		AutoClicking = ACK
	end    
})

spawn(function() 
game:GetService("RunService").RenderStepped:Connect(function() 
pcall(function() 
if AutoClicking then 
game:GetService'VirtualUser':CaptureController() 
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) 
end 
end) 
end) 
end);

TabFarm:AddToggle({
	Name = "Auto Equip",
	Default = false,
	Callback = function(AEQ)
		_G.autoequip = AEQ
	end    
})

spawn(function() -- auto equip
    while wait(0) do
        pcall(function()
            if _G.autoequip then
                repeat
                    wait(0.05)
                    game:GetService 'Players'.LocalPlayer.Backpack[Weapon].Parent = game:GetService 'Players'.LocalPlayer.Character
                until game.Players.LocalPlayer.Character.Humanoid.Health == 0 or _G.autoequip == false
                if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                    game:GetService 'Players'.LocalPlayer.Character:FindFirstChildOfClass 'Humanoid':UnequipTools()
                end
            end
        end)
    end
end);

local TabNPC = Window:MakeTab({
	Name = "NPC",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabNPC:AddSection({
	Name = "Teleport To NPC"
})

TabNPC:AddDropdown({
	Name = "Choose NPC",
	Default = "",
	Options = Cache.DevConfig["ListOfNpc"],
	Callback = function(CT)
		getgenv().tpmerchant = CT
	end    
})

TabNPC:AddButton({
	Name = "Click To Tp",
	Callback = function()
        if getgenv().tpmerchant == "Random Fruity" then
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.QuestHakiMerchant.HumanoidRootPart.CFrame
	elseif getgenv().tpmerchant == "Better Drink" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1493, 260, 2171)
        elseif getgenv().tpmerchant == "Drink" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1282, 218, -1368)
        elseif getgenv().tpmerchant == "Flail" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1110, 217, 3369)
        elseif getgenv().tpmerchant == "QuestFish" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1702, 216, -325)
        elseif getgenv().tpmerchant == "Krizma" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1072, 361, 1669)
        elseif getgenv().tpmerchant == "Sword" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1005, 224, -3339)
        elseif getgenv().tpmerchant == "Sniper" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1843, 222, 3416)
        elseif getgenv().tpmerchant == "Emote" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1522, 265, 2165)
        elseif getgenv().tpmerchant == "Affinity" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(113, 278, 4952)
        elseif getgenv().tpmerchant == "Fish" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1983, 218, 566)
        elseif getgenv().tpmerchant == "Expertise" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(903, 270, 1219)
			end
  	end    
})

local Section = TabNPC:AddSection({
	Name = "Fruity Random"
})

TabNPC:AddTextbox({
	Name = "Amount Fruity",
	Default = "1",
	TextDisappear = true,
	Callback = function(AF)
		AmountFruity = AF
	end	  
})

TabNPC:AddButton({
	Name = "Random Fruity",
	Callback = function()
        if not AmountFruity or not string.match(AmountFruity, "%d+") or tonumber(string.match(AmountFruity, "%d+")) < 0 then return end;
        for _ = 1, tonumber(string.match(AmountFruity, "%d+")) do
game:GetService("ReplicatedStorage").Remote.RemoteEvent.Shop_Event:FireServer("Shop","Random Fruity","Money")
        end
  	end    
})

TabNPC:AddToggle({
	Name = "Auto Drop Fruity",
	Default = false,
	Callback = function(AFT)
		AutoDropFruity = AFT
	end    
})

spawn(function()
    while wait() do
        pcall(function()
            if not AutoDropFruity then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfFruity"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value.Parent = game.Workspace;
                end
            end
        end)
    end
end)

local TabSPM = Window:MakeTab({
	Name = "Auto Skill Fruity",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
	
local Section = TabSPM:AddSection({
	Name = "Auto Skill ( )"
})

TabSPM:AddToggle({
	Name = "Auto Skill ( )",
	Default = false,
	Callback = function(ASQ)
		_G.quake1 = ASQ
	end    
})

TabSPM:AddToggle({
	Name = "Auto Skill ( )",
	Default = false,
	Callback = function(ASL)
		_G.lightbeam = ASL
	end    
})

TabSPM:AddToggle({
	Name = "Auto Skill ( )",
	Default = false,
	Callback = function(FLA)
		_G.flare1 = FLA
	end    
})


TabSPM:AddToggle({
	Name = "Auto Skill ( )",
	Default = false,
	Callback = function(FLAA)
		_G.flare2 = FLAA
	end    
})

TabSPM:AddToggle({
	Name = "Auto Skill ( )",
	Default = false,
	Callback = function(DKS)
		_G.darkstar = DKS
	end    
})

local TabPlayer = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabPlayer:AddSection({
	Name = "Players"
})

local Plr = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Plr,v.Name)
end

TabPlayer:AddDropdown({
	Name = "Select Player",
	Default = "",
	Options = Plr,
	Callback = function(PP)
		SelectPlayer = PP
	end    
})

TabPlayer:AddButton({
	Name = "Click to Tp",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[SelectPlayer].Character.HumanoidRootPart.CFrame
  	end    
})

TabPlayer:AddToggle({
	Name = "Behind Player",
	Default = false,
	Callback = function(TP)
		Tpplr = TP
	end    
})

spawn(function()
    while wait() do
        if Tpplr then
            pcall(function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[SelectPlayer].Character.HumanoidRootPart.CFrame*CFrame.new(0,0,3)
            end)
        end
    end
end)

TabPlayer:AddToggle({
	Name = "Bring Player",
	Default = false,
	Callback = function(BPR)
		BringPlr = BPR
	end    
})

spawn(function()
    while wait() do
        if BringPlr then
            pcall(function()
                game.Players[SelectPlayer].Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-2.5)
            end)
        end
    end
end)

local TabLD= Window:MakeTab({
	Name = "Island",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabLD:AddSection({
	Name = "SafeZone"
})

TabLD:AddDropdown({
	Name = "Choose SafeZone",
	Default = "",
	Options = Cache.DevConfig["ListOfSafeZone"],
	Callback = function(CSF)
		getgenv().tpsafezone = CSF
	end    
})
	
TabLD:AddButton({
	Name = "Click To Tp",
	Callback = function()
        if getgenv().tpsafezone == "SafeZone Sky" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
	 elseif getgenv().tpsafezone == "SafeZone LightFarm" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneLightPart"].CFrame * CFrame.new(0, 5, 0)
			end
			end    
})
	
local Section = TabLD:AddSection({
	Name = "Teleport to Island"
})

TabLD:AddDropdown({
	Name = "Choose Island",
	Default = "",
	Options = Cache.DevConfig["ListOfIsland"],
	Callback = function(GIS)
		getgenv().tpisland = GIS
	end    
})

TabLD:AddButton({
	Name = "Click To Tp",
	Callback = function()
        if getgenv().tpisland == "Sand Castle" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2335, -8, 1347)
      elseif getgenv().tpisland == "Not Worm" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2319, 29, 438)
      elseif getgenv().tpisland == "King Slime"  then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1335, -28, -520)
      elseif getgenv().tpisland == "Starter" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1535, -28, -537)
      elseif getgenv().tpisland == "Bar" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1522, 260, 2188)
      elseif getgenv().tpisland == "Cliffs" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4598, 217, 4964)
      elseif getgenv().tpisland == "Windmill" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7, 224, -91)
      elseif getgenv().tpisland == "Cave" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-280, 217, -831)
      elseif getgenv().tpisland == "Krizma" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1109, 341, 1645)
      elseif getgenv().tpisland == "Sam" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1283, 218, -1348)
      elseif getgenv().tpisland == "Green" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2727, 253, 1041)
      elseif getgenv().tpisland == "Trees" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1068, 217, 3351)
      elseif getgenv().tpisland == "Pyramid" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(118, 216, 4773)
      elseif getgenv().tpisland == "Merlin Fish" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1668, 217, -300)
      elseif getgenv().tpisland == "Snowy" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1896, 222, 3385)
      elseif getgenv().tpisland == "Mountain" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2052, 488, -701)
      elseif getgenv().tpisland == "Marine Ford" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3164, 296, -3780)
      elseif getgenv().tpisland == "Sand Castle" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1020, 224, -3277)
      elseif getgenv().tpisland == "Forest" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5781, 216, 114)
      elseif getgenv().tpisland == "Evil" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5169, 523, -7803)
      elseif getgenv().tpisland == "Crescent" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3193, 357, 1670)
      elseif getgenv().tpisland == "Islands" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4319, 245, 5252)
      elseif getgenv().tpisland == "Town" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1818, 218, 755)
      elseif getgenv().tpisland == "Rocky" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-37, 229, 2149)
      elseif getgenv().tpisland == "Palm" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(766, 216, -1374)
      elseif getgenv().tpisland == "Sand" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2747, 216, -942)
      elseif getgenv().tpisland == "Sand 2" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(162, 216, -2265)
      elseif getgenv().tpisland == "Small" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1237, 240, -244)
      elseif getgenv().tpisland == "Tiny" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1235, 223, 623)
      elseif getgenv().tpisland == "Super Tiny" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4007, 216, -2190)
      elseif getgenv().tpisland == "Grass" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2096, 217, -1884)
      elseif getgenv().tpisland == "Atlar" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Altar.RecepticalEffect.CFrame * CFrame.new(0, 5, 0)
			end
  	end    
})

local TabMS = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = TabMS:AddSection({
	Name = "Sever"
})

TabMS:AddButton({
	Name = "Rejoin Server",
	Callback = function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId) 
  	end    
})

TabMS:AddButton({
	Name = "Hop Server",
	Callback = function()
        local PlaceID = game.PlaceId
          local AllIDs = {}
          local foundAnything = ""
          local actualHour = os.date("!*t").hour
          local Deleted = false
          --[[
          local File = pcall(function()
              AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
          end)
          if not File then
              table.insert(AllIDs, actualHour)
              writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
          end
          ]]
          function TPReturner()
              local Site;
              if foundAnything == "" then
                  Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
              else
                  Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
              end
              local ID = ""
              if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                  foundAnything = Site.nextPageCursor
              end
              local num = 0;
              for i,v in pairs(Site.data) do
                  local Possible = true
                  ID = tostring(v.id)
                  if tonumber(v.maxPlayers) > tonumber(v.playing) then
                      for _,Existing in pairs(AllIDs) do
                          if num ~= 0 then
                              if ID == tostring(Existing) then
                                  Possible = false
                              end
                          else
                              if tonumber(actualHour) ~= tonumber(Existing) then
                                  local delFile = pcall(function()
                                      -- delfile("NotSameServers.json")
                                      AllIDs = {}
                                      table.insert(AllIDs, actualHour)
                                  end)
                              end
                          end
                          num = num + 1
                      end
                      if Possible == true then
                          table.insert(AllIDs, ID)
                          wait()
                          pcall(function()
                              -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                              wait()
                              game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                          end)
                          wait(4)
                      end
                  end
              end
          end

          function Teleport()
              while wait() do
                  pcall(function()
                      TPReturner()
                      if foundAnything ~= "" then
                          TPReturner()
                      end
                  end)
              end
          end

          Teleport()

  	end    
})

TabMS:AddButton({
	Name = "Anti Lag",
	Callback = function()
	if not gethui then
    warn("Incompatible executor: gethui is unavailable")
    return
end

local runService = game:GetService("RunService")
local lighting = game:GetService("Lighting")

local fpsCounterGui = Instance.new("ScreenGui", gethui())
local fpsLabel = Instance.new("TextLabel", fpsCounterGui)

fpsCounterGui.Name = "FpsCounterGui"
fpsCounterGui.IgnoreGuiInset = true
fpsLabel.Name = "FpsLabel"
fpsLabel.BackgroundTransparency = 1
fpsLabel.Position = UDim2.new(1, -100, 0, 0)
fpsLabel.Size = UDim2.new(0, 100, 0, 30)
fpsLabel.Text = ""
fpsLabel.TextSize = 16
fpsLabel.TextStrokeTransparency = 0.6
fpsLabel.Draggable = true

local function GetFPS(delay)
    local startTime = tick()
    local frames = 0
    local heartbeatConnection = runService.Heartbeat:Connect(function()
        frames = frames + 1
    end)
    task.wait(delay)
    heartbeatConnection:Disconnect()
    local elapsedTime = tick() - startTime
    local fps = frames / elapsedTime
    return math.ceil(fps)
end

task.spawn(function()
    while true do
        local fps = GetFPS(0.5)
        if fps >= 60 then
            fpsLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
        elseif fps <= 59 and fps > 50 then
            fpsLabel.TextColor3 = Color3.fromRGB(255, 170, 0)
        elseif fps <= 49 and fps > 30 then
            fpsLabel.TextColor3 = Color3.fromRGB(255, 85, 0)
        elseif fps <= 29 then
            fpsLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
        end
        fpsLabel.Text = tostring(fps) .. " FPS"
    end
end)

lighting.GlobalShadows = false
lighting.FogEnd = 9e9
lighting.EnvironmentDiffuseScale = 0.5
lighting.EnvironmentSpecularScale = 0.5

for _, descendant in ipairs(game:GetDescendants()) do
    if descendant:IsA("BasePart") then
        descendant.CastShadow = false
        descendant.Material = Enum.Material.SmoothPlastic
        descendant.Reflectance = 0
        if descendant:IsA("MeshPart") then
            descendant.CollisionFidelity = Enum.CollisionFidelity.Box
        end
    end
    if descendant:IsA("Decal") or descendant:IsA("Texture") then
        if descendant.Transparency > 0.25 then
            descendant.Transparency = 0.25
        end
    end
    if descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
        descendant.Lifetime = NumberRange.new(0)
    end
end
  	end    
})

end

OrionLib:MakeNotification({
	Name = "Logged In!",
	Content = "You need key "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

getgenv().Key = "4578" 
getgenv().KeyInput = "string" 

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
}) --Making A Tab

Tab:AddTextbox({
	Name = "Key",
	Default = "Enter Key.",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().KeyInput = Value
	end	  
}) 

Tab:AddButton({
    Name = "Check Key",
    Callback = function()
        if getgenv().KeyInput == getgenv().Key then
            OrionLib:MakeNotification({
                Name = "Checking Key",
                Content = "Checking The Key You Entered",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(2)
            OrionLib:MakeNotification({
                Name = "Correct Key!",
                Content = "The key you entered is Correct.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(1)
            OrionLib:Destroy()
            wait(.3)
            MakeScriptHub()
        else
           OrionLib:MakeNotification({
                Name = "Checking Key",
                Content = "Checking The Key You Entered",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(2)
            OrionLib:MakeNotification({
                Name = "Incorrect Key!",
                Content = "The key you entered is incorrect.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

Tab:AddButton({
	Name = "ช่องทางการติดต่อ",
	Callback = function()
      		setclipboard("facebook: Bank Kesee")
  	end    
}) 
    
OrionLib:Init()
