local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Knuxy92/Ui-linoria/main/Fluent/Fluent.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()


local Window = Fluent:CreateWindow({
    Title = "lnW Hub | For OPL: Anarchy | " .. Fluent.Version,
    SubTitle = "      By Bankzy",
    TabWidth = 100,
    Size = UDim2.fromOffset(600, 350),
    Acrylic = true,
    Theme = "Dark Theme",
    MinimizeKey = Enum.KeyCode.LeftControl
})

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
if v.Name == "Menu" then
  v.Frame.C.Frame.Nametag.Text = " ".."Protect Name by: InW Hub"
end
end

-- Cache para configurações
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
    StorageTab = Window:AddTab({ Title = "Storage", Icon = "boxes" }),
    FarmTab = Window:AddTab({ Title = "Farm", Icon = "bomb" }),
    FarmFruitTab = Window:AddTab({ Title = "Skills Fruit", Icon = "skull" }),
    MiscTab = Window:AddTab({ Title = "Misc", Icon = "file-code" }),
    PlayerTab = Window:AddTab({ Title = "Players", Icon = "users" }),
    ShopTab = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),
    TeleportTab = Window:AddTab({ Title = "Teleport", Icon = "map-pin" }),
    WebHookTab = Window:AddTab({ Title = "Webhook", Icon = "rss" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
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
L2.Text = "lnW Hub\nPremium"
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
    Description = "Activates an Anti Afk for you, you will never be kicked for standing still for too long!",
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
                Title = "Anti-AFK Activated",
                Content = "Made by Bankzy",
                Duration = 5
            })

        else
            Fluent:Notify({
                Title = "Anti-AFK Desactivated",
                Content = "Made by Bankzy",
                Duration = 5
            })

        end
    end,
})

Tabs.MainTab:AddToggle("Toggle", {
    Title = "Auto Spawn",
    Description = "Automatically respawns your character!",
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
    Description = "Automatically claims expert mission for you!",
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
    Description = "Automatically claims beri gifts for you!",
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
    Description = "Automatically claims beri gifts for you!",
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
    Description = "Automatically claim challenges for you!",
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

local Section = Tabs.MainTab:AddSection("Game/Server Utilities")

Tabs.MainTab:AddButton({
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

Tabs.MainTab:AddButton({
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

Tabs.MainTab:AddButton({
    Title = "Auto Basic Safe Place",
    Description = "",
    Callback = function()
        local CharacterName = game.Players.LocalPlayer.Character
        local position = CharacterName.HumanoidRootPart.CFrame * CFrame.new(0, 0, -15)
        local char = CharacterName.HumanoidRootPart
        char.CFrame = CFrame.new(-169, 640, -54)

        local b1 = Instance.new("Part",game.Workspace)
        b1.Name = "SafeZoneLightPart1"
        b1.Position = Vector3.new(-169, 630, -54)
        b1.Size = Vector3.new(5, 0.1, 5)
        b1.Anchored = true

    end
})

Tabs.MainTab:AddButton({
    Title = "Auto Improved Safe Place",
    Description = "",
    Callback = function()
        local char = game.Players.LocalPlayer.Character.HumanoidRootPart
        char.CFrame = CFrame.new((math.random(-1000000, 1000000)), (math.random(10000, 50000)), (math.random(-1000000, 1000000)))

        local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-1000000, 1000000)), (math.random(10000, 50000)), (math.random(-1000000, 1000000)))
    SafeZoneOuterSpace.Anchored = true

    end
})

local Section = Tabs.MainTab:AddSection("Auto Reroll Affinities")

local Toggle
local isRunning = false

Tabs.MainTab:AddToggle("Toggle", {
    Title = "Auto 2.0 Affinities | Gems |",
    Description = "This will roll your gem affinity until it is all 2.0!\nNote: This may consume all of your gems.",
    Default = false,
    Callback = function(Value)
        isRunning1 = Value
        if isRunning1 then
            spawn(function()
                while isRunning1 do
                    wait(8)
                    local player = game.Players.LocalPlayer
                    local playerId = player.UserId
                    local userDataName = game.Workspace.UserData["User_" .. playerId]


                    local AffMelee1 = userDataName.Data.DFT1Melee.Value
                    local AffSniper1 = userDataName.Data.DFT1Sniper.Value
                    local AffDefense1 = userDataName.Data.DFT1Defense.Value
                    local AffSword1 = userDataName.Data.DFT1Sword.Value


                    local AffMelee2 = userDataName.Data.DFT2Melee.Value
                    local AffSniper2 = userDataName.Data.DFT2Sniper.Value
                    local AffDefense2 = userDataName.Data.DFT2Defense.Value
                    local AffSword2 = userDataName.Data.DFT2Sword.Value


                    if AffSniper1 == 2 and AffSword1 == 2 and AffMelee1 == 2 and AffDefense1 == 2 then
                        script.Parent:Destroy()
                    end

                    if AffSniper2 == 2 and AffSword2 == 2 and AffMelee2 == 2 and AffDefense2 == 2 then
                        script.Parent:Destroy()
                    end

                    local args1 = {
                        [1] = "DFT1",
                        [2] = false, -- defense
                        [3] = false, -- melee
                        [4] = false, -- sniper
                        [5] = false, -- sword
                        [6] = "Gems"
                    }

                    local args2 = {
                        [1] = "DFT2",
                        [2] = false, -- defense
                        [3] = false, -- melee
                        [4] = false, -- sniper
                        [5] = false, -- sword
                        [6] = "Gems"
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

                    workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args1))
                    workspace:WaitForChild("Merchants"):WaitForChild("AffinityMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args2))
                end
            end)
        end
    end,
})



local ToggleBeri1
local isRunning1 = false

Tabs.MainTab:AddToggle("Toggle", {
    Title = "Auto 2.0 Affinities | Left |",
    Description = "This will roll your beri affinity until it is all 2.0!\nNote: This may consume all of your beri.",
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

Tabs.MainTab:AddToggle("Toggle", {
    Title = "Auto 2.0 Affinities Beri | Right |",
    Description = "This will roll your beri affinity until it is all 2.0!\nNote: This may consume all of your beri.",
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


local Section = Tabs.MainTab:AddSection("Sam Quest's Utilities")

Tabs.MainTab:AddButton({
    Title = "Open Sam",
    Description = "Opens the sam interface for you!",
    Callback = function()
        fireclickdetector(game:GetService("Workspace").Merchants.QuestMerchant.Clickable.ClickDetector)
    end
})

Tabs.MainTab:AddButton({
    Title = "Claim One Compass",
    Description = "Claims only one compass for you!",
    Callback = function()
        local args = {
            [1] = "Claim1"
        }
        
        workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer(unpack(args))
    end
})

Tabs.MainTab:AddButton({
    Title = "Claim All Compasses",
    Description = "Claims all compasses for you!",
    Callback = function()
        local args = {
            [1] = "Claim10"
        }
        
        workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer(unpack(args))
    end
})

Tabs.MainTab:AddToggle("Toggle", {
    Title = "Auto Claim Compasses",
    Description = "Claim compasses whenever they are available!",
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
    Title = "Auto Use Compasses",
    Description = "It will collect all the compasses you have in your inventory!",
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

local Section = Tabs.StorageTab:AddSection("Devil Fruit Utilities")

Tabs.StorageTab:AddToggle("Toggle", {
    Title = "Auto Collect DF",
    Description = "This will collect all the fruits that are dropped or are about to be dropped!",
    Default = false,
    Callback = function(Value)
        BringDF = Value
    end,
})

spawn(function()
    while wait() do
        if BringDF then
            pcall(function()
                for _, v in pairs(game.Workspace.Trees.Tree.Model:GetChildren()) do 
                    if v:IsA("Tool") then 
                        fireclickdetector(v.Main.ClickDetector)
                    end
                end
            end)
        end
    end
end)

local Section = Tabs.StorageTab:AddSection("Storage Utitilities")

local rareFruits = {
    "Vampire Fruit", "Quake Fruit", "Phoenix Fruit", "Dark Fruit",
    "Ope Fruit", "Venom Fruit", "Candy Fruit", "Hollow Fruit",
    "Chilly Fruit", "Gas Fruit", "Flare Fruit", "Light Fruit",
    "Smoke Fruit", "Sand Fruit", "Rumble Fruit", "Magma Fruit",
    "Snow Fruit", "Gravity Fruit", "Plasma Fruit"
}

local Cache = {
    Player = { Inputfruitlist = {}, Inputfruitname = "" },
    Boolean = { StorageUsingGroup = {}, StorageKeepShiny = false }
}

local function CheckStorage(Number)
    local storageFrame = game.Players.LocalPlayer.PlayerGui.Storage.Frame["StoredDF" .. Number]
    return storageFrame and storageFrame.Button.Text == "Store" and storageFrame.Visible
end

local function StoreFruit(Index, Fruit)
    local storagePath = game:GetService("Workspace").UserData["User_" .. game.Players.LocalPlayer.UserId].StoredDFRequest
    game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
    Fruit.Parent = game.Players.LocalPlayer.Character
    storagePath:FireServer("StoredDF" .. Index)
end

local function HandleFruits()
    for Index, IsActive in pairs(Cache.Boolean.StorageUsingGroup) do
        if IsActive and CheckStorage(Index) then
            for _, Fruit in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if Fruit:IsA("Tool") then
                    for _, FruitName in pairs(Cache.Player.Inputfruitlist) do
                        if string.match(string.lower(Fruit.Name), string.lower(FruitName)) or 
                           (Cache.Boolean.StorageKeepShiny and Fruit:FindFirstChild("Main") and Fruit.Main:FindFirstChild("AuraAttachment")) then
                            StoreFruit(Index, Fruit)
                            break
                        end
                    end
                end
            end
        end
    end
end

Tabs.StorageTab:AddInput("Input", {
    Title = "Devil Fruit Name",
    Description = "Enter the name of the fruit you want to add to the list!",
    Default = "",
    Placeholder = "Enter fruit name...",
    Numeric = false,
    Callback = function(Text)
        Cache.Player.Inputfruitname = string.lower(tostring(Text))
    end
})

Tabs.StorageTab:AddButton({
    Title = "Add Fruit",
    Description = "Add the typed fruit to the list!",
    Callback = function()
        table.insert(Cache.Player.Inputfruitlist, Cache.Player.Inputfruitname)
    end
})

Tabs.StorageTab:AddButton({
    Title = "Delete Last Fruit",
    Description = "Delete the last fruit added to the list!",
    Callback = function()
        table.remove(Cache.Player.Inputfruitlist, #Cache.Player.Inputfruitlist)
    end
})

Tabs.StorageTab:AddButton({
    Title = "Add Good Devil Fruit",
    Description = "Adds all rare and ultra rare fruits to list!",
    Callback = function()
        for _, value in pairs(rareFruits) do
            table.insert(Cache.Player.Inputfruitlist, value)
        end
    end
})

Tabs.StorageTab:AddButton({
    Title = "Print Devil Fruit List",
    Description = "Displays the list of fruits in your console [F9]",
    Callback = function()
        print("Devil Fruits in List:")
        for Index, Value in ipairs(Cache.Player.Inputfruitlist) do
            print(string.format("Index: %d, Value: %s", Index, Value))
        end
    end
})

Tabs.StorageTab:AddToggle("Keep Aura Fruits", {
    Title = "Keep All Aura Fruits",
    Default = false,
    Callback = function(Value)
        Cache.Boolean.StorageKeepShiny = Value
    end
})

for Index = 1, 12 do
    Tabs.StorageTab:AddToggle("Storage Toggle " .. Index, {
        Title = "Storage No." .. Index,
        Default = false,
        Callback = function(Value)
            Cache.Boolean.StorageUsingGroup[Index] = Value
        end
    })
end

spawn(function()
    while wait(1) do
        pcall(HandleFruits)
    end
end)


local Section = Tabs.FarmTab:AddSection("Cannon Ball Farm")

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Cannon Ball All Mobs",
    Description = "Kill all mobs with the cannon ball!",
    Default = false,
    Callback = function(ACN)
        _G.autocannon = ACN
    end    
})

function ActivateHaki(state)
    pcall(function()
        if state then
            game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
        else
            game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
        end
    end)
end

spawn(function()
    while wait(0.5) do
        pcall(function()
            if _G.autocannon then
                ActivateHaki(true)
                for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if (string.find(v.Name, " Boar") or string.find(v.Name, "Crab") or 
                        string.find(v.Name, "Angry") or string.find(v.Name, "Bandit") or 
                        string.find(v.Name, "Thief") or string.find(v.Name, "Vokun") or 
                        string.find(v.Name, "Buster") or string.find(v.Name, "Freddy") or 
                        string.find(v.Name, "Bruno") or string.find(v.Name, "Thug") or 
                        string.find(v.Name, "Gunslinger") or string.find(v.Name, "Gunner") or 
                        string.find(v.Name, "Cave")) and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v.HumanoidRootPart.Anchored = true
                        v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 4, -15)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                    end
                end
                ActivateHaki(false)
            end
        end)
    end
end)

spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if _G.autocannon then
                local Plr = game.Players.LocalPlayer
                local toolname = "Cannon Ball"
                if Plr.Backpack:FindFirstChild(toolname) and not Plr.Character:FindFirstChild(toolname) and not Plr.Character:FindFirstChildOfClass("Tool") then
                    Plr.Character.Humanoid:EquipTool(Plr.Backpack:FindFirstChild(toolname))
                end
                local cannon = Plr.Character:FindFirstChild(toolname)
                if cannon then
                    local args = {
                        [1] = CFrame.new(Vector3.new(Plr.Character.HumanoidRootPart.Position))
                    }
                    cannon.RemoteEvent:FireServer(unpack(args))
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if _G.autocannon then
                for _, v in pairs(game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:GetChildren()) do
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
            end
        end)
    end
end)

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Cannon Ball All Players",
    Description = "Kill all players with the cannon ball!",
    Default = false,
    Callback = function(AFP)
        _G.autofarmplayers = AFP
    end    
})

function ActivateHaki(state)
    pcall(function()
        if state then
            game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
        else
            game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
        end
    end)
end

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autofarmplayers then
                -- Iterar por todos os jogadores no jogo
                for _, player in pairs(game.Players:GetPlayers()) do
                    -- Verificar se o jogador não é o próprio jogador e se está presente na Workspace
                    if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        -- Configurar para trazer o jogador para uma posição próxima
                        local humanoidRootPart = player.Character.HumanoidRootPart
                        humanoidRootPart.CanCollide = false
                        humanoidRootPart.Anchored = true
                        humanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 4, -15)

                        -- Checar e lidar com jogadores eliminados (opcional)
                        if player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health == 0 then
                            humanoidRootPart.Anchored = false
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if _G.autofarmplayers then
                local Plr = game.Players.LocalPlayer
                local toolname = "Cannon Ball"

                if Plr.Backpack:FindFirstChild(toolname) and not Plr.Character:FindFirstChild(toolname) and not Plr.Character:FindFirstChildOfClass("Tool") then
                    Plr.Character.Humanoid:EquipTool(Plr.Backpack:FindFirstChild(toolname))
                end

                local cannon = Plr.Character:FindFirstChild(toolname)
                if cannon then
                    local args = {
                        [1] = CFrame.new(Vector3.new(Plr.Character.HumanoidRootPart.Position))
                    }
                    cannon.RemoteEvent:FireServer(unpack(args))
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if _G.autofarmplayers then
                for _, v in pairs(game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:GetChildren()) do
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
            end
        end)
    end
end)

local selectedPlayers = {}
local Tpplr = false


local PlayerList = {}
for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
    table.insert(PlayerList, player.Name)
end


local function updatePlayerList()
    local newPlayerList = {}
    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        table.insert(newPlayerList, player.Name)
    end
    PlayerList = newPlayerList
    MultiDropdown:Refresh(PlayerList)
end


game.Players.PlayerAdded:Connect(function(player)
    table.insert(PlayerList, player.Name)
    updatePlayerList()
end)

game.Players.PlayerRemoving:Connect(function(player)
    for i, v in pairs(PlayerList) do
        if v == player.Name then
            table.remove(PlayerList, i)
            break
        end
    end
    updatePlayerList()
end)


local MultiDropdown = Tabs.FarmTab:AddDropdown("MultiDropdown", {
    Title = "Select Players Cannon Ball Farm",
    Description = "You can select more than one player to kill with the Cannon Ball!",
    Values = PlayerList, 
    Multi = true,
    Default = {},
    Callback = function(selectedValues)
        selectedPlayers = {}
        for value, state in pairs(selectedValues) do
            if state then
                table.insert(selectedPlayers, value)
            end
        end
    end
})

MultiDropdown.Callback = function(selectedValues)
    selectedPlayers = {}
    for value, state in pairs(selectedValues) do
        if state then
            table.insert(selectedPlayers, value)
            SelectPlayer = value 
            break
        end
    end
end

local function BringPlayerToPosition(targetPlayerName)
    local targetPlayer = game.Players:FindFirstChild(targetPlayerName)
    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local playerRootPart = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if playerRootPart then
            local targetRootPart = targetPlayer.Character.HumanoidRootPart

            targetRootPart.CanCollide = false
            targetRootPart.Anchored = true
            targetRootPart.CFrame = playerRootPart.CFrame * CFrame.new(0, 4, -15)
        end
    end
end

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Cannon Ball Selected Players",
    Description = "Kill players selecteds with Cannonn Ball!",
    Default = false,
    Callback = function(AFP)
        _G.autofarmSelectedPlayer = AFP -- Controla o estado do autofarm para o jogador selecionado
    end
})

-- Função para ativar/desativar Haki
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

-- AutoFarm para o jogador selecionado
spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if _G.autofarmSelectedPlayer and SelectPlayer ~= "" then
                local targetPlayer = game.Players:FindFirstChild(SelectPlayer)
                if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    -- Configurar para trazer o jogador para perto
                    local humanoidRootPart = targetPlayer.Character.HumanoidRootPart
                    humanoidRootPart.CanCollide = false
                    humanoidRootPart.Anchored = true
                    humanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 4, -15)

                    -- Checar e lidar com jogadores eliminados (opcional)
                    if targetPlayer.Character:FindFirstChild("Humanoid") and targetPlayer.Character.Humanoid.Health == 0 then
                        humanoidRootPart.Anchored = false
                    end
                end
            end
        end)
    end
end)

-- Equipar e usar Cannon Ball automaticamente no jogador selecionado
spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if _G.autofarmSelectedPlayer and SelectPlayer ~= "" then
                local Plr = game.Players.LocalPlayer
                local targetPlayer = game.Players:FindFirstChild(SelectPlayer)
                local toolname = "Cannon Ball"

                -- Verificar se o Cannon Ball está no Backpack e equipá-lo
                if Plr.Backpack:FindFirstChild(toolname) and not Plr.Character:FindFirstChild(toolname) and not Plr.Character:FindFirstChildOfClass("Tool") then
                    Plr.Character.Humanoid:EquipTool(Plr.Backpack:FindFirstChild(toolname))
                end

                -- Usar o Cannon Ball no jogador selecionado
                local cannon = Plr.Character:FindFirstChild(toolname)
                if cannon and targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local args = {
                        [1] = targetPlayer.Character.HumanoidRootPart.CFrame -- Atacar o jogador-alvo
                    }
                    cannon.RemoteEvent:FireServer(unpack(args))
                end
            end
        end)
    end
end)


local Section = Tabs.FarmTab:AddSection("Weapon Farm")

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Farm Mobs [Weapon]",
    Description = "Kill mobs with your weapon equipped!",
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
    Description = "Choose a weapon to equip automatically!",
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
    Description = "Automatically equip the selected weapon!",
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
    Description = "Just an auto clicker!\nNote: You don't need to activate it to auto farm weapon.",
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

local Section = Tabs.FarmTab:AddSection("Other Farms")

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Auto Collect Chests",
    Description = "Collect all the chests for yourself!",
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
    Description = "Collect a package for you!",
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
    Description = "Delivery the packages for you!",
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
    Description = "Farm stats for you!\nNote: Cause lag.",
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
    Description = "This will catch, cook and sell the fish in a safe place.",
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
    Description = "When you reach level 1000, he will automatically acquire haki for you!",
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
    Description = "Select the amount of haki that will be consumed to farm!\nNote: The quantity may not be exact.",
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
    Description = "Select the farm speed!\nNote: High speeds are not recommended.",
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
    Description = "This will farm your haki according to the sliders setting!",
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

local Section = Tabs.FarmFruitTab:AddSection("This shit causes a lot of lag!")
local Section = Tabs.FarmFruitTab:AddSection("Options and Utilities")

Tabs.FarmFruitTab:AddToggle("Toggle", {
    Title = "100% Skill",
    Description = "This will make some skills come out 100% charged without you having to hold them down to charge!\nIMPORTANT: Activate only once!",
    Default = false,
    Callback = function(Value)
        _G.auto100rate = Value
        if _G.auto100rate then
            aaxc = hookmetamethod(game, "__namecall", function(self, ...)
                local args = { ... }
                local method = getnamecallmethod()
                if method == "FireServer" or method == "InvokeServer" then
                    if self.Name == "RemoteEvent" and args[3] == "StopCharging" and _G.auto100rate then
                        args[6] = 100 -- Define o valor como 100
                        return aaxc(self, unpack(args))
                    end
                end
                return aaxc(self, ...)
            end)
        end
    end,
})

local Section = Tabs.MiscTab:AddSection("Local Player Utilities")

local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local BlackScreen


Tabs.MiscTab:AddToggle("ToggleBlackScreen", {
    Title = "Black Screen",
    Description = "This will turn your screen black, good for afk farming at night!",
    Default = false,
    Callback = function(Value)
        if Value then
            if not BlackScreen then
                BlackScreen = Instance.new("ScreenGui")
                BlackScreen.Name = "BlackScreen"
                BlackScreen.Parent = PlayerGui
                BlackScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BlackScreen.ResetOnSpawn = false

                local Frame = Instance.new("Frame")
                Frame.Parent = BlackScreen
                Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                Frame.Size = UDim2.new(0, game:GetService("GuiService"):GetScreenResolution().X, 0, game:GetService("GuiService"):GetScreenResolution().Y)
            end
        else
            if BlackScreen then
                BlackScreen:Destroy()
                BlackScreen = nil
            end
        end
    end
})

local Input = Tabs.MiscTab:AddInput("Input", {
    Title = "Walk Speed",
    Description = "Change speed to the value you entered! ",
    Default = "",
    Placeholder = "Enter Walk Speed: ",
    Numeric = true, 
    Finished = false, 
    Callback = function(txt)
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("CharacterTrait") then
            player.Character.CharacterTrait.WS.Value = tonumber(txt) or 1
        end
    end
})

local Input = Tabs.MiscTab:AddInput("Input", {
    Title = "Jump Power",
    Description = "Change jump power to the value you entered! ",
    Default = "",
    Placeholder = "Enter Jump Power: ",
    Numeric = true, 
    Finished = false, 
    Callback = function(txt)
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.JumpPower = tonumber(txt) or player.Character.Humanoid.JumpPower
        end
    end
})

local Input = Tabs.MiscTab:AddInput("Input", {
    Title = "Hip Height",
    Description = "Change the height you walk!",
    Default = "",
    Placeholder = "Enter Hip Height: ",
    Numeric = true,
    Finished = false,
    Callback = function(txt)
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.HipHeight = tonumber(txt) or player.Character.Humanoid.HipHeight
        end
    end
})

Tabs.MiscTab:AddToggle("Toggle", {
    Title = "Auto Buso Haki ON",
    Description = "This will activate and deactivate your buso haki in a loop!",
    Default = false,
    Callback = function(Value)
        OnHaki = Value
    end,
})

spawn(function()
    while wait(0) do
        if OnHaki then
            pcall(function()
                game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
            end)
            wait(0.5)
            if OnHaki then
                pcall(function()
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end)
                wait(0.5)
            end
        else
            wait(0.5) 
        end
    end
end)

local Section = Tabs.MiscTab:AddSection("Useful Options")

Tabs.MiscTab:AddToggle("Toggle", {
    Title = "Anchor Your Self",
    Description = "Anchored like an anchor!",
    Default = false,
    Callback = function(value)
        local Player = game.Players.LocalPlayer.Character
        if Player and Player:FindFirstChild("HumanoidRootPart") then
            Player.HumanoidRootPart.Anchored = value
        end
    end
})

local userInputService = game:GetService("UserInputService")
local tweenService = game:GetService("TweenService")
local camera = workspace.CurrentCamera

-- Define valores iniciais
local flightEnabled = false
local flightSpeed = 3

-- Cria instâncias para BodyVelocity e BodyGyro
local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.MaxForce = Vector3.new(1e5, 1e5, 1e5)
bodyVelocity.Velocity = Vector3.zero

local bodyGyro = Instance.new("BodyGyro")
bodyGyro.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
bodyGyro.CFrame = CFrame.new()

-- Obtenha jogador e personagem
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local primaryPart = character.PrimaryPart

-- Toggle para ativar/desativar a função de voo
Tabs.MiscTab:AddToggle("FlightToggle", {
    Title = "Enable Flight",
    Description = "[ BETA ]",
    Default = false,
    Callback = function(value)
        flightEnabled = value
        if not flightEnabled then
            -- Desativa efeitos de voo
            bodyVelocity.Parent = nil
            bodyGyro.Parent = nil
        end
    end,
})

-- Slider para ajustar a velocidade de voo
Tabs.MiscTab:AddSlider("FlightSpeed", {
    Title = "Flight Speed",
    Description = "Adjust the flight speed!",
    Default = flightSpeed,
    Min = 1,
    Max = 25,
    Rounding = 1,
    Callback = function(value)
        flightSpeed = value
    end,
})

-- Loop principal para atualizar a lógica do voo
local function flightLoop()
    while true do
        wait()
        if flightEnabled and primaryPart then
            local camCFrame = camera.CFrame
            local velocity = Vector3.zero

            -- Detecta as teclas pressionadas
            if userInputService:IsKeyDown(Enum.KeyCode.W) then
                velocity += camCFrame.LookVector
            end
            if userInputService:IsKeyDown(Enum.KeyCode.S) then
                velocity -= camCFrame.LookVector
            end
            if userInputService:IsKeyDown(Enum.KeyCode.D) then
                velocity += camCFrame.RightVector
            end
            if userInputService:IsKeyDown(Enum.KeyCode.A) then
                velocity -= camCFrame.RightVector
            end
            if userInputService:IsKeyDown(Enum.KeyCode.Space) then
                velocity += Vector3.yAxis
            end
            if userInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
                velocity -= Vector3.yAxis
            end

            -- Aplica a velocidade ao personagem
            bodyVelocity.Velocity = velocity * flightSpeed * 45
            bodyVelocity.Parent = primaryPart
            bodyGyro.Parent = primaryPart
        else
            -- Desativa o voo
            bodyVelocity.Parent = nil
            bodyGyro.Parent = nil
        end
    end
end

spawn(flightLoop)


local camera = workspace.CurrentCamera

local defaultFOV = 70 
camera.FieldOfView = defaultFOV


Tabs.MiscTab:AddSlider("FOVSlider", {
    Title = "Field of View",
    Description = "Adjust the camera's field of view!",
    Default = defaultFOV,
    Min = 50, 
    Max = 120,
    Rounding = 1,
    Callback = function(value)
        camera.FieldOfView = value
    end,
})


Tabs.MiscTab:AddButton({
    Title = "Low Graphic Mode",
    Description = "It will make your game run smoother and have more FPS!\nNote: There is no way to disable it, only rejoin.",
    Callback = function(Value)
        if Value then
            -- Apply low graphic settings
            local terrain = workspace:FindFirstChildOfClass('Terrain')
            if terrain then
                terrain.WaterWaveSize = 0
                terrain.WaterWaveSpeed = 0
                terrain.WaterReflectance = 0
                terrain.WaterTransparency = 0
            end
            
            game:GetService("Lighting").GlobalShadows = not Value
            game:GetService("Lighting").FogEnd = Value and 9e9 or 150
            
            settings().Rendering.QualityLevel = Value and 1 or 2

            -- Material and property changes
            for i, v in pairs(game:GetDescendants()) do
                if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                    v.Material = "Plastic"
                    v.Reflectance = 0
                elseif v:IsA("Decal") then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                end
            end

            -- Disable lighting effects
            for i, v in pairs(game:GetService("Lighting"):GetDescendants()) do
                if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
                    v.Enabled = not Value
                end
            end

            -- Clean performance-affecting objects
            workspace.DescendantAdded:Connect(function(child)
                if child:IsA('ForceField') then
                    child:Destroy()
                elseif child:IsA('Sparkles') then
                    child:Destroy()
                elseif child:IsA('Smoke') or child:IsA('Fire') then
                    child:Destroy()
                end
            end)
        end
    end,
})

local jesusModeEnabled = false
Tabs.MiscTab:AddToggle("Toggle", {
    Title = "Soft Fall / Float",
    Description = "Light as a feather!",
    Default = false,
        Callback = function(jesusModeEnabled)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")

        if jesusModeEnabled then
            jesusModeConnection = game:GetService("RunService").Heartbeat:Connect(function()
                if rootPart.Velocity.Y < 0 then
                    rootPart.Velocity = Vector3.new(rootPart.Velocity.X, 0, rootPart.Velocity.Z)
                end
            end)
        else
            if jesusModeConnection then
                jesusModeConnection:Disconnect()
                jesusModeConnection = nil
            end
        end
    end
})

local Section = Tabs.MiscTab:AddSection("Yoru Utilities")

local Slider = Tabs.MiscTab:AddSlider("Slider", 
{
    Title = "Yoru Speed",
    Description = "Here you can configure the attack speed of yoru farm!",
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
    Description = "This will activate yoru spam!\nNote: Only works for mobile/emulator, if you run it on PC you are instantly kicked by anti cheat.",
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

local Section = Tabs.PlayerTab:AddSection("Player Dupe")

Tabs.PlayerTab:AddButton({
    Title = "No Save Data!!!",
    Description = "When used, the player will not save any data while using it.",
    Callback = function()
        workspace.UserData["User_"..game.Players.LocalPlayer.UserId].UpdateClothing_Extras:FireServer("A", "\255", 34) game:GetService("Players").LocalPlayer.Character.CharacterTrait.ClothingTrigger:FireServer()
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
    Description = "Choose a player to TP or Spectate!",
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
    Description = "Teleport behind the selected player.",
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
    Title = "Spectate Player",
    Description = "Spectate the selected player.",
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

local noclipEnabled = false 


local function toggleNoclip(state)
    noclipEnabled = state
    if noclipEnabled then
    else
    end
end

spawn(function()
    while true do
        if noclipEnabled then
            local character = game.Players.LocalPlayer.Character
            if character then
                for _, part in pairs(character:GetDescendants()) do
                    if part:IsA("BasePart") and part.CanCollide then
                        part.CanCollide = false
                    end
                end
            end
        end
        wait(0.1) 
    end
end)

Tabs.PlayerTab:AddToggle("Toggle", {
    Title = "No Clip",
    Description = "You can walk through everthing!",
    Default = false,
    Callback = function(enabled)
        toggleNoclip(enabled)
    end
})

Tabs.PlayerTab:AddButton({
    Title = "All Seeing Eye",
    Description = "You can see everyone anywhere!",
    Callback = function()
        local players = game:GetService("Players")
        local runService = game:GetService("RunService")
        local starterGui = game:GetService("StarterGui")  
        local localPlayer = players.LocalPlayer
        local distanceThreshold = 20

        local function createESP(player)
            local highlight = Instance.new("Highlight")
            highlight.Name = "ESPHighlight"
            highlight.FillTransparency = 0.5
            highlight.OutlineTransparency = 0.5
            highlight.OutlineColor = Color3.fromRGB(255, 0, 0) -- Cor vermelha para o contorno
            highlight.FillColor = Color3.fromRGB(255, 0, 0) -- Cor vermelha para o preenchimento

            highlight.Adornee = player.Character
            highlight.Parent = player.Character

            local billboardGui = Instance.new("BillboardGui")
            billboardGui.Name = "PlayerName"
            billboardGui.Adornee = player.Character:FindFirstChild("HumanoidRootPart")
            billboardGui.Size = UDim2.new(0, 200, 0, 50)
            billboardGui.StudsOffset = Vector3.new(0, 2, 0)
            billboardGui.AlwaysOnTop = true

            local textLabel = Instance.new("TextLabel", billboardGui)
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.Text = player.Name
            textLabel.TextColor3 = Color3.fromRGB(255, 0, 0) -- Cor vermelha para o nome
            textLabel.TextStrokeTransparency = 0.5
            textLabel.TextScaled = false  -- Desabilita o escalonamento automático
            textLabel.TextSize = 20  -- Define o tamanho fixo do texto (em pixels)

            billboardGui.Parent = player.Character
        end

        local function updateESP()
            for _, player in pairs(players:GetPlayers()) do
                if player ~= localPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local highlight = player.Character:FindFirstChild("ESPHighlight")
                    if not highlight then
                        createESP(player)
                        highlight = player.Character:FindFirstChild("ESPHighlight")
                    end

                    highlight.FillColor = Color3.fromRGB(255, 0, 0) 
                    highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
                end
            end
        end

        for _, player in pairs(players:GetPlayers()) do
            if player ~= localPlayer then
                createESP(player)
            end
        end

        players.PlayerAdded:Connect(function(player)
            if player ~= localPlayer then
                createESP(player)
            end
        end)

        players.PlayerRemoving:Connect(function(player)
            if player.Character and player.Character:FindFirstChild("ESPHighlight") then
                player.Character:FindFirstChild("ESPHighlight"):Destroy()
            end
            if player.Character and player.Character:FindFirstChild("PlayerName") then
                player.Character:FindFirstChild("PlayerName"):Destroy()
            end
        end)

        runService.RenderStepped:Connect(function()
            updateESP()
        end)

        Fluent:Notify({
            Title = "All Seeing Eye Activated",
            Content = "Made by Plug ",
            Duration = 5
        })

    end,
})

local bringPlayersActive = false 

function BringPlayerToPosition(targetPlayer)
    if targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local playerRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
        local targetRootPart = targetPlayer.Character.HumanoidRootPart

        targetRootPart.CanCollide = false
        targetRootPart.Size = Vector3.new(10, 10, 10)
        targetRootPart.Anchored = true
        targetRootPart.CFrame = playerRootPart.CFrame * CFrame.new(0, 4, -15)
    end
end


spawn(function()
    while task.wait(0.5) do
        if bringPlayersActive then
            pcall(function()
                for _, player in pairs(game.Players:GetPlayers()) do
                    if player ~= game.Players.LocalPlayer then
                        BringPlayerToPosition(player)
                    end
                end
            end)
        end
    end
end)

local Section = Tabs.PlayerTab:AddSection("Player Kill")

Tabs.PlayerTab:AddToggle("Toggle", { 
    Title = "Bring Players For Farm With Fruits",
    Description = "Automatically brings all players to your position!",
    Default = false,
    Callback = function(state)
        bringPlayersActive = state
    end
})



local selectedPlayers = {}
local Tpplr = false


local PlayerList = {}
for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
    table.insert(PlayerList, player.Name)
end


local function updatePlayerList()
    local newPlayerList = {}
    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        table.insert(newPlayerList, player.Name)
    end
    PlayerList = newPlayerList
    MultiDropdown:Refresh(PlayerList)
end


game.Players.PlayerAdded:Connect(function(player)
    table.insert(PlayerList, player.Name)
    updatePlayerList()
end)

game.Players.PlayerRemoving:Connect(function(player)
    for i, v in pairs(PlayerList) do
        if v == player.Name then
            table.remove(PlayerList, i)
            break
        end
    end
    updatePlayerList()
end)


local MultiDropdown = Tabs.PlayerTab:AddDropdown("MultiDropdown", {
    Title = "Select Players to Farm",
    Description = "You can select more than one player to kill with Farm Fruit!",
    Values = PlayerList, 
    Multi = true,
    Default = {},
    Callback = function(selectedValues)
        selectedPlayers = {}
        for value, state in pairs(selectedValues) do
            if state then
                table.insert(selectedPlayers, value)
            end
        end
        print("Multidropdown changed:", table.concat(selectedPlayers, ", "))
    end
})

local function BringPlayerToPosition(targetPlayerName)
    local targetPlayer = game.Players:FindFirstChild(targetPlayerName)
    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local playerRootPart = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if playerRootPart then
            local targetRootPart = targetPlayer.Character.HumanoidRootPart

            targetRootPart.CanCollide = false
            targetRootPart.Anchored = true
            targetRootPart.CFrame = playerRootPart.CFrame * CFrame.new(0, 4, -15)
        end
    end
end

Tabs.PlayerTab:AddToggle("Toggle", {
    Title = "Choose Bring Players",
    Description = "Automatically brings choose players to your position!",
    Default = false,
    Callback = function(state)
        Tpplr = state 
        if not Tpplr then
            for _, playerName in ipairs(selectedPlayers) do
                local targetPlayer = game.Players:FindFirstChild(playerName)
                if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    targetPlayer.Character.HumanoidRootPart.Anchored = false
                end
            end
        end
    end
})

spawn(function()
    while task.wait(0.5) do
        if Tpplr and game.Players.LocalPlayer.Character then
            pcall(function()
                for _, playerName in ipairs(selectedPlayers) do
                    BringPlayerToPosition(playerName)
                end
            end)
        end
    end
end)

local VirtualInputManager = game:GetService("VirtualInputManager")

-- Tabela de teclas na ordem especificada
local keyToggles = {
    Z = false,
    X = false,
    C = false,
}

-- Criação das seções, toggles e parágrafos
local function setupKeyToggles()
    -- Associação de teclas às seções
    local sectionMapping = {
        Z = {
            section = Tabs.PlayerTab:AddSection("Magma Killer"),
            paragraph = {
                Title = "Great Eruption",
                Content = "Add the above skill to the respective key [Z]\nNote: Click on settings and change if necessary."
            }
        },
        X = {
            section = Tabs.PlayerTab:AddSection("Flare Killer"),
            paragraph = {
                Title = "Fire Fist",
                Content = "Add the above skill to the respective key [X]\nNote: Click on settings and change if necessary."
            }
        },
        C = {
            section = Tabs.PlayerTab:AddSection("Candy Killer"),
            paragraph = {
                Title = "Jawbreaker",
                Content = "Add the above skill to the respective key [C]\nNote: Click on settings and change if necessary."
            }
        }
    }

    -- Criação de toggles e parágrafos dinamicamente
    for key, data in pairs(sectionMapping) do
        local section = data.section

        -- Adiciona o parágrafo à seção
        section:AddParagraph(data.paragraph)

        -- Adiciona o toggle à seção
        section:AddToggle(key .. "Toggle", {
            Title = "Spam Key " .. key,
            Description = "Toggle to spam the " .. key .. " key.",
            Default = false,
            Callback = function(state)
                keyToggles[key] = state
            end
        })
    end
end

-- Configuração dos toggles
setupKeyToggles()

-- Loop para envio de eventos de tecla
spawn(function()
    while wait(0) do
        for key, state in pairs(keyToggles) do
            if state then
                pcall(function()
                    VirtualInputManager:SendKeyEvent(true, key, false, game)
                    task.wait(0)
                    VirtualInputManager:SendKeyEvent(false, key, false, game)
                end)
            end
        end
    end
end)

local Section = Tabs.ShopTab:AddSection("Drink Utilities - Bar")

Tabs.ShopTab:AddButton({
    Title = "Instant Drink",
    Description = "Instantly consumes all drinks in your inventory for you!",
    Callback = function()
        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") and (string.find(v.Name, "Juice") 
                or string.find(v.Name, "Milk") 
                or string.find(v.Name, "Cider") 
                or string.find(v.Name, "Lemonade") 
                or string.find(v.Name, "Smoothie") 
                or string.find(v.Name, "Golden")) then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                game:GetService('VirtualUser'):CaptureController()
                game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
            end
        end
    end,
})

local Section = Tabs.ShopTab:AddSection("Auto Buy Drinks")

local selectedDrinks = {} 
local autoBuyEnabled = false 
local drinkQuantity = 1 


local MultiDrinkDropdown = Tabs.ShopTab:AddDropdown("MultiDrinkDropdown", {
    Title = "Select Drinks to Auto Buy",
    Description = "Choose multiple drinks from the list",
    Values = {"Cider+", "Lemonade+", "Juice+", "Smoothie+"},
    Multi = true,
    Default = {},
    Callback = function(value)
        selectedDrinks = value 
        local selectedList = {}
        for drink, isSelected in pairs(value) do
            if isSelected then
                table.insert(selectedList, drink)
            end
        end
    end
})


Tabs.ShopTab:AddToggle("AutoBuyToggle", {
    Title = "Enable Auto Buy",
    Description = "Toggle to enable or disable auto-buying the selected drinks.",
    Default = false, 
    Callback = function(value)
        autoBuyEnabled = value 
        if value then
        else
        end
    end
})

local QuantitySlider = Tabs.ShopTab:AddSlider("QuantitySlider", {
    Title = "Set Drink Quantity",
    Description = "Choose how many drinks to buy for each selected drink",
    Default = 1, 
    Min = 1,
    Max = 500, 
    Rounding = 0, 
    Callback = function(value)
        drinkQuantity = value 
    end
})

spawn(function()
    while wait(0.5) do
        pcall(function()
            if autoBuyEnabled and next(selectedDrinks) then
                for drink, isSelected in pairs(selectedDrinks) do
                    if isSelected then
                        local purchasedCount = 0 

                        for _ = 1, drinkQuantity do
                            if purchasedCount < drinkQuantity then
                                local args = {
                                    [1] = drink
                                }
                                workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(unpack(args))
                                purchasedCount = purchasedCount + 1
                            else
                                break
                            end
                        end

                        if purchasedCount >= drinkQuantity then
                            Fluent:Notify({
                                Title = "Purchase Complete",
                                Content = "Bought " .. purchasedCount .. " of " .. drink,
                                Duration = 5
                            })
                        end
                    end
                end
                autoBuyEnabled = false
            end
        end)
    end
end)


local selectedSword = nil
local selectedGun = nil
local swordAutoBuyEnabled = false
local gunAutoBuyEnabled = false

local Section = Tabs.ShopTab:AddSection("Sword Shop")

local SwordDropdown = Tabs.ShopTab:AddDropdown("SwordDropdown", {
    Title = "Select Sword",
    Description = "",
    Values = {"Dagger", "Wakizashi", "Tachi", "Katana", "Flail", "Krizma"},
    Multi = false,
    Default = nil,
    Callback = function(value)
        selectedSword = value
    end
})

Tabs.ShopTab:AddToggle("SwordAutoBuyToggle", {
    Title = "Buy Selected Sword",
    Description = "",
    Default = false,
    Callback = function(value)
        swordAutoBuyEnabled = value
        if value then
        else
        end
    end
})

local Section = Tabs.ShopTab:AddSection("Guns Shop")

local GunDropdown = Tabs.ShopTab:AddDropdown("GunDropdown", {
    Title = "Select Gun to Buy",
    Description = "",
    Values = {"Slingshot", "Stars", "Crossbow", "Flintlock", "Cannon"},
    Multi = false,
    Default = nil,
    Callback = function(value)
        selectedGun = value
    end
})

Tabs.ShopTab:AddToggle("GunAutoBuyToggle", {
    Title = "Buy Selected Gun",
    Description = "",
    Default = false,
    Callback = function(value)
        gunAutoBuyEnabled = value
        if value then
        else
        end
    end
})

local function buySword(swordName)
    local prices = {
        Dagger = 1000,
        Wakizashi = 5000,
        Tachi = 7500,
        Katana = 10000,
        Flail = 50000,
        Krizma = 80000
    }
    local price = prices[swordName]
    if price then
        local Event = game:GetService("Workspace").Merchants.SwordMerchant.Clickable.Retum
        Event:FireServer(swordName, price)
    else
    end
end

local function buyGun(gunName)
    local prices = {
        Slingshot = 1000,
        Stars = 5000,
        Crossbow = 7500,
        Flintlock = 10000,
        Cannon = 400000
    }
    local price = prices[gunName]
    if price then
        local Event = game:GetService("Workspace").Merchants.SniperMerchant.Clickable.Retum
        if gunName == "Cannon" then
            Event = game:GetService("Workspace").Merchants.HeavyWeaponsMerchant.Clickable.Retum
        end
        Event:FireServer(gunName, price)
    else
    end
end

spawn(function()
    while wait(1) do
        if swordAutoBuyEnabled and selectedSword then
            buySword(selectedSword)
        end
    end
end)

spawn(function()
    while wait(1) do
        if gunAutoBuyEnabled and selectedGun then
            buyGun(selectedGun)
        end
    end
end)

local Section = Tabs.ShopTab:AddSection("Fake Weapons Shop")


Tabs.ShopTab:AddButton({
    Title = "Seastone Cestus (500 melee requiriment)",
    Description = "This will give you the Seastone Cestus (Not permanent)",
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

-- Aqua Staff Button
Tabs.ShopTab:AddButton({
    Title = "Aqua Staff (500 melee requiriment)",
    Description = "This will give you the Aqua Staff (Not permanent)",
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
        local weaponName = "Aqua Staff"
        local event = game:GetService("Workspace").UserData["User_" .. userId].UpdateMelee

        event:FireServer(weaponName)
    end,
})

local Section = Tabs.TeleportTab:AddSection("Island TP")

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
    Description = "Escolha uma ilha para teleportar",
    Values = {"Cave", "Windmill", "Sam", "Grassy", "Bar", "Krizma", "Kaizu", "Snow Mountains", "Pursuer Boss", "Cliffs", "Green", "Trees", "Pyramid", "Merlin Fish", "Snowy", "Mountain", "Marine Ford", "Sand Castle", "Forest", "Evil", "Crescent", "Islands", "Town", "Rocky", "Palm", "Sand", "Sand 2", "Small", "Tiny", "Super Tiny", "Grass", "Atlar"},
    Multi = false,
    Default = 1,
    Callback = function(Value)
        selectedIsland = Value
    end
})

Tabs.TeleportTab:AddButton({
    Title = "Teleport to Island",
    Description = "Teleporta para a ilha selecionada",
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
    Description = "Escolha um NPC para teleportar",
    Values = {"Rayleigh", "Better Drink", "Drink", "Flail", "QuestFish", "Krizma", "Sword", "Sniper", "Emote", "Affinity", "Fish", "Expertise"},
    Multi = false,
    Default = 1,
    Callback = function(Value)
        selectedNpc = Value
    end
})

Tabs.TeleportTab:AddButton({
    Title = "Teleport to NPC",
    Description = "Teleporta para o NPC selecionado",
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

local HttpService = game:GetService("HttpService")


local webhookEnabled = false
local webhookURL = ""
local sendInterval = 1
local sendLoopActive = false

-- Função para enviar dados para o webhook
local function sendWebhookData()
    if not webhookEnabled or webhookURL == "" then
        warn("Webhook desativada ou URL não definida.")
        return
    end

    local player = game.Players.LocalPlayer
    local userData = game.Workspace.UserData:FindFirstChild("User_" .. player.UserId)
    if not userData or not userData:FindFirstChild("Data") then
        warn("Dados do jogador não encontrados.")
        return
    end

    local Data = userData.Data
    local userData = game.Workspace.UserData:FindFirstChild("User_" .. player.UserId)
    local totalLevel = userData.TotalLevel.Value

    -- Seções do embed
    local generalPlayer = {
        { ["name"] = "Name", ["value"] = player.Name, ["inline"] = false },
        { ["name"] = "\n", ["value"] = "─────────────────────────────", ["inline"] = false },
        { ["name"] = "Beri", ["value"] = tostring(Data.Cash.Value), ["inline"] = true },
        { ["name"] = "Bounty", ["value"] = tostring(Data.Bounty.Value), ["inline"] = true },
        { ["name"] = "Kills", ["value"] = tostring(Data.Kills.Value), ["inline"] = true },
        { ["name"] = "Gems", ["value"] = tostring(Data.Gems.Value), ["inline"] = true },
        { ["name"] = "Expertise Level", ["value"] = tostring(Data.ExpertiseLevel.Value), ["inline"] = true },
        { ["name"] = "Compass Tokens", ["value"] = tostring(Data.CompassTokens.Value), ["inline"] = true },
    }

    local playerStats = {
        { ["name"] = "Defense Level", ["value"] = tostring(Data.DefenseLevel.Value), ["inline"] = true },
        { ["name"] = "Melee Level", ["value"] = tostring(Data.MeleeLevel.Value), ["inline"] = true },
        { ["name"] = "Sniper Level", ["value"] = tostring(Data.SniperLevel.Value), ["inline"] = true },
        { ["name"] = "Sword Level", ["value"] = tostring(Data.SwordLevel.Value), ["inline"] = true },
        { ["name"] = "Haki Level", ["value"] = tostring(Data.HakiLevel.Value), ["inline"] = true },
        { ["name"] = "Total Level", ["value"] = tostring(totalLevel), ["inline"] = true },
    }

    local playerDFStats = {
        { ["name"] = "DF1", ["value"] = Data.DevilFruit.Value, ["inline"] = true },
        { ["name"] = "DF2", ["value"] = Data.DevilFruit2.Value, ["inline"] = true },
        { ["name"] = "\n", ["value"] = "─────────────────────────────", ["inline"] = false },
        { ["name"] = "DFT1 Defense", ["value"] = tostring(Data.DFT1Defense.Value), ["inline"] = true },
        { ["name"] = "DFT1 Melee", ["value"] = tostring(Data.DFT1Melee.Value), ["inline"] = true },
        { ["name"] = "DFT1 Sniper", ["value"] = tostring(Data.DFT1Sniper.Value), ["inline"] = true },
        { ["name"] = "DFT1 Sword", ["value"] = tostring(Data.DFT1Sword.Value), ["inline"] = true },
        { ["name"] = "\n", ["value"] = "─────────────────────────────", ["inline"] = false },
        { ["name"] = "DFT2 Defense", ["value"] = tostring(Data.DFT2Defense.Value), ["inline"] = true },
        { ["name"] = "DFT2 Melee", ["value"] = tostring(Data.DFT2Melee.Value), ["inline"] = true },
        { ["name"] = "DFT2 Sniper", ["value"] = tostring(Data.DFT2Sniper.Value), ["inline"] = true },
        { ["name"] = "DFT2 Sword", ["value"] = tostring(Data.DFT2Sword.Value), ["inline"] = true },
    }
    
    local storedDevilFruits = {}
    for i = 1, 12 do
        table.insert(storedDevilFruits, {
            ["name"] = "StoredDF" .. i,
            ["value"] = Data["StoredDF" .. i].Value,
            ["inline"] = true,
        })
    end

    -- Envia os dados para o webhook
    http.request({
        Url = webhookURL,
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json'
        },
        Body = HttpService:JSONEncode({
            ["content"] = "",
            ["embeds"] = {
                {
                    ["title"] = "🌟 General Player",
                    ["color"] = tonumber(0xFF0000), -- Cor vermelha
                    ["fields"] = generalPlayer,
                },
                {
                    ["title"] = "🏅 Player Stats",
                    ["color"] = tonumber(0x000000), -- Cor preta
                    ["fields"] = playerStats,
                },
                {
                    ["title"] = "🍎 Player Devil Fruit Stats",
                    ["color"] = tonumber(0xFF0000), -- Cor vermelha
                    ["fields"] = playerDFStats,
                },
                {
                    ["title"] = "📦 Stored Devil Fruits",
                    ["color"] = tonumber(0x000000), -- Cor preta
                    ["fields"] = storedDevilFruits,
                }
            }
        }),
    })

    print("Dados enviados para o webhook.")
end

-- Loop para envio periódico
local function startWebhookLoop()
    if sendLoopActive then
        return
    end
    sendLoopActive = true

    while sendLoopActive do
        sendWebhookData()
        wait(sendInterval * 60)
    end
end

local Input = Tabs.WebHookTab:AddInput("Input", {
    Title = "Webhook URL",
    Description = "Insert your discord webhook link!",
    Default = "",
    Placeholder = "Enter URL:",
    Numeric = false,
    Finished = false,
    Callback = function(Text)
        webhookURL = Text
        print("Webhook URL definida: " .. webhookURL)
    end,
})

Tabs.WebHookTab:AddToggle("Toggle", {
    Title = "Enable Webhook",
    Description = "Will send the webhook containing useful information!",
    Default = false, 
    Callback = function(Value)
        webhookEnabled = Value
        print("Webhook " .. (Value and "ativada" or "desativada"))

        if webhookEnabled then
            startWebhookLoop()
        else
            sendLoopActive = false
        end
    end,
})

local QuantitySlider = Tabs.WebHookTab:AddSlider("Slider", {
    Title = "Sending Interval",
    Description = "Configure the sending interval in minutes for webhooks!",
    Default = 1, 
    Min = 1,
    Max = 60, 
    Rounding = 0, 
    Callback = function(Value)
        sendInterval = Value
        print("Intervalo de envio ajustado para: " .. sendInterval .. " minutos")
    end,
})



------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("lnWScriptHub")
SaveManager:SetFolder("lnWScriptHub/OPL")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "lnW Hub",
    Content = "The script has been loaded.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
Fluent:SetTheme("Normal Theme")
setfflag("TaskSchedulerTargetFps", "1000")
setfpscap(120)
while task.wait(0) do
    if game:GetService("Workspace").DistributedGameTime % 1 * 60 > 30 then
        setfpscap(120)
    end
end
