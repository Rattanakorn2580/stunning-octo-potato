local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Knuxy92/Ui-linoria/main/Fluent/Fluent.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()


local Window = Fluent:CreateWindow({
    Title = "lnW Hub | Only OPL: Anarchy | " .. Fluent.Version,
    SubTitle = "      Made By Bankzy",
    TabWidth = 100,
    Size = UDim2.fromOffset(600, 350),
    Acrylic = true,
    Theme = "Darker Theme",
    MinimizeKey = Enum.KeyCode.LeftControl
})

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
if v.Name == "Menu" then
  v.Frame.C.Frame.Nametag.Text = " ".."Protect Name by: InW Hub"
end
end

local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-1000000, 1000000)), (math.random(10000, 50000)), (math.random(-1000000, 1000000)))
    SafeZoneOuterSpace.Anchored = true

local b1 = Instance.new("Part",game.Workspace)
        b1.Name = "SafeZoneLightPart1"
        b1.Position = Vector3.new(-169, 630, -54)
        b1.Size = Vector3.new(5, 0.1, 5)
        b1.Anchored = true

local SafeZoneLightFarm = Instance.new("Part",game.Workspace)
    SafeZoneLightFarm.Name = "SafeZoneLightPart2"
    SafeZoneLightFarm.Size = Vector3.new(30,2,30)
    SafeZoneLightFarm.Position = Vector3.new(3750, 3623, -615)
    SafeZoneLightFarm.Anchored = true

local SafeZoneUnderSea = Instance.new("Part",game.Workspace)
    SafeZoneUnderSea.Name = "SafeZoneUnderSeaPart"
    SafeZoneUnderSea.Size = Vector3.new(200,3,200)
    SafeZoneUnderSea.Position = Vector3.new((math.random(-5000, 5000)), -491, (math.random(-5000, 5000)))
    SafeZoneUnderSea.Anchored = true

spawn(function() -- autofarm velocity
    while wait(0) do
        pcall(function()
            if AutoFish or AutoPack or AutoFarmM or _G.chillykill or _G.bombkill then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
            elseif  AutoFish == false or AutoPack == false or AutoFarmM == false or _G.chillykill == false or _G.bombkill == false then
                --if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                wait(1)
                --end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.autodash then
	for i,v in pairs(game:GetService("Workspace")[selectedPlayer]:GetChildren()) do
if string.find(v.Name, "ShaveServer") then
v:Destroy()
end
	end
            end
        end)
    end
end);

spawn(function()
    while wait() do
        pcall(function()
            if _G.autodash then
	for i,v in pairs(game:GetService("Workspace")[selectedPlayer]:GetChildren()) do
if string.find(v.Name, "Shave") then
v:FireServer(CFrame.new(game.Players[SelectPlayer].Character.HumanoidRootPart.Position),workspace.Water)
end
end
            end
        end)
    end
end);

local Cache = { DevConfig = {} };

Cache.DevConfig["ListOfBox1"] = {"Common Box"};
Cache.DevConfig["ListOfBox2"] = {"Uncommon Box"};
Cache.DevConfig["ListOfDrink"] = {"Cider+", "Lemonade+", "Juice+", "Smoothie+"};
Cache.DevConfig["ListOfBox3"] = {"Rare Box", "Ultra Rare Box"};
Cache.DevConfig["ListOfDropCompass"] = {"Compass", "Rare Box"}


local Tabs = {
    MainTab = Window:AddTab({ Title = "Autos", Icon = "scroll" }),
    FarmTab = Window:AddTab({ Title = "Farm", Icon = "bomb" }),
    FarmFruitTab = Window:AddTab({ Title = "Skills Fruit", Icon = "skull" }),
    PlayerTab = Window:AddTab({ Title = "Players", Icon = "users" }),
    ShopTab = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),
    TeleportTab = Window:AddTab({ Title = "Teleport", Icon = "map-pin" }),
    MiscTab = Window:AddTab({ Title = "Misc", Icon = "file-code" }),
}


Fluent:Notify({
    Title = "lnW Hub",
    Content = "Loading...",
    Duration = 5
})

local player = game.Players.LocalPlayer
local L1 = Instance.new("ScreenGui")
local L2 = Instance.new("TextButton")
local L3 = Instance.new("UICorner")
local L4 = Instance.new("ImageLabel")
local sound = Instance.new("Sound")
L3.Name = "UICorner"
L3.Parent = L2
L4.Name = "ButtonImage"
L4.Parent = L2
L4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
L4.BackgroundTransparency = 1.000
L4.BorderSizePixel = 0
L4.Position = UDim2.new(0.1, 0, 0.1, 0) 
L4.Size = UDim2.new(0, 45, 0, 45)
L4.Image = ""
L1.Name = "MainGui"
L1.Parent = player:WaitForChild("PlayerGui")
L1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
L2.Name = "CustomButton"
L2.Parent = L1
L2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
L2.BackgroundTransparency = 0.2
L2.BorderSizePixel = 0
L2.Position = UDim2.new(0.1208, 0, 0.0953, 0)
L2.Size = UDim2.new(0, 50, 0, 50)
L2.Font = Enum.Font.LuckiestGuy
L2.Text = "lnW\nHub"
L2.TextColor3 = Color3.fromRGB(255, 255, 255)
L2.TextSize = 9.000
L2.Draggable = true
sound.Parent = L2
sound.SoundId = "rbxassetid://965305329"
L2.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
    sound:Play()
end)

local Section = Tabs.MainTab:AddSection("Function Auto")

Tabs.MainTab:AddToggle("Toggle", {
    Title = "Auto Spawn",
    Description = "",
    Default = false,
    Callback = function(enabled)
        _G.AutoSpawnEnabled = enabled
        while _G.AutoSpawnEnabled do
            task.wait(3)
            pcall(function()
                local player = game.Players.LocalPlayer
                local loadFrame = player.PlayerGui:FindFirstChild("Load") and player.PlayerGui.Load.Frame
                if loadFrame and loadFrame.Visible then
                    for _, connection in pairs(getconnections(loadFrame.Load.MouseButton1Click)) do
                        connection.Function()
                    end
                end
            end)
        end
    end
})

Tabs.MainTab:AddToggle("Toggle", {
    Title = "Auto Claim Mission",
    Description = "",
    Default = false,
    Callback = function(AMS)
        AutoMission = AMS
    end    
})

spawn(function()
    while wait() do 
        if AutoMission then 
            pcall(function() 
                workspace.Merchants.ExpertiseMerchant.Clickable.Retum:FireServer()
            end) 
        end 
    end 
end)

Tabs.MainTab:AddToggle("Toggle", {
    Title = "Auto Beri Gift",
    Description = "",
    Default = false,
    Callback = function(ACG)
		_G.berigift = ACG
	end    
})

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.berigift then
local A_1 = "RewardMark"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ClaimRewardHourly
    Event:FireServer(A_1)
            end
        end)
    end
end);

Tabs.MainTab:AddToggle("Toggle", {
    Title = "Auto Gems Gift",
    Description = "",
    Default = false,
    Callback = function(ACG)
		_G.gemsgift = ACG
	end    
})

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.gemsgift then
local A_1 = "RewardMark"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ClaimRewardDaily
    Event:FireServer(A_1)
            end
        end)
    end
end)

Tabs.MainTab:AddToggle("Toggle", {
    Title = "Auto Challenges",
    Description = "",
    Default = false,
    Callback = function(ACLL)
		_G.autoclaim = ACLL
	end    
})

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

Tabs.MainTab:AddToggle("Toggle", {
    Title = "Auto Bring DF",
    Description = "",
    Default = false,
    Callback = function(Value)
		BringDF = Value
	end    
})

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

local Section = Tabs.MainTab:AddSection("Sam Quest")

Tabs.MainTab:AddButton({
    Title = "Talk Sam",
    Description = "",
    Callback = function()
        fireclickdetector(game:GetService("Workspace").Merchants.QuestMerchant.Clickable.ClickDetector)
    end
})

Tabs.MainTab:AddToggle("Toggle", {
    Title = "Auto Claim Compasses",
    Description = "",
    Default = false,
    Callback = function(Value)
        AutoClaimCompass = Value
    end
})

spawn(function()
    while wait() do
        if AutoClaimCompass then
            local args = {
                [1] = "Claim10"
            }
            
            workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer(unpack(args))
        end
    end
end)

local AutoCompass = false

Tabs.MainTab:AddToggle("Toggle", {
    Title = "Auto Find Compasses (Fast)",
    Description = "",
    Default = false,
    Callback = function(Value)
        AutoCompass = Value
    end
})

spawn(function()
    while wait() do
        if AutoCompass then
            pcall(function()
                local player = game.Players.LocalPlayer
                local backpack = player.Backpack
                local character = player.Character or player.CharacterAdded:Wait()
                for _, item in pairs(backpack:GetChildren()) do
                    if item.Name == "Compass" then
                        item.Parent = character
                        wait(0.1)
                        if character:FindFirstChild("Compass") then
                            local compass = character.Compass
                            if compass:FindFirstChild("Poser") and compass.Poser.Value then
                                character.HumanoidRootPart.CFrame = CFrame.new(compass.Poser.Value)
                                wait(0.2) 
                                compass:Activate()
                                item.Parent = backpack
                                wait(0.5)
                            end
                        end
                    end
                end
            end)
        end
    end
end)

local DropCompass = false

Tabs.MainTab:AddToggle("Toggle", {
    Title = "Auto Drop Compasses",
    Description = "",
    Default = false, 
    Callback = function(value)
        DropCompass = value 
    end
})

spawn(function()
    while wait() do
        pcall(function()
            if not DropCompass then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfDropCompass"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value.Parent = game.Workspace;
                end
            end
        end)
    end
end);

local Section = Tabs.FarmTab:AddSection("Weapon Farm")

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Farm Mobs [Weapon]",
    Description = "",
    Default = false,
    Callback = function(state)
        _G.behindFarm = state
    end
})

local MobList = { "Boar", "Crab", "Angry", "Thief", "Gunslinger", "Freddy" }

local function IsMobAllowed(mobName)
    for _, allowedMob in ipairs(MobList) do
        if string.find(mobName, allowedMob) then
            return true
        end
    end
    return false
end

function ActivateHaki(state)
    pcall(function()
        if state then
            game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
        else
            -- Se necessário, adicione lógica para desativar o Haki
            game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
        end
    end)
end

spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if _G.behindFarm then
                for _, mob in pairs(game.Workspace.Enemies:GetChildren()) do
                    if mob:FindFirstChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") 
                       and mob.Humanoid.Health > 0 and IsMobAllowed(mob.Name) then
                        while mob.Humanoid.Health > 0 and _G.behindFarm do
                            local mobRoot = mob.HumanoidRootPart
                            local playerRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
                            playerRoot.CFrame = mobRoot.CFrame * CFrame.new(0, 0, 4)
                            local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                            if tool then
                                tool:Activate()
                            else
                                game.Players.LocalPlayer.Character.Humanoid:MoveTo(mobRoot.Position)
                            end
                            task.wait(0.1)
                        end
                        break
                    end
                end
            end
        end)
    end
end)

local WeaponList = {}

local function UpdateWeaponList()
    local updatedList = {}
    local player = game.Players.LocalPlayer
    for _, tool in ipairs(player.Backpack:GetChildren()) do
        if tool:IsA("Tool") then
            table.insert(updatedList, tool.Name)
        end
    end
    if player.Character then
        for _, tool in ipairs(player.Character:GetChildren()) do
            if tool:IsA("Tool") then
                table.insert(updatedList, tool.Name)
            end
        end
    end
    if #updatedList ~= #WeaponList then
        WeaponList = updatedList
        return true 
    else
        for i, weapon in ipairs(updatedList) do
            if weapon ~= WeaponList[i] then
                WeaponList = updatedList
                return true 
            end
        end
    end
    return false
end

local SelectedWeapon = nil
local WeaponDropdown = Tabs.FarmTab:AddDropdown("WeaponDropdown", {
    Title = "Select Weapon",
    Description = "",
    Values = WeaponList,
    Multi = false,
    Default = nil,
    Callback = function(value)
        SelectedWeapon = value
    end
})

spawn(function()
    while task.wait(1) do 
        if UpdateWeaponList() then
            WeaponDropdown:SetValues(WeaponList) 
        end
    end
end)

local function EquipWeapon(weaponName)
    local player = game.Players.LocalPlayer
    local backpack = player.Backpack
    local character = player.Character
    if character and character:FindFirstChild(weaponName) then
        return
    end
    local tool = backpack:FindFirstChild(weaponName)
    if tool then
        tool.Parent = character
    end
end

local AutoEquipToggle = Tabs.FarmTab:AddToggle("AutoEquipToggle", {
    Title = "Auto Equip Weapon",
    Description = "",
    Default = false,
    Callback = function(state)
        _G.AutoEquip = state
    end
})

spawn(function()
    while task.wait(0.1) do
        if _G.AutoEquip and SelectedWeapon then
            EquipWeapon(SelectedWeapon)
        end
    end
end)

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Auto Click",
    Description = "",
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
end)

local Section = Tabs.FarmTab:AddSection("Auto Farm With Fruit")

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Auto Light Farm",
    Description = "",
    Default = false, 
    Callback = function(value)
        _G.lightfarm = value 
	spawn(function() -- Light farm npcs
    while wait(0) do
        pcall(function()
            if _G.lightfarm then
                script = game:GetService("Players").LocalPlayer.Character.Powers.Light;
                VTC = script.RemoteEvent.RemoteFunction:InvokeServer();
                local pla = game.Players.LocalPlayer;
                local Mouse = pla:GetMouse();

                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0 then
                        if v.Humanoid.Health > 0 and
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 10000000000000000000000 then
                            if v.Name ~= "SetInstances" then
                                -- v.Humanoid:ChangeState(11)
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                if v.Humanoid.Health == 0 then
                                    v:Destroy()
                                end

                                wait(0.05)

                                local args = {
                                    [1] = VTC,
                                    [2] = "LightPower2",
                                    [3] = "StopCharging",
                                    [4] = v.Head.CFrame * CFrame.new(0, 0, 0),
                                    [5] = Mouse.Target,
                                    [6] = 100
                                }

                                game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

                            end
                        end
                    end
                end
            end
        end)
    end
end)
    end
})

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Auto Quake Farm (Very Lag)",
    Description = "",
    Default = false, 
    Callback = function(value)
        _G.Quakefarm = value 
spawn(function() -- Quake farm npcs
    while wait(0) do
        pcall(function()
            if _G.Quakefarm then
                script = game:GetService("Players").LocalPlayer.Character.Powers.Quake;
                VTQ = script.RemoteEvent.RemoteFunction:InvokeServer();
                local pla = game.Players.LocalPlayer;
                local Mouse = pla:GetMouse();

                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0 then
                        if v.Humanoid.Health > 0 and
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 10000000000000000000000 then
                            if v.Name ~= "SetInstances" then
                                -- v.Humanoid:ChangeState(11)
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                if v.Humanoid.Health == 0 then
                                    v:Destroy()
                                end

                                wait(0.05)

            local args = {
                [1] = VTQ,
                [2] = "QuakePower4",
                [3] = "StopCharging",
                [4] = Mouse.Target,
                [5] = v.Head.CFrame * CFrame.new(0, 0, 0),
                [6] = 100,
                [7] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position)
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

                            end
                        end
                    end
                end
            end
        end)
    end
end)
    end
})

local Section = Tabs.FarmTab:AddSection("Other Farms")

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Auto Collect Chests",
    Description = "",
    Default = false,
    Callback = function(Value)
        getgenv().autochest = Value
        if getgenv().autochest then
            spawn(function()
                while getgenv().autochest do
                    task.wait()
                    pcall(function()
                        for _, v in pairs(game.Workspace:GetDescendants()) do
                            if v.Name == "Touch" and v.Parent.Name == "TreasureChestPart" then
                                v.Parent.CFrame = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame
                            end
                        end
                        task.wait(15)
                    end)
                end
            end)
        end
    end,
})

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Auto Get Package",
    Description = "",
    Default = false,
    Callback = function(bool11)
        getgenv().tre = bool11
        while getgenv().tre do
            wait()
            pcall(function()
                workspace:WaitForChild("Merchants")
                    :WaitForChild("QuestFishMerchant")
                    :WaitForChild("Clickable")
                    :WaitForChild("Retum")
                    :FireServer()
                wait(2)
            end)
        end
    end,
})

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Auto Package",
    Description = "",
    Default = false,
    Callback = function(bool00)
        getgenv().tret = bool00
        while getgenv().tret do
            wait()
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Package") and not game.Players.LocalPlayer.Character:FindFirstChild("Package") then
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Package").Parent = game.Players.LocalPlayer.Character
                    game.Players.LocalPlayer.Character.Humanoid.Sit = true
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Package") and getgenv().tret == true then
                    for _, v in pairs(game.Workspace.Merchants:GetChildren()) do
                        if (string.find(v.Name, "Aff") or string.find(v.Name, "Heavy") or string.find(v.Name, "Drink") 
                            or string.find(v.Name, "Boat") or string.find(v.Name, "Emote") or string.find(v.Name, "Exp") 
                            or string.find(v.Name, "Fish") or string.find(v.Name, "Flail") or string.find(v.Name, "Krizma") 
                            or string.find(v.Name, "QuestFish") or string.find(v.Name, "QuestMe") or string.find(v.Name, "Friend") 
                            or string.find(v.Name, "Sniper") or string.find(v.Name, "Sword")) 
                            and v:FindFirstChild("HumanoidRootPart") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame + Vector3.new(1, 0, 0)
                            wait(0.3)
                        end
                    end
                    game.Players.LocalPlayer.Character.Package:Activate()
                elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Package") and not game.Players.LocalPlayer.Character:FindFirstChild("Compass") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new((math.random(-100000, 100000)), 10000, (math.random(-100000, 100000)))
                end
            end)
        end
    end,
})

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Auto Stats Farm",
    Description = "",
    Default = false,
    Callback = function(Value)
        getgenv().autostatsfarm = Value
        if getgenv().autostatsfarm then
            spawn(function()
                local user = tostring(game.Players.LocalPlayer.Name)
                local plrid = tostring(game.Players.LocalPlayer.UserId)
                local plr = tostring(game.Players.LocalPlayer)

                while getgenv().autostatsfarm do
                    task.wait()
                    pcall(function()
                        repeat task.wait() until game.Players[plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_13"].Claim.AutoButtonColor == true
                        workspace.UserData["User_" .. plrid].ChallengesRemote:FireServer("Claim", "Challenge13")
                        workspace.UserData["User_" .. plrid].ChallengesRemote:FireServer("Claim", "Challenge14")
                    end)
                end
            end)
            spawn(function()
                local function collectBarrels()
                    for _, v in pairs(game.Workspace.Barrels:GetDescendants()) do
                        if v:IsA("ClickDetector") then
                            fireclickdetector(v)
                        end
                    end
                    for _, v in pairs(game.Workspace.Island8.Kitchen:GetDescendants()) do
                        if v:IsA("ClickDetector") then
                            fireclickdetector(v)
                        end
                    end
                end
                local user = tostring(game.Players.LocalPlayer.Name)
                while getgenv().autostatsfarm do
                    pcall(function()
                        for _, v in pairs(game.Workspace.Barrels.Barrels:GetDescendants()) do
                            if v.Name == "Barrel" then
                                game.Workspace[user].HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
                                collectBarrels()
                                task.wait(0.1)
                            end
                        end
                        for _, v in pairs(game.Workspace.Barrels:GetDescendants()) do
                            if v.Name == "Crate" then
                                game.Workspace[user].HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
                                collectBarrels()
                                task.wait(0.1)
                            end
                        end
                        game.Workspace[user].HumanoidRootPart.CFrame = game.Workspace["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
                        collectBarrels()
                        workspace.Merchants.FishMerchant.Clickable.Retum:FireServer()
                        task.wait(15)
                    end)
                end
            end)
            spawn(function()
                while getgenv().autostatsfarm do
                    task.wait(4)
                    pcall(function()
                        for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") and (v.Name:find("Juice") or v.Name:find("Milk") or v.Name:find("Cider") or v.Name:find("Lemonade") or v.Name:find("Smoothie") or v.Name:find("Golden")) then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                v:Activate()
                            end
                        end
                    end)
                end
            end)
        end
    end,
})

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Auto Fish Farm",
    Description = "",
    Default = false,
    Callback = function(AFH)
		AutoFish = AFH
	end    
})

spawn(function() 
    while wait(0) do
        pcall(function()
            if AutoFish then
                wait(0.5)
                local CharacterName = game.Players.LocalPlayer.Character
                local position = CharacterName.HumanoidRootPart.CFrame * CFrame.new(0, 0, -15)
                local char = CharacterName.HumanoidRootPart
                char.CFrame = CFrame.new(-20000, 218, 20000)
        
                local b1 = Instance.new("Part")
                b1.Shape = "Block"
                b1.Material = "Neon"
                b1.BrickColor = BrickColor.new("Hot Pink")
                b1.Anchored = true
                b1.Parent = game.Workspace
                b1.CFrame = CFrame.new(-20000, 213, 20000)
                b1.Size = Vector3.new(0.5, 0.1, 0.5)
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
end);

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Auto Get Haki",
    Description = "",
    Default = false,
    Callback = function(bool122)
        getgenv().haki = bool122
        while getgenv().haki do
            wait()
            pcall(function()
                workspace:WaitForChild("Merchants")
                    :WaitForChild("QuestHakiMerchant")
                    :WaitForChild("Clickable")
                    :WaitForChild("Retum")
                    :FireServer()
                wait(2)
            end)
        end
    end,
})


local Section = Tabs.FarmTab:AddSection("Haki Auto Farm")

local hakitarget = 25
local Slider = Tabs.FarmTab:AddSlider("Slider", 
{
    Title = "Haki % Use",
    Description = "",
    Default = 25,
    Min = 1,
    Max = 100,
    Rounding = 1,
    Callback = function(gmm)
        hakitarget = gmm
    end,
})


local hakispeed = 1
local Slider = Tabs.FarmTab:AddSlider("Slider", 
{
    Title = "Haki % Speed",
    Description = "",
    Default = 1,
    Min = 1,
    Max = 5,
    Rounding = 1,
    Callback = function(gttmm)
        hakispeed = gttmm
    end,
})

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Auto Farm Haki",
    Description = "",
    Default = false,
    Callback = function(vccl)
        getgenv().concuvm = vccl
        local plrid = tostring(game.Players.LocalPlayer.UserId)
        local plr = tostring(game.Players.LocalPlayer)
        _G.concu = true
        while _G.concu do
            wait()
            local slv = game.Workspace.UserData["User_" .. plrid].Data.HakiLevel.Value
            local sss = slv / 100 * hakitarget
            if game.Workspace.UserData["User_" .. plrid].HakiBar.Value > sss and getgenv().concuvm == true then
                local Players = game:GetService("Players")
                local cache = {}
                local function lol(name)
                    if cache[name] then return cache[name] end
                    local player = Players:FindFirstChild(name)
                    if player then
                        cache[name] = player.UserId
                        return player.UserId
                    end

                    local id
                    pcall(function()
                        id = Players:lol(name)
                    end)
                    cache[name] = id
                    return id
                end

                local ehh = game.Players.LocalPlayer.Name
                local Final = lol(ehh)
                for i = 1, hakispeed do
                    local args = { [1] = "Off", [2] = 1 }
                    workspace.UserData["User_" .. Final].III:FireServer(unpack(args))
                    
                    local args = { [1] = "On", [2] = 1 }
                    workspace.UserData["User_" .. Final].III:FireServer(unpack(args))
                end
            elseif game.Workspace.UserData["User_" .. plrid].HakiBar.Value <= sss and getgenv().concuvm == true then
                local args = { [1] = "Off", [2] = 1 }
                workspace.UserData["User_" .. plrid].III:FireServer(unpack(args))
                repeat task.wait() until game.Workspace.UserData["User_" .. plrid].HakiBar.Value >= slv
                _G.concu = true
            elseif getgenv().concuvm == false then
                _G.concu = false
                local args = { [1] = "Off", [2] = 1 }
                workspace.UserData["User_" .. plrid].III:FireServer(unpack(args))
            end
        end
    end,
})

local Section = Tabs.PlayerTab:AddSection("Local Player")

Tabs.PlayerTab:AddButton({
    Title = "No Save Data! ! !",
    Description = "",
    Callback = function()
workspace.UserData["User_"..game.Players.LocalPlayer.UserId].UpdateClothing_Extras:FireServer("A", "\255", 34)
        game:GetService("Players").LocalPlayer.Character.CharacterTrait.ClothingTrigger:FireServer()
    end
})

local Section = Tabs.PlayerTab:AddSection("Player Utilities")

local function updatePlayerList()
    local players = {}
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Name ~= game.Players.LocalPlayer.Name then
            table.insert(players, player.Name)
        end
    end
    return players
end

local PlayerList = updatePlayerList()
local selectedPlayer = PlayerList[1] or ""

local Dropdown = Tabs.PlayerTab:AddDropdown("Dropdown", {
    Title = "Select Player",
    Description = "",
    Values = PlayerList,
    Multi = false,
    Default = selectedPlayer,
    Callback = function(Value)
        selectedPlayer = Value
        print("Dropdown changed. Selected player:", selectedPlayer)
    end
})

game.Players.PlayerAdded:Connect(function(player)
    table.insert(PlayerList, player.Name)
    Dropdown:Refresh(PlayerList, PlayerList[1] or "")
end)

game.Players.PlayerRemoving:Connect(function(player)
    for i, name in ipairs(PlayerList) do
        if name == player.Name then
            table.remove(PlayerList, i)
            break
        end
    end
    Dropdown:Refresh(PlayerList, PlayerList[1] or "")
end)

local Tpplr = false
local SpectatePlayer = false

Tabs.PlayerTab:AddToggle("Toggle", {
    Title = "TP Player",
    Description = "",
    Default = false,
    Callback = function(TP)
        Tpplr = TP
        if Tpplr then
            spawn(function()
                while Tpplr do
                    local localPlayer = game.Players.LocalPlayer
                    local targetPlayer = game.Players:FindFirstChild(selectedPlayer)

                    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        local targetHRP = targetPlayer.Character.HumanoidRootPart

                        local targetPosition = targetHRP.Position
                        local behindPosition = targetPosition - targetHRP.CFrame.LookVector * 5
                        local targetOrientation = targetHRP.CFrame - targetHRP.Position

                        localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(behindPosition) * targetOrientation.Rotation
                    else
                        print("Target player not found or invalid.")
                        break
                    end

                    wait(0.1)
                end
            end)
        end
    end,
})

local function spectate(targetPlayer)
    if targetPlayer and targetPlayer.Character then
        local humanoid = targetPlayer.Character:FindFirstChild("Humanoid")
        if humanoid then
            workspace.CurrentCamera.CameraSubject = humanoid
            print("Now spectating:", targetPlayer.Name)
        end
    end
end

Tabs.PlayerTab:AddToggle("SpectatePlayerToggle", {
    Title = "View Player",
    Description = "",
    Default = false,
    Callback = function(Value)
        SpectatePlayer = Value
        if not Value then
            workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        end
    end
})

spawn(function()
    while task.wait(0.5) do
        if SpectatePlayer and selectedPlayer then
            local targetPlayer = game.Players:FindFirstChild(selectedPlayer)
            if targetPlayer then
                spectate(targetPlayer)
            else
                print("Player not found or unavailable:", selectedPlayer)
            end
        end
    end
end)

BringAllPlr = false

Tabs.PlayerTab:AddToggle("Toggle", {
    Title = "Auto Bring All Player",
    Description = "",
    Default = false,
    Callback = function(Value)
		BringAllPlr = Value
	end    
})

spawn(function() -- bring Plr
    while wait() do
        if BringAllPlr then
            pcall(function()
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-15 or getgenv().disbring)
                        if v.Character.Humanoid.Health == 0 then
                        	v.Character.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end)
        end
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
end)

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

Tabs.PlayerTab:AddToggle("Toggle", {
    Title = "AimBot Player (Choose Player)",
    Description = "",
    Default = false, 
    Callback = function(value)
        aimsilent = value 
spawn(function()
    pcall(function()
        while true do wait()
            pcall(function()
                local plr1 = game.Players.LocalPlayer.Character
                local plr2 = game.Players:FindFirstChild(selectedPlayer)
                if aimsilent then
                    cacacac = plr2.Character.HumanoidRootPart.CFrame
                end
            end)
        end
    end)
end)

local index = mta.__index
cf = CFrame.new(1, 2, 3)
setreadonly(mta, false)
mta.__index = newcclosure(function(a, b, c)
    if tostring(b):lower() == 'hit' and aimsilent then
        return cacacac
    end
    return index(a, b, c)
end)
    end
})

Tabs.PlayerTab:AddButton({
    Title = "ESP Name Players",
    Description = "",
    Callback = function()
        -- ESP Script (Chams, Name, Box, Tracers)

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- Settings
local ESPSettings = {
    NameColor = Color3.fromRGB(255, 255, 255), -- White name
    ChamColor = BrickColor.new("Bright yellow"), -- Yellow chams
    ChamTransparency = 0.7, -- Chams transparency (0 = opaque, 1 = invisible)
    TextSize = 10, -- ESP Name Text Size
}

-- Function to create Chams (highlight players through walls)
local function createChams(character)
    for _, part in pairs(character:GetChildren()) do
        if part:IsA("BasePart") then
            local cham = Instance.new("BoxHandleAdornment")
            cham.Size = part.Size
            cham.Adornee = part
            cham.Color = ESPSettings.ChamColor
            cham.Transparency = ESPSettings.ChamTransparency
            cham.ZIndex = 0
            cham.AlwaysOnTop = true
            cham.Parent = part
        end
    end
end

-- Function to create ESP (Names, Boxes, Tracers)
local function createESP(player)
    local name = Drawing.new("Text")

    RunService.RenderStepped:Connect(function()
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player ~= LocalPlayer then
            local rootPart = player.Character.HumanoidRootPart
            local pos, onScreen = Camera:WorldToViewportPoint(rootPart.Position)
            
            if onScreen then
                -- Name ESP
                name.Visible = true
                name.Text = player.Name
                name.Size = ESPSettings.TextSize
                name.Color = ESPSettings.NameColor
                name.Position = Vector2.new(pos.X, pos.Y - 25)

            else
                name.Visible = false
            end
        else
            name.Visible = false
        end
    end)
end

-- Apply ESP to all players
for _, player in pairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        createESP(player)
        player.CharacterAdded:Connect(function(character)
            createChams(character)
        end)
    end
end

-- Update ESP when a new player joins
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        createChams(character)
        createESP(player)
    end)
end)
    end
})

local Section = Tabs.PlayerTab:AddSection("Fruity Farm Kill Players")

Tabs.PlayerTab:AddToggle("Toggle", {
    Title = "Auto Quake Kill",
    Description = "",
    Default = false, 
    Callback = function(value)
        _G.quakekill = value 
	spawn(function() -- auto farm quake
    while task.wait(0) do
        pcall(function()
            for i,v in pairs(game.Players:GetChildren()) do
                    if _G.quakekill  then
                        if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if v.Name ~= "SetInstances" and v.Character.Humanoid.Health ~= 0 and v.Backpack:FindFirstChildOfClass("Tool") then
                                if v.Name ~= game.Players.LocalPlayer.Name then
                                    wait(0.1)
                                    local args = {
                                        [1] = tonumber(serializeTable(remotes)),
                                        [2] = "QuakePower4",
                                        [3] = "StopCharging",
                                        [4] = v.Character.HumanoidRootPart.CFrame,
                                        [5] = v.Character.HumanoidRootPart.CFrame,
                                        [6] = 100,
                                        [7] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position)
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)
    end
})

local Section = Tabs.PlayerTab:AddSection("Spam Dash (If Stand Still It Will Delete Character.)")

Tabs.PlayerTab:AddToggle("Toggle", {
    Title = "Auto Dash (Choose Player)",
    Description = "",
    Default = false, 
    Callback = function(value)
        _G.autodash = value 
	spawn(function()
    while wait() do
        pcall(function()
            if _G.autodash then
	for i,v in pairs(game:GetService("Workspace")[SelectPlayer]:GetChildren()) do
if string.find(v.Name, "Dash") then
v:FireServer(CFrame.new(game.Players[SelectPlayer].Character.HumanoidRootPart.Position),workspace.Water)
end
end
            end
        end)
    end
end)
    end
})

Tabs.FarmFruitTab:AddToggle("Toggle", {
    Title = "100% Max Charge Skill",
    Description = "",
    Default = false,
    Callback = function(Value)
        skillmax = Value
        if skillmax then
            aaxc = hookmetamethod(game, "__namecall", function(self, ...)
                local args = { ... }
                local method = getnamecallmethod()
                if method == "FireServer" or method == "InvokeServer" then
                    if self.Name == "RemoteEvent" and args[3] == "StopCharging" and skillmax then
            args[6] = 100
                    if self.Name == "RemoteEvent" and args[3] == "StopCharging" and skillmax then
            args[6] = 200
	           if self.Name == "RemoteEvent" and args[3] == "StopCharging" and skillmax then
            args[6] = 400
            return aaxc(self, unpack(args))
	end
end
	end
		end
                return aaxc(self, ...)
            end)
        end
    end,
})

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
end)

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

local Section = Tabs.FarmFruitTab:AddSection("Fruity Spam Farm")

Tabs.FarmFruitTab:AddToggle("Toggle", {
    Title = "Spam Quake Wave",
    Description = "",
    Default = false, 
    Callback = function(value)
        _G.quake1 = value 
	spawn(function()
    while wait(getgenv().spamtime) do
        pcall(function()
        if _G.quake1 then 
            local pla = game.Players.LocalPlayer;
            local Mouse = pla:GetMouse();

            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "QuakePower4",
                [3] = "StartCharging",
                [5] = "Right"
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
   
            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "QuakePower4",
                [3] = "StopCharging",
                [4] = Mouse.Target,
                [5] = Mouse.Hit,
                [6] = 100,
                [7] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position)
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
        end
        end)
    end
end);
    end
})

local Section = Tabs.ShopTab:AddSection("Auto Affinity Reroll 2.0 All")

local ToggleBeri1
local isRunning1 = false

Tabs.ShopTab:AddToggle("Toggle", {
    Title = "Auto 2.0 Affinities | Left |",
    Description = "",
    Default = false,
    Callback = function(Value)
        isRunning1 = Value -- Atualiza o estado do loop com base no valor do toggle
        if isRunning1 then
            -- Inicia o loop se o toggle estiver ativado
            spawn(function()
                while isRunning1 do
                    wait(8) -- Intervalo do loop
                    local player = game.Players.LocalPlayer
                    local playerId = player.UserId
                    local userDataName = game.Workspace.UserData["User_" .. playerId]

                    -- DFT1 Variables
                    local AffMelee1 = userDataName.Data.DFT1Melee.Value
                    local AffSniper1 = userDataName.Data.DFT1Sniper.Value
                    local AffDefense1 = userDataName.Data.DFT1Defense.Value
                    local AffSword1 = userDataName.Data.DFT1Sword.Value

                    -- Check for DFT1
                    if AffSniper1 == 2 and AffSword1 == 2 and AffMelee1 == 2 and AffDefense1 == 2 then
                        script.Parent:Destroy()
                    end

                    local args1 = {
                        [1] = "DFT1",
                        [2] = false, -- defense
                        [3] = false, -- melee
                        [4] = false, -- sniper
                        [5] = false, -- sword
                        [6] = "Cash"
                    }

                    if AffDefense1 == 2 then
                        args1[2] = 0 / 0
                    end

                    if AffMelee1 == 2 then
                        args1[3] = 0 / 0
                    end

                    if AffSniper1 == 2 then
                        args1[4] = 0 / 0
                    end

                    if AffSword1 == 2 then
                        args1[5] = 0 / 0
                    end

                    workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args1))
                end
            end)
        end
    end,
})

local ToggleBeri2
local isRunning2 = false

Tabs.ShopTab:AddToggle("Toggle", {
    Title = "Auto 2.0 Affinities Beri | Right |",
    Description = "",
    Default = false,
    Callback = function(Value)
        isRunning2 = Value -- Atualiza o estado do loop com base no valor do toggle
        if isRunning2 then
            -- Inicia o loop se o toggle estiver ativado
            spawn(function()
                while isRunning2 do
                    wait(8) -- Intervalo do loop
                    local player = game.Players.LocalPlayer
                    local playerId = player.UserId
                    local userDataName = game.Workspace.UserData["User_" .. playerId]

                    -- DFT2 Variables
                    local AffMelee2 = userDataName.Data.DFT2Melee.Value
                    local AffSniper2 = userDataName.Data.DFT2Sniper.Value
                    local AffDefense2 = userDataName.Data.DFT2Defense.Value
                    local AffSword2 = userDataName.Data.DFT2Sword.Value

                    -- Check for DFT2
                    if AffSniper2 == 2 and AffSword2 == 2 and AffMelee2 == 2 and AffDefense2 == 2 then
                        script.Parent:Destroy()
                    end

                    local args2 = {
                        [1] = "DFT2",
                        [2] = false, -- defense
                        [3] = false, -- melee
                        [4] = false, -- sniper
                        [5] = false, -- sword
                        [6] = "Cash"
                    }

		    if AffDefense2 == 2 then
                        args2[2] = 0 / 0
                    end

                    if AffMelee2 == 2 then
                        args2[3] = 0 / 0
                    end

                    if AffSniper2 == 2 then
                        args2[4] = 0 / 0
                    end

                    if AffSword2 == 2 then
                        args2[5] = 0 / 0
                    end

                    workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args2))
                end
            end)
        end
    end,
})

local Section = Tabs.ShopTab:AddSection("Auto Buy Drinks")

Tabs.ShopTab:AddDropdown("DrinkDropdown", {
    Title = "Choose Drink To Buy",
    Description = "",
    Values = {"Cider+", "Lemonade+", "Juice+", "Smoothie+"},
    Multi = false,
    Default = 1,
    Callback = function(Value)
	SelectDrink = Value
    end
})

local Input = Tabs.ShopTab:AddInput("Input", {
    Title = "Amount",
    Description = "",
    Default = "",
    Placeholder = "Enter Amount: ",
    Numeric = true, 
    Finished = false, 
    Callback = function(txt)
        AmountDrink = txt
    end
})

Tabs.ShopTab:AddButton({
    Title = "Buy Drink",
    Description = "",
    Callback = function()
if not AmountDrink or not string.match(AmountDrink, "%d+") or tonumber(string.match(AmountDrink, "%d+")) < 0 then return end;
        for _ = 1, tonumber(string.match(AmountDrink, "%d+")) do
            game.Workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(SelectDrink)
			end
    end
})

Tabs.ShopTab:AddToggle("Toggle", {
    Title = "Auto Drinks",
    Description = "",
    Default = false, 
    Callback = function(value)
        _G.autodrinks = value 
spawn(function()
    while wait() do
        pcall(function()
            if not _G.autodrinks then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfDrink"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end);
    end
})

local AutoDropDrink = false

Tabs.ShopTab:AddToggle("Toggle", {
    Title = "Auto Drop Drinks",
    Description = "",
    Default = false,
    Callback = function(Value)
        AutoDropDrink = Value
        spawn(function()
    while wait() do
        pcall(function()
            if not AutoDropDrink then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfDrink"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value.Parent = game.Workspace;
                end
            end
        end)
    end
end)
    end,
})

local islandPositions = {
    ["Cave"] = CFrame.new(-280, 217, -831),
    ["Crab"] = CFrame.new(-7, 224, -91),
    ["Sam"] = CFrame.new(-1283, 218, -1348),
    ["Yellow House"] = CFrame.new(737, 241, 1209),
    ["Bar"] = CFrame.new(1522, 260, 2188),
    ["Krizma"] = CFrame.new(-1109, 341, 1645),
    ["Pyramid"] = CFrame.new(118, 216, 4773),
    ["Kaizu"] = CFrame.new(-1526.023, 365, 10510.021),
    ["Snow Mountains"] = CFrame.new(6501, 408, -1261),
    ["Pursuer Boss"] = CFrame.new(4847, 570, -7143),
    ["Vokun"] = CFrame.new(4598, 217, 4964),
    ["Green"] = CFrame.new(-2727, 253, 1041),
    ["Trees"] = CFrame.new(1068, 217, 3351),
    ["Merlin Fish"] = CFrame.new(-1668, 217, -300),
    ["Snowy"] = CFrame.new(-1896, 222, 3385),
    ["Mountain"] = CFrame.new(2052, 488, -701),
    ["Marine Ford"] = CFrame.new(-3164, 296, -3780),
    ["Sand Castle"] = CFrame.new(1020, 224, -3277),
    ["Forest"] = CFrame.new(-5781, 216, 114),
    ["Evil"] = CFrame.new(-5169, 523, -7803),
    ["Crescent"] = CFrame.new(3193, 357, 1670),
    ["Islands"] = CFrame.new(-4319, 245, 5252),
    ["Town"] = CFrame.new(1818, 218, 755),
    ["Rocky"] = CFrame.new(-37, 229, 2149),
    ["Palm"] = CFrame.new(766, 216, -1374),
    ["Sand"] = CFrame.new(-2747, 216, -942),
    ["Sand 2"] = CFrame.new(162, 216, -2265),
    ["Small"] = CFrame.new(1237, 240, -244),
    ["Tiny"] = CFrame.new(-1235, 223, 623),
    ["Super Tiny"] = CFrame.new(-4007, 216, -2190),
    ["Grass"] = CFrame.new(2096, 217, -1884),
    ["Atlar"] = game.workspace.Altar.RecepticalEffect.CFrame * CFrame.new(0, 5, 0),
}

local npcPositions = {
    ["Rayleigh"] = game.workspace.Merchants.QuestHakiMerchant.HumanoidRootPart.CFrame,
    ["Better Drink"] = CFrame.new(1493, 260, 2171),
    ["Drink"] = CFrame.new(-1282, 218, -1368),
    ["Flail"] = CFrame.new(1110, 217, 3369),
    ["QuestFish"] = CFrame.new(-1702, 216, -325),
    ["Krizma"] = CFrame.new(-1072, 361, 1669),
    ["Sword"] = CFrame.new(1005, 224, -3339),
    ["Sniper"] = CFrame.new(-1843, 222, 3416),
    ["Emote"] = CFrame.new(1522, 265, 2165),
    ["Affinity"] = CFrame.new(113, 278, 4952),
    ["Fish"] = CFrame.new(1983, 218, 566),
    ["Expertise"] = CFrame.new(903, 270, 1219),
}

local selectedIsland = nil
local selectedNpc = nil

Tabs.TeleportTab:AddDropdown("IslandDropdown", {
    Title = "Select Island",
    Description = "",
    Values = {"Cave", "Windmill", "Sam", "Grassy", "Bar", "Krizma", "Kaizu", "Snow Mountains", "Pursuer Boss", "Cliffs", "Green", "Trees", "Pyramid", "Merlin Fish", "Snowy", "Mountain", "Marine Ford", "Sand Castle", "Forest", "Evil", "Crescent", "Islands", "Town", "Rocky", "Palm", "Sand", "Sand 2", "Small", "Tiny", "Super Tiny", "Grass", "Atlar"},
    Multi = false,
    Default = 1,
    Callback = function(Value)
        selectedIsland = Value
    end
})

Tabs.TeleportTab:AddButton({
    Title = "Teleport to Island",
    Description = "",
    Callback = function()
        if selectedIsland then
            local islandPosition = islandPositions[selectedIsland]
            if islandPosition then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = islandPosition
            else
            end
        else
        end
    end
})

local Section = Tabs.TeleportTab:AddSection("Npc TP")

Tabs.TeleportTab:AddDropdown("NpcDropdown", {
    Title = "Select NPC",
    Description = "",
    Values = {"Rayleigh", "Better Drink", "Drink", "Flail", "QuestFish", "Krizma", "Sword", "Sniper", "Emote", "Affinity", "Fish", "Expertise"},
    Multi = false,
    Default = 1,
    Callback = function(Value)
        selectedNpc = Value
    end
})

Tabs.TeleportTab:AddButton({
    Title = "Teleport to NPC",
    Description = "",
    Callback = function()
        if selectedNpc then
            local npcPosition = npcPositions[selectedNpc]
            if npcPosition then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = npcPosition
            else
            end
        else
        end
    end
})

local Section = Tabs.TeleportTab:AddSection("SafeZone TP")

Tabs.TeleportTab:AddDropdown("SafeZoneDropdown", {
    Title = "Select SafeZone",
    Description = "",
    Values = {"OutSpace SafeZone", "UnderSea SafeZone", "SafeZone LightFarm 1.0", "SafeZone LightFarm 2.0"},
    Multi = false,
    Default = 1,
    Callback = function(Value)
        getgenv().tpsafezone = Value
    end
})

Tabs.TeleportTab:AddButton({
    Title = "Teleport to SafeZone",
    Description = "",
    Callback = function()
       if getgenv().tpsafezone == "OutSpace SafeZone" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
	 elseif getgenv().tpsafezone == "UnderSea SafeZone" then
       game.Players.LocalPlayer.Character.Humanoid.Sit = true
        wait(0.15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneUnderSeaPart"].CFrame * CFrame.new(0, 5, 0)
	elseif getgenv().tpsafezone == "SafeZone LightFarm 1.0" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneLightPart1"].CFrame * CFrame.new(0, 5, 0)
	elseif getgenv().tpsafezone == "SafeZone LightFarm 2.0" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneLightPart2"].CFrame * CFrame.new(0, 5, 0)
			end 
    end
})

local Section = Tabs.MiscTab:AddSection("Function Server")

Tabs.MiscTab:AddButton({
    Title = "Rejoin",
    Description = "",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer

        local Success, ErrorMessage = pcall(function()
            TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end)

        if ErrorMessage and not Success then
            warn(ErrorMessage)
        end
    end
})

Tabs.MiscTab:AddButton({
    Title = "Hop Server",
    Description = "",
    Callback = function()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false

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
            local num = 0
            for i, v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _, Existing in pairs(AllIDs) do
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
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(0.1)
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
    end,
})

local Section = Tabs.MiscTab:AddSection("Anti")

Tabs.MiscTab:AddButton({
    Title = "Anti Lag",
    Description = "",
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

Tabs.MiscTab:AddToggle("Toggle", {
    Title = "Anti-AFK",
    Description = "",
    Default = false,
    Callback = function(state)
        if state then
            local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:Connect(function()
                vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
            end)

            Fluent:Notify({
                Title = "Anti-AFK",
                Content = "by Bankzy",
                Duration = 5
            })

        else
            Fluent:Notify({
                Title = "Anti-AFK",
                Content = "It can help you stay on the server for a long time.",
                Duration = 5
            })

        end
    end,
})

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
end)

Tabs.MiscTab:AddToggle("Toggle", {
    Title = "Anti Water",
    Description = "",
    Default = false, 
    Callback = function(value)
        _G.nowaterdamage = value 
spawn(function()
    while wait() do
        if _G.nowaterdamage then
            pcall(function()
                local args = {
    [1] = "NOPLS"
}

game:GetService("Players").LocalPlayer.Character.Drown:FireServer(unpack(args))
if self.Name == 'Drown' and _G.nowaterdamage then
            if args[1] then
                return nil
            end
        end
            end)
        end
    end
end)
    end
})

_G.antistun = false

Tabs.MiscTab:AddToggle("Toggle", {
    Title = "Anti Hobby",
    Description = "",
    Default = false,
    Callback = function(Value)
		_G.antistun = Value
	end    
})

spawn(function() -- antistun
    while wait() do
        if _G.antistun then
            pcall(function()
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        v.ReturnBall1.TouchInterest:Destroy() and 
			v.ReturnBall2.TouchInterest:Destroy()
                    end
                end
            end)
        end
    end
end)

local Section = Tabs.MiscTab:AddSection("Yoru Utilities")

local Slider = Tabs.MiscTab:AddSlider("Slider", 
{
    Title = "Yoru Speed",
    Description = "",
    Default = 50,
    Min = 0,
    Max = 500000,
    Rounding = 1,
    Callback = function(Value)
        Speeds = Value
    end,
})

Tabs.MiscTab:AddToggle("Toggle", {
    Title = "Yoru Spam",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.Yoru = Value
        if _G.Yoru then
            while _G.Yoru do
                wait()
                local Players = game:GetService("Players")
                local Plr = Players.LocalPlayer
                local Character = Plr.Character
                local Yoru = Character:FindFirstChild("Yoru")

                wait()
                pcall(function()
                    for i = 1, Speeds do
                        Yoru["RequestAnimation"]:FireServer()
                    end
                end)
                wait()
            end
        end
    end
})

local Section = Tabs.MiscTab:AddSection("Fake Weapons")


Tabs.MiscTab:AddButton({
    Title = "Seastone Cestus (500 melee requiriment)",
    Description = "",
    Callback = function()
        local Players = game:GetService("Players")
        local cache = {}

        local function getUserId(name)
            if cache[name] then return cache[name] end
            local player = Players:FindFirstChild(name)
            if player then
                cache[name] = player.UserId
                return player.UserId
            end

            local id
            pcall(function()
                id = Players:GetUserIdFromNameAsync(name)
            end)
            cache[name] = id
            return id
        end

        local playerName = game.Players.LocalPlayer.Name
        local userId = getUserId(playerName)
        local weaponName = "Seastone Cestus"
        local event = game:GetService("Workspace").UserData["User_" .. userId].UpdateMelee

        event:FireServer(weaponName)
    end,
})
