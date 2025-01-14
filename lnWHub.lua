local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Knuxy92/Ui-linoria/main/Fluent/Fluent.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()


local Window = Fluent:CreateWindow({
    Title = "lnW Hub | Only OPL: Anarchy | " .. Fluent.Version,
    SubTitle = "      By Bankzy",
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
    MainTab = Window:AddTab({ Title = "Main", Icon = "scroll" }),
    FarmTab = Window:AddTab({ Title = "Farm", Icon = "bomb" }),
    FarmFruitTab = Window:AddTab({ Title = "Skills Fruit", Icon = "skull" }),
    MiscTab = Window:AddTab({ Title = "Misc", Icon = "file-code" }),
    PlayerTab = Window:AddTab({ Title = "Players", Icon = "users" }),
    ShopTab = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),
    TeleportTab = Window:AddTab({ Title = "Teleport", Icon = "map-pin" }),
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

local Section = Tabs.MainTab:AddSection("Main Autos")


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
