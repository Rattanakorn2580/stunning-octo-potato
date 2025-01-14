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
            if _G.autoshave then
	for i,v in pairs(game:GetService("Workspace")[SelectPlayer]:GetChildren()) do
if string.find(v.Name, "ShaveServer") then
v:Destroy()
end
	end
            end
        end)
    end
end);

local Cache = {
    DevConfig = {
        ListOfBox1 = {"Common Box"},
        ListOfBox2 = {"Uncommon Box"},
        ListOfDrink = {"Cider+", "Cider", "Lemonade+", "Lemonade", "Juice+", "Juice", "Smoothie+", "Smoothie"},
        ListOfSafeZone = {"SafeZone Sky", "SafeZone LightFarm"},
        ListOfBox3 = {"Rare Box", "Ultra Rare Box"},
        ListOfIsland = {"Grassy", "Kaizu", "Snow Mountains", "Pursuer Boss", "Bar", "Cliffs", "Windmill", "Cave", "Krizma", "Sam", "Green", "Trees", "Pyramid", "Package", "Snowy", "Mountain", "Marine Ford", "Sand Castle", "Forest", "Evil", "Crescent", "Islands", "Town", "Rocky", "Palm", "Sand", "Sand 2", "Small", "Tiny", "Super Tiny", "Grass", "Atlar"},
        ListOfMerchant = {"Rayleigh", "Better Drink", "Drink", "Flail", "QuestFish", "Krizma", "Sword", "Sniper", "Emote", "Affinity", "Fish", "Expertise"},
        ListOfAffinities = {"Devil Fruit ( Left )", "Devil Fruit ( Right )"}
    }
}




local Tabs = {
    UpdateTab = Window:AddTab({ Title = "Update", Icon = "file-code" }),
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

local Section = Tabs.UpdateTab:AddSection("<•> Add Teleport Island")

local Section = Tabs.UpdateTab:AddSection("<•> Coming Soon . . .")

Tabs.MainTab:AddToggle("Toggle", {
    Title = "Anti-AFK",
    Description = " ",
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
    Description = " ",
    Values = {"Cave", "Windmill", "Sam", "Grassy", "Bar", "Krizma", "Kaizu", "Snow Mountains", "Pursuer Boss", "Cliffs", "Green", "Trees", "Pyramid", "Merlin Fish", "Snowy", "Mountain", "Marine Ford", "Sand Castle", "Forest", "Evil", "Crescent", "Islands", "Town", "Rocky", "Palm", "Sand", "Sand 2", "Small", "Tiny", "Super Tiny", "Grass", "Atlar"},
    Multi = false,
    Default = 1,
    Callback = function(Value)
        selectedIsland = Value
    end
})

Tabs.TeleportTab:AddButton({
    Title = "Teleport to Island",
    Description = " ",
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
    Description = " ",
    Values = {"Rayleigh", "Better Drink", "Drink", "Flail", "QuestFish", "Krizma", "Sword", "Sniper", "Emote", "Affinity", "Fish", "Expertise"},
    Multi = false,
    Default = 1,
    Callback = function(Value)
        selectedNpc = Value
    end
})

Tabs.TeleportTab:AddButton({
    Title = "Teleport to NPC",
    Description = " ",
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
    Description = "Teleport SafeZone",
    Values = {"OutSpace SafeZone", "UnderSea SafeZone", "SafeZone LightFarm 1.0", "SafeZone LightFarm 2.0"},
    Multi = false,
    Default = 1,
    Callback = function(Value)
        getgenv().tpsafezone = Value
    end
})

Tabs.TeleportTab:AddButton({
    Title = "Teleport to SafeZone",
    Description = " ",
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

