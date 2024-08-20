local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("OPL Hub", "DarkTheme")

--UI AUTO FARM

local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Farm")

Section:NewToggle("Auto Click", "autoclick", function(state)
    if state then
            print
        else
            print

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

            Section:NewButton("ESP", "ESP name player", function()
        while wait() do 
            pcall(function() 
for i,v in pairs(game.Players:GetChildren()) do 
            if not 
v.Character.Head:FindFirstChild("ESP") then 
                local BillboardGui = 
Instance.new("BillboardGui") 
                local TextLabel = 
Instance.new("TextLabel") BillboardGui.Parent = v.Character.Head 
                BillboardGui.ZIndexBehavior = 
Enum.ZIndexBehavior.Sibling 
                BillboardGui.Active = true 
                BillboardGui.Name = "ESP" 
                BillboardGui.AlwaysOnTop = true 
                BillboardGui.LightInfluence = 1.000 
                BillboardGui.Size = UDim2.new(0, 200, 0, 50) 
                BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0) 
                TextLabel.Parent = BillboardGui 
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255) TextLabel.BackgroundTransparency = 1.000 
                TextLabel.Size = UDim2.new(0, 200, 0, 50) TextLabel.Font = Enum.Font.GothamBold 
                TextLabel.Text = v.Name 
                TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255) 
                TextLabel.TextScaled = true 
                TextLabel.TextSize = 14.000 
                TextLabel.TextStrokeTransparency = 0.000 
                TextLabel.TextWrapped = true 
                                    end 
                                end 
                            end) 
                    end
            end)
