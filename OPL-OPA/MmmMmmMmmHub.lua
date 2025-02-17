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
    MainTab = Window:AddTab({ Title = "Autos", Icon = "scroll" }),
    DupeTab = Window:AddTab({ Title = "Compasses", Icon = "boxes" }),
    FarmTab = Window:AddTab({ Title = "Farm", Icon = "bomb" }),
    MiscTab = Window:AddTab({ Title = "Misc", Icon = "file-code" }),
    PlayerTab = Window:AddTab({ Title = "Players", Icon = "users" }),
    ShopTab = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),
    TeleportTab = Window:AddTab({ Title = "Teleport", Icon = "map-pin" }),
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

local Section = Tabs.MainTab:AddSection("Main Autos")

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

local Section = Tabs.MainTab:AddSection("Sam Quest's Utilities")

Tabs.MainTab:AddButton({
    Title = "Claim Compasses",
    Description = "",
    Callback = function()
        local args = {
            [1] = "Claim10"
        }
        
        workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer(unpack(args))
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
    Title = "Auto Find Compasses",
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

local Section = Tabs.DupeTab:AddSection("Bug Compasses")

Tabs.DupeTab:AddToggle("Toggle", {
    Title = "Auto Reset Stats",
    Description = "",
    Default = false,
    Callback = function(Value)
        reset = Value
    end,
})

spawn(function()
    while wait(5) do
        if reset then
            pcall(function()
workspace.UserData["User_"..game.Players.LocalPlayer.UserId].Stats:FireServer()
                   end)
            end
        end
end)

Tabs.DupeTab:AddButton({
    Title = "Check Sam",
    Description = "",
    Callback = function()
        fireclickdetector(game:GetService("Workspace").Merchants.QuestMerchant.Clickable.ClickDetector)
    end
})

Tabs.DupeTab:AddToggle("Toggle", {
    Title = "Auto Claim Weekly 3",
    Description = "",
    Default = false,
    Callback = function(Value)
        _G.autoclaim3 = Value
    end,
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.autoclaim3 then
local A_1 = "Claim"
local A_2 = "Weekly3"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
            end
        end)
    end
end)

local Section = Tabs.DupeTab:AddSection("Unbox")

Tabs.DupeTab:AddToggle("Toggle", {
    Title = "Auto Unbox (Common)",
    Description = "",
    Default = false,
    Callback = function(Value)
        UnboxCM = Value
    end,
})

spawn(function()
    while wait() do
        pcall(function()
            if not UnboxCM then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox1"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end)

Tabs.DupeTab:AddToggle("Toggle", {
    Title = "Auto Unbox (Unvom)",
    Description = "",
    Default = false,
    Callback = function(Value)
        UnboxUn = Value
    end,
})

spawn(function()
    while wait() do
        pcall(function()
            if not UnboxUn then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox2"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end)

Tabs.DupeTab:AddToggle("Toggle", {
    Title = "Auto Unbox (Rare,Ultra)",
    Description = "",
    Default = false,
    Callback = function(Value)
        UnboxRUL = Value
    end,
})

spawn(function()
    while wait() do
        pcall(function()
            if not UnboxRUL then return end;
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
    Title = "Auto Equip",
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

local Section = Tabs.FarmTab:AddSection("Other Farms")

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Auto Bring Chests",
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
end)

local Section = Tabs.FarmTab:AddSection("Haki Farm")

Tabs.FarmTab:AddToggle("Toggle", {
    Title = "Auto Haki Fast (Ping)",
    Description = "",
    Default = false,
    Callback = function(vccl)
        AutoHaki = vccl
    end,
})

local Section = Tabs.FarmTab:AddSection("Get Haki")

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

local Section = Tabs.MiscTab:AddSection("Local Player Utilities")

local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local BlackScreen


Tabs.MiscTab:AddToggle("ToggleBlackScreen", {
    Title = "Black Screen",
    Description = "",
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
    Description = "",
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
    Title = "Auto Buso Haki",
    Description = "",
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

local Section = Tabs.MiscTab:AddSection("Game/Server Utilities")

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

local Section = Tabs.MiscTab:AddSection("Anti")

Tabs.MiscTab:AddToggle("Toggle", {
    Title = "Anti AFK",
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
                Title = "Anti-AFK Activated",
                Content = "Made by Bank",
                Duration = 5
            })

        else
            Fluent:Notify({
                Title = "Anti-AFK Desactivated",
                Content = "Made by Bank",
                Duration = 5
            })

        end
    end,
})

Tabs.MiscTab:AddToggle("FlightToggle", {
    Title = "Anti No Dmg Water (Not Work)",
    Description = "",
    Default = false,
    Callback = function(value)
        _G.nowaterdmg = value
    end,
})

local Section = Tabs.MiscTab:AddSection("Yoru Spam Soon...")

local Section = Tabs.PlayerTab:AddSection("Local Player")

Tabs.PlayerTab:AddButton({
    Title = "No Save Data!!!",
    Description = "",
    Callback = function()
        workspace.UserData["User_"..game.Players.LocalPlayer.UserId].UpdateClothing_Extras:FireServer("A", "\255", 34)
        game:GetService("Players").LocalPlayer.Character.CharacterTrait.ClothingTrigger:FireServer()
    end,
})

local Section = Tabs.PlayerTab:AddSection("Players")

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
            end
        end
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

local Section = Tabs.ShopTab:AddSection("Drink Utilities - Bar")

Tabs.ShopTab:AddButton({
    Title = "Instant Drink",
    Description = "",
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
    Description = "",
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

local Input = Tabs.ShopTab:AddInput("Input", {
    Title = "Amount",
    Description = "",
    Default = "",
    Placeholder = "Enter Amount Drink: ",
    Numeric = true, 
    Finished = false, 
    Callback = function(txt)
        local player = game.Players.LocalPlayer
        if player and player.Character and player.Character:FindFirstChild("CharacterTrait") then
            player.Character.CharacterTrait.WS.Value = tonumber(txt) or 1
        end
    end
})

Tabs.ShopTab:AddButton({
    Title = "Buy Drink",
    Description = "",
    Callback = function()
        workspace.UserData["User_"..game.Players.LocalPlayer.UserId].UpdateClothing_Extras:FireServer("A", "\255", 34)
        game:GetService("Players").LocalPlayer.Character.CharacterTrait.ClothingTrigger:FireServer()
    end,
})

Tabs.ShopTab:AddToggle("Toggle", {
    Title = "Auto Drop Drink",
    Description = "",
    Default = false,
    Callback = function(drpd)
        DropDrink = drpd
    end
})

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
