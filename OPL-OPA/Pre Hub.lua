local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Pre Hub", "DarkTheme")

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
Toggle.Text = "Tutorial"
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248)
Toggle.TextSize = 28.000
Toggle.Draggable = true
Toggle.MouseButton1Click:connect(function()
    Library:ToggleUI()
end)
 
local Corner = Instance.new("UICorner")
Corner.Name = "Corner"
Corner.Parent = Toggle

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

local Cache = { DevConfig = {} };

Cache.DevConfig["ListOfBox1"] = {"Common Box"};
Cache.DevConfig["ListOfBox2"] = {"Uncommon Box"};
Cache.DevConfig["ListOfDrink"] = {"Cider+", "Cider", "Lemonade+", "Lemonade", "Juice+", "Juice", "Smoothie+", "Smoothie"};
Cache.DevConfig["ListOfSafeZone"] = {"SafeZone Sky", "SafeZone LightFarm"};
Cache.DevConfig["ListOfBox3"] = {"Rare Box", "Ultra Rare Box"};
Cache.DevConfig["ListOfIsland"] = {"Grassy","Kaizu","Snow Mountains","Pursuer Boss","Bar",
	                           "Cliffs","Windmill", "Cave","Krizma","Sam","Green","Trees",
	                           "Pyramid","Package","Snowy","Mountain","Marine Ford","Sand Castle",
	                           "Forest","Evil","Crescent","Islands","Town","Rocky","Palm","Sand",
	                           "Sand 2","Small","Tiny","Super Tiny","Grass","Atlar"};
Cache.DevConfig["ListOfAffinities"] = {"Devil Fruit ( Left )", "Devil Fruit ( Right )"};

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

local mta = getrawmetatable(game)
local namecall = mta.__namecall
local setreadonly = setreadonly or make_writable


setreadonly(mta, false)

mta.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local arguments = args
    local a = {}
    for i = 1, #arguments - 1 do
        a[i] = arguments[i]
    end
    local method = getnamecallmethod() 

    if method == 'FireServer' or method == "InvokeServer" then
        if self.Name == 'Drown' and _G.nowaterdamage then
            if args[1] then
                return nil
            end
        end
    end
    
    return namecall(self, ...)    
end);

aaxc = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        if self.Name == "RemoteEvent" and args[3] == "StopCharging" and skillmax then
            args[6] = 100
            return aaxc(self, unpack(args))
        end
    end
    return aaxc(self, ...)
end);

local remotes = {}
    local azc
    azc=hookmetamethod(game,"__namecall",function(self,...)
        local args = {...}
        local method = getnamecallmethod()
        if method == "FireServer" or method == "InvokeServer" then
            if self.Name == "RemoteEvent" and args[3] == "StopCharging" then
                remotes[self.Name] = args[1]
                return azc(self,unpack(args))
            end
        end
          return azc(self,...)
    end)

local attackremote = {}    

local a
a=hookmetamethod(game,"__namecall",function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        if self.Name == "RequestAnimation" and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
            attackremote[self.Name] = args[1]
            return a(self,unpack(args))
        elseif self.Name == "RequestAnimation" and game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
            attackremote[self.Name] = ""
        end
    end
      return a(self,...)
end)

function serializeTable(val, name, skipnewlines, depth)
    skipnewlines = skipnewlines or false
    depth = depth or 0
 
    local tmp = string.rep("", depth)
 
    if name then tmp = tmp end
 
    if type(val) == "table" then
        tmp = tmp .. (not skipnewlines and "" or "")
 
        for k, v in pairs(val) do
            tmp =  tmp .. serializeTable(v, k, skipnewlines, depth + 1) .. (not skipnewlines and "" or "")
        end
 
        tmp = tmp .. string.rep("", depth) 
    elseif type(val) == "number" then
        tmp = tmp .. tostring(val)
    elseif type(val) == "string" then
        tmp = tmp .. string.format("%q", val)
    elseif type(val) == "boolean" then
        tmp = tmp .. (val and "true" or "false")
    elseif type(val) == "function" then
        tmp = tmp  .. "func: " .. debug.getinfo(val).name
    else
        tmp = tmp .. tostring(val)
    end
 
    return tmp
 end

local Tab = Window:NewTab("Autos")
local Section = Tab:NewSection("Auto Respawn")

Section:NewToggle("Auto Respawn", "Auto Spawn", function(ARP)
    _G.autorespawn = ARP
       spawn(function()
    while wait() do
        if _G.autorespawn then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Visible == true then
                    for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Load.MouseButton1Click)) do
                        v.Function()
                    end
                end
            end)
        end
    end
end)
end)

local Section = Tab:NewSection("Auto function | All |")

Section:NewToggle("Auto Fishing", "Auto Fishing", function(AFS)
    AutoFish = AFS
    spawn(function()
    while wait(0) do
        pcall(function()
            if AutoFish then
                wait(0.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20000, 218, 20000)
                wait(0.5)
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if string.find(v.Name, "Rod") then
                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if string.find(v.Name, "Rod") then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                            end
                        end
                    end
                end
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if string.find(v.Name, "Rod") then
                        for _, x in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if string.find(x.Name, "Rod") then
                                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                                    if v:FindFirstChild("Bobber") then
                                        if v.Bobber.Effect.Enabled == true then
                                            wait(0.6)
                                            local args = {
                                                [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                                            }
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
                                        end
                                    elseif v.Name == "Cast" and not v:FindFirstChild("Bobber") then
                                        wait(0.6)
                                        local args = {
                                            [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                                        }
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
                                        workspace:WaitForChild("Merchants"):WaitForChild("FishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
                                    end
                                end
                            end
                        end
                    end
                end       
            end
        end)
    end
end)
end)

Section:NewToggle("Auto Package", "Auto Package", function(APK)
    AutoPack = APK
       spawn(function()
    while wait() do
        pcall(function()
         if AutoPack then
            wait(0.6)
                game.workspace:WaitForChild("Merchants"):WaitForChild("QuestFishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
            wait(0.001)
             local playernameuser = game.Players.LocalPlayer.Name
            if  game.Players.LocalPlayer.Backpack:FindFirstChild("Package") or game.Players.LocalPlayer.Character:FindFirstChild("Package") or game.workspace.playernameuser:FindFirstChild("Package") then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.AffinityMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat1Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat2Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants:GetChildren()[16].HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat3Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat4Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.DrinkMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.BetterDrinkMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.ExpertiseMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.SniperMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1549, 264, 2136)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.SwordMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.KrizmaMerch.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.FishMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.FlailMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.FriendMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.HeavyWeaponsMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.QuestMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.EmoteMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))      
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2610, 254, 1114)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))      
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1982, 218, 567)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))      
            end
        end
        end)
    end
end)
end)

Section:NewToggle("Auto Claim Mission", "Claim Expertive", function(miss)
    AutoMission = miss
spawn(function()
while wait() do 
if AutoMission then 
pcall(function() 
workspace.Merchants.ExpertiseMerchant.Clickable.Retum:FireServer()
end) 
end 
end 
end)
end)

Section:NewToggle("Bring Devil Fruit", "Steal Fruit", function(BF)
    BringDF = BF
       spawn(function()
    while wait() do
        if BringDF then
            pcall(function()
                for i,v in pairs(game.Workspace.Trees.Tree.Model:GetChildren()) do 
                    if v.ClassName == "Tool" then 
                        fireclickdetector(v.Main.ClickDetector)
                    end
                end
            end)
        end
    end
 end)
end)

Section:NewToggle("Claim Gift | Beri |", "Auto Claim Gift Money", function(ACB)
    _G.autoclaimberi = ACB
       spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autoclaimberi then
local A_1 = "RewardMark"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ClaimRewardHourly
    Event:FireServer(A_1)
            end
        end)
    end
end)
end)

Section:NewToggle("Claim Gift | Gems |", "Auto Claim Gift Gems", function(ACG)
    _G.autoclaimgem = ACG
       spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autoclaimgem then
local A_1 = "RewardMark"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ClaimRewardDaily
    Event:FireServer(A_1)
            end
        end)
    end
end)
end)

Section:NewToggle("Claim Challenges", "Auto Claim Challenges", function(clm)
    _G.autoclaim = clm
       spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Daily1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Daily2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Daily3"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Daily4"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
            end
        end)
    end
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Weekly1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Weekly2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Weekly3"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
            end
        end)
    end
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Monthly1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Monthly2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
            end
        end)
    end
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Challenge1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge3"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge4"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge5"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge6"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge7"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge8"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge9"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge10"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge11"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge12"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge13"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
local A_1 = "Claim"
local A_2 = "Challenge14"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait(.8)
            end
        end)
    end
end)
end)

local Section = Tab:NewSection("Haki Training")

Section:NewToggle("Auto Haki | Slow |", "Auto Farm Haki Slow!!!", function(hk)
    AutoHaki1 = hk
       spawn(function()
    while wait() do
        pcall(function()
            if AutoHaki1 then
                for i = 1, 2 do
                    local args = {
                        [1] = "On",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
		local args = {
                        [1] = "On",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
		local args = {
                        [1] = "On",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
		local args = {
                        [1] = "On",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
		local args = {
                        [1] = "On",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
		end
            end
        end)
    end
end)
end)

Section:NewToggle("Auto Haki | Very Fast |", "Auto Farm Haki Very Fast!!!", function(hkk)
    AutoHaki2 = hkk
       game:GetService('RunService').RenderStepped:connect(function()
    if AutoHaki2 then
        for i = 1, 100 do
            local args = {
                [1] = "On",
                [2] = 1
            }
            task.wait(0.1)
            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
        end
    end
end)
end)

local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Farm Mob")

Section:NewToggle("Auto Farm | All |", "Auto Farm Mob All", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

Section:NewToggle("Bring Mob | All |", "Bring Mob All", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

local Section = Tab:NewSection("Items")
local Weaponlist = {}
local Weapon = nil

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    table.insert(Weaponlist,v.Name)
end

Section:NewDropdown("Choose Weapon","Select Weapon", Weaponlist, function(currentOption)
Weapon = currentOption
end)

Section:NewToggle("Auto Click", "Auto Click", function(CKK)
    AutoClicking = CKK
       spawn(function() 
game:GetService("RunService").RenderStepped:Connect(function() 
pcall(function() 
if AutoClicking then 
game:GetService'VirtualUser':CaptureController() 
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) 
end 
end) 
end) 
end)
end)

Section:NewToggle("Auto Equip", "Auto equip item", function(AEQ)
    _G.autoequip = AEQ
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
end)
end)

local Section = Tab:NewSection("Auto Farm Fruity")
Section:NewToggle("Auto Stats", "Auto Farm Stats", function(AST)
    AutoStats = AST
       
spawn(function()
    while wait() do
        pcall(function()
            if AutoStats then
                wait(1)
                for i, v in pairs(game:GetService("Workspace").Island8.Kitchen:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)
    end
end)


spawn(function()
    while wait() do
        pcall(function()
            if AutoStats then
                for a, h in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if h:IsA("Tool") and string.find(h.Name, "Juice") or string.find(h.Name, "Milk") or
                    string.find(h.Name, "Cider") or string.find(h.Name, "Lemonade") or
                    string.find(h.Name, "Smoothie") or string.find(h.Name, "Golden") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(h)
                        game:GetService 'VirtualUser':CaptureController()
                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if AutoStats then
                wait(.5)
                for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
                for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
    pcall(function()
        if AutoStats then
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            local PopperClient = LocalPlayer:WaitForChild("PlayerScripts").PlayerModule.CameraModule.ZoomController.Popper
            
            for i, v in next, getgc() do
                if getfenv(v).script == PopperClient and typeof(v) == "function" then
                    for i2, v2 in next, debug.getconstants(v) do
                        if tonumber(v2) == 0.25 then
                            debug.setconstant(v, i2, 0)
                       -- elseif tonumber(v2) == 0 then
                           -- debug.setconstant(v, i2, 0.25)
                        end
                    end
                end
            end
            --Barrels
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12, 216, -351)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4, 216, -378)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-114, 216, -750)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-133, 216, -710)
            wait(.5)
    
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-204, 224, -206)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1754, 217, -327)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1706, 217, -326)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1754, 216, -217)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1550, 217, -307)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1494, 217, -306)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1493, 217, -290)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1871, 218, 823)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1858, 218, 814)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1882, 219, 838)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1989, 235, 568)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1970, 219, 576)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1989, 218, 561)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1981, 217, 553)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1517, 217, -289)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1186, 217, -285)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1173, 217, -286)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1009, 220, 3342)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2601, 254, 1111)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2618, 254, 1110)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(989, 224, -3337)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916, 216, 3409)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(882, 218, 3364)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1167, 219, 3228)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(987, 224, -3337)
            wait(.5)
            --[[
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(987, 224, -3337)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1072, 224, -3429)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1195, 224, -3372)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1238, 224, -3231)
            wait(1.5)]]
            for i,v in pairs(game.Workspace:GetChildren()) do 
                if v.ClassName == "Tool" then
                    v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
            wait(1.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1193, 216, 630)
            wait(5)
            end
        end)
    end
end)
end)
	
local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Player")
Plr = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Plr,v.Name) 
end
local drop = Section:NewDropdown("Choose Player", "", Plr, function(plr)
   SelectPlr = plr
end)

Section:NewButton("Click To TP", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[SelectPlr].Character.HumanoidRootPart.CFrame
end)

Section:NewToggle("View Player", "Look Player", function(viewplr)
    Sp = viewplr    
local plr1 = game.Players.LocalPlayer.Character.Humanoid
local plr2 = game.Players:FindFirstChild(SelectPlr)
    repeat wait(0)
        game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
    until Sp == false or plr2.Character.Humanoid.Health == 0
    if Sp == false or plr2.Character.Humanoid.Health ~= 0 then
        game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
			end
end)
Section:NewToggle("Bring Player", "", function(ABP)
_G.bringplr = ABP
while _G.bringplr do wait()
game.Players[SelectPlr].Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-5)
end
end)

local Section = Tab:NewSection("Player Kill")

Section:NewToggle("Cannon Kill Player", "Auto Kill Player Cannon Ball", function(acnn)
    _G.autocannonplr = acnn
       spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannonplr then
                local toolname = "Cannon Ball"
                local Plr = game:GetService("Players").LocalPlayer
                wait(0.75)
                if Plr.Backpack:FindFirstChild(toolname) and not Plr.Character:FindFirstChild(toolname) and not Plr.Character:FindFirstChildOfClass("Tool") then
                    local tool = Plr.Backpack:FindFirstChild(toolname)
                    Plr.Character.Humanoid:EquipTool(tool)
                    wait(0.75)
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannonplr then
                local args = {
                    [1] = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
                }
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cannon Ball").RemoteEvent:FireServer(unpack(args))
                wait(0)
                local args = {
                    [1] = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
                }
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cannon Ball").RemoteEvent:FireServer(unpack(args))
                wait(0)
                if game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:FindFirstChild("CannonBall") then
                    game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:FindFirstChild("CannonBall").CanCollide = false
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannonplr then
                repeat task.wait(0)
                    for i, v in pairs(game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:GetChildren()) do
                        if v.Name == "CannonBall" then
                            v.CFrame = game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(0, 2, -15)
                            v.CanCollide = false
                            if not v:FindFirstChild("BodyClip") then
                                local Noclip = Instance.new("BodyVelocity")
                                Noclip.Name = "BodyClip"
                                Noclip.Parent = v
                                Noclip.MaxForce = Vector3.new(100000,100000,100000)
                                Noclip.Velocity = Vector3.new(0,20,0)
                            end
                        end
                    end
                until _G.autocannon == false or _G.autocannonplr == false or game.Players.LocalPlayer.Character.Humanoid.Health == 0
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannonplr and game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                task.wait(1)
                for i=1,2 do
                    game:GetService("Players").LocalPlayer.Character.Weapons:FireServer()
                end
            end
        end)
    end
end)


spawn(function()
    while task.wait(15) do
        pcall(function()
            if _G.autocannonplr then
                task.wait(0.1)
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name == "Cannon Ball" then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannonplr then
                task.wait(0.1)
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name ~= "Cannon" and v.Name ~= "Cannon Ball" then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autocannonplr then
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        v.Character.HumanoidRootPart.Transparency = 0.9
                    	v.Character.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.Character.HumanoidRootPart.CanCollide = false
                        v.Character.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,5,-15)
                        if v.Character.Humanoid.Health == 0 then
                            v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                            v.Character.HumanoidRootPart.Transparency = 1
                        end
                    end
                end
            end
        end)
    end
end)
end)

Section:NewToggle("Quake Kill Player | All |", "Spam Quake Kill Player All", function(spa)
    _G.spamquakeall = sqa
       spawn(function() -- 
    while task.wait(0) do
        pcall(function()
            for i, v in pairs(game.Players:GetChildren()) do
                if _G.spamquakeall then
                    if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                        if v.Name ~= "SetInstances" then
                            if v.Name ~= game.Players.LocalPlayer.Name then
                                task.wait(getgenv().spamtime)
                                local args = {
                                    [1] = tonumber(serializeTable(remotes)),
                                    [2] = "QuakePower4",
                                    [3] = "StopCharging",
                                    [4] = v.Character.HumanoidRootPart.CFrame,
                                    [5] = v.Character.HumanoidRootPart.CFrame,
                                    [6] = 100,
                                    [7] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position)}
                                game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
                                task.wait(0.1)
                                local args = {
                                    [1] = tonumber(serializeTable(remotes)),
                                    [2] = "QuakePower4",
                                    [3] = "StopCharging",
                                    [4] = v.Character.HumanoidRootPart.CFrame,
                                    [5] = v.Character.HumanoidRootPart.CFrame,
                                    [6] = 100,
                                    [7] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position)}
                                game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
                            end
                        end
                    end
                end
            end
        end)
    end
end)
end)

local Tab = Window:NewTab("NPC")
local Section = Tab:NewSection("Teleport NPC")
Section:NewDropdown("Choose NPC", "List NPC", {"Rayleigh", "Better Drink", "Drink", "Flail", "QuestFish", "Krizma", "Sword", "Sniper", "Emote", "Affinity","Fish", "Expertise"}, function(tpm)
    getgenv().tpmerchant = tpm
end)

Section:NewButton("Click to Tp", "Teleport to NPC", function()
    if getgenv().tpmerchant == "Rayleigh" then
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
end)

local Tab = Window:NewTab("Island")
local Section = Tab:NewSection("Safe Zone")
Section:NewDropdown("Choose SafeZone", "List SafeZone", Cache.DevConfig["ListOfSafeZone"], function(tps)
    getgenv().tpsafezone = tps
end)

Section:NewButton("Click to SafeZone", "Teleport to SafeZone", function()
    if getgenv().tpsafezone == "SafeZone Sky" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
	 elseif getgenv().tpsafezone == "SafeZone LightFarm" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneLightPart"].CFrame * CFrame.new(0, 5, 0)
		end
end)

local Section = Tab:NewSection("Teleport Island")
Section:NewDropdown("Choose Island", "List Island", Cache.DevConfig["ListOfIsland"], function(tpl)
    getgenv().tpisland = tpl
end)

Section:NewButton("Click to Tp", "Teleport to Island", function()
    if getgenv().tpisland == "Grassy" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(737, 241, 1209)
      elseif getgenv().tpisland == "Kaizu" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1526.0230712891, 364.99990844727, 10510.020507812)
      elseif getgenv().tpisland == "Snow Mountains"  then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6501, 408, -1261)
      elseif getgenv().tpisland == "Pursuer Boss" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4847, 570, -7143)
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
end)
local Tab = Window:NewTab("Spam")
local Section = Tab:NewSection("Dpam Skill (🔒)")

Section:NewToggle("Max Charge Skill", "Full Charge Skill", function(max)
    skillmax = max
end)

local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Other")

local Section = Tab:NewSection("Server")
Section:NewButton("Rejoin Server", "Rejoin Server", function()
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)

Section:NewButton("Hop Server", "Hop Server", function()
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

end)

local Section = Tab:NewSection("Unbox")
Section:NewToggle("Unbox | Common |", "Unbox Common", function(uc)
    UnboxC = uc
       spawn(function()
    while wait() do
        pcall(function()
            if not UnboxC then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox1"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end);
end)

Section:NewToggle("Unbox | Uncom |", "Unbox Uncommon", function(uu)
    UnboxU = uu
       spawn(function()
    while wait() do
        pcall(function()
            if not UnboxU then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox2"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end);

end)

Section:NewToggle("Unbox | Rare , Ultra |", "Unbox Rare , Ultra Rare", function(url)
    UnboxRL = url
       spawn(function()
    while wait() do
        pcall(function()
            if not UnboxRL then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox3"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end)
end)

local Section = Tab:NewSection("Spam Yuru Hit")

Section:NewTextBox("Yoru Hit", "", function(ht)
	_G.yoruhit = ht
end)

Section:NewToggle("Enable", "Enabled Fast Yoru", function(you)
    _G.yorufast = you
       spawn(function()
    while wait(0) do
        pcall(function()
            if _G.yorufast then
                if game.Players.LocalPlayer.Character:FindFirstChild("Yoru") and tonumber(serializeTable(attackremote)) ~= nil and tonumber(serializeTable(attackremote)) ~= "" then
                    repeat wait(0.3)
                        for i = 1, _G.yoruhit do
                            local args = {
                                [1] = tonumber(serializeTable(attackremote))
                            }
                            
                            game:GetService("Players").LocalPlayer.Character.Yoru.RequestAnimation:FireServer(unpack(args))
                        end
                    until _G.yorufast == false or game.Players.LocalPlayer.Character.Humanoid.Health == 0 
                end
            end
        end)
    end
end)
end)

local Section = Tab:NewSection("Anti")
Section:NewButton("Anti Lag", "BootsFPS", function()
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
end)

local Section = Tab:NewSection("Other")
Section:NewButton("Seastone Cestus( 500 Melee )", "got Seastone Cestus", function()
    local A_1 = "Seastone Cestus"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].UpdateMelee
    Event:FireServer(A_1)
end)

Section:NewButton("Unlock Emote | All |", "Unlock Emote All", function()
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark1.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark2.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark3.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark4.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark5.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark6.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark7.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark8.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark9.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark10.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark11.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark12.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark13.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark14.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark15.Value = true
    game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].Data.CB_Mark16.Value = true
end)

