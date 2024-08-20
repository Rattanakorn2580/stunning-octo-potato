local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("OPL Hub", "DarkTheme")

--UI AUTO FARM

local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Farm")

Section:NewToggle("Auto Click", "auto click", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

Section:NewToggle("Auto Equip", "auto equip item", function(state)
    if state then
        equip.Name = "equip"
        equip.Parent = Auto Euip
        equip.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
        equip.Position = UDim2.new(0.191557452, 0, 0.488476455, 0)
        equip.Size = UDim2.new(0, 254, 0, 50)
        equip.Text = "Equip Weights"
        equip.TextColor3 = Color3.fromRGB(0, 0, 0)
        equip.TextScaled = true
        equip.TextSize = 14.000
        equip.TextWrapped = true
        equip.MouseButton1Click:connect(function()
            equip.Visible = false
            unequip.Visible = true
            _G.equip = true
while _G.equip do
        wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.Name == weapon.Text then
        v.Parent = game.Players.LocalPlayer.Character
    else
        unequip.Name = "unequip"
        unequip.Parent = Auto Equip
        unequip.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
        unequip.Position = UDim2.new(0.189320415, 0, 0.487013519, 0)
        unequip.Size = UDim2.new(0, 254, 0, 50)
        unequip.Text = "Stop Equiping"
        unequip.TextColor3 = Color3.fromRGB(0, 0, 0)
        unequip.TextScaled = true
        unequip.TextSize = 14.000
        unequip.TextWrapped = true
        unequip.MouseButton1Click:connect(function()
            equip.Visible = true
            unequip.Visible = false
            _G.equip = false
    end
end)

-- TP

local Tab = Window:NewTab("Island TP")
local Section = Tab:NewSection("Tp island")

Section:NewButton("KaiIsland", "tp to kaiisland", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

Section:NewButton("Crab island", "tp to crab island", function()    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

Section:NewButton("Pirate island", "tp to pirate island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

Section:NewButton("Windbill Island", "tp to windbill island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)
Section:NewButton("Chiff island", "tp to chiff island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

Section:NewButton("Purple island", "tp to purple island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

Section:NewButton("fail island", "tp to fail island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

Section:NewButton("Pyramid island", "tp to pyramid island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

Section:NewButton("Kizma island", "tp to krizma island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

Section:NewButton("Sword island", "tp to sword island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

Section:NewButton("Forest island", "tp to forest island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

Section:NewButton("snow island", "tp to snow island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

Section:NewButton("Mountain island", "tp to mountain island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

--PLAYER

local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Player")

Section:NewToggle("View Player", "view player", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

Section:NewToggle("Behind Player", "goto behind players", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-- ESP
Section:NewButton("Esp", "esp text name player", function()
    print("Clicked")
end)
