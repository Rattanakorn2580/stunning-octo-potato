local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("OPL Hub", "DarkTheme")

--UI AUTO FARM

local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Farm")

--AUTO FARM

Window:AddBind({
    text = 'Toggle',
    callback = function()
        -- Toggle
        Enabled = not Enabled
        -- "Enabled" Color
        local NewColor = Color3.new(0, 1, 0)
        if Enabled == false then
            NewColor = Color3.new(1, 0, 0)
        end
        if NewColor ~= Last then
            Last = NewColor
            Enabled_1:SetColor(NewColor)
        end
        -- Click Position
        if Enabled then
            -- Update Mouse Pos
            X, Y = Mouse.X, Mouse.Y + 10
            -- Update Box
            Box_1:SetValue()
        else
            X, Y = 0, 0
            Box_1:SetValue()
        end
        -- AutoClick
        while Enabled do
            VirtualInputManager:SendMouseButtonEvent(X, Y, 0, true, game, 1)
            VirtualInputManager:SendMouseButtonEvent(X, Y, 0, false, game, 1)
            wait(Library.flags.Interval)
        end
    end
})
Window:AddSlider({
    text = 'Interval',
    min = 0.01,
    max = 2,
    value = 1,
    float = 0.01
})
Box_1 = Window:AddBox({
    text = "AutoClick Position:",
    value = "X: " .. X .. ", Y: " .. Y,
    callback = function()
        if tick()-LastU > 0.1 then
            LastU = tick()
            Box_1:SetValue("X: " .. X .. ", Y: " .. Y)
        end
    end
})
Library:Init()

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
