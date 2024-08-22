local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Test X", "DarkTheme")

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Magma")
Section:NewToggle("Auto Equip", " ", function(t) 
_G.Tp = t
while _G.Tp do wait()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-949, 213.5, 1655, 1, 0, 0, 0, 1, 0, 0, 0, 1))
end
end)
