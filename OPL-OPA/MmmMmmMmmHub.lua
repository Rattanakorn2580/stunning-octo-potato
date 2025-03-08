local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Knuxy92/Ui-linoria/main/Fluent/Fluent.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()


local Window = Fluent:CreateWindow({
    Title = "InW Hub OPA" .. Fluent.Version,
    SubTitle = "      For OPL: Anarchy",
    TabWidth = 100,
    Size = UDim2.fromOffset(600, 350),
    Acrylic = true,
    Theme = "Normal Theme",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Cache = { DevConfig = {} };

Cache.DevConfig["ListOfBox1"] = {"Common Box"};
Cache.DevConfig["ListOfBox2"] = {"Uncommon Box"};
Cache.DevConfig["ListOfDrink"] = {"Cider+", "Lemonade+", "Juice+", "Smoothie+"};
Cache.DevConfig["ListOfSafeZone"] = {"SafeZone Sky", "SafeZone UnderSea", "SafeZone LightFarm1", "SafeZone LightFarm2"};
Cache.DevConfig["ListOfBox3"] = {"Rare Box", "Ultra Rare Box"};


local Tabs = {
    ShopTab = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),
}

Fluent:Notify({
    Title = "InW Hub",
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
L2.Text = "InW\nHub"
L2.TextColor3 = Color3.fromRGB(255, 255, 255)
L2.TextSize = 9.000
L2.Draggable = true
sound.Parent = L2
sound.SoundId = "rbxassetid://965305329"
L2.MouseButton1Click:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
    sound:Play()
end)

local Section = Tabs.ShopTab:AddSection("Auto Reroll Affinities")

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
    Title = "Auto 2.0 Affinities | Right |",
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
