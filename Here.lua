local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Here Hub", "DarkTheme")

local Tab = Window:NewTab("Teleport")
local Section = Tab:NewSection("Tp island")

Section:NewButton("KaiIsland", "tp to kaiisland", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

-- TP
Section:NewButton("Crab island", "tp to crab island", function()    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)
