local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Golden Hub", "Synapse")

local Tab = Window:NewTab("Autos")
local Section = Tab:NewSection("Auto Respawn")

Section:NewToggle("Auto Respawn", "Auto Spawn", function(SPW)
end)

local Section = Tab:NewSection("Auto function | All |")
