local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Test X", "DarkTheme")

-- PLAYER
local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Player")
Section:NewToggle("God Mode", " ", function()
  end)
