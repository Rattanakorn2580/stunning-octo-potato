local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Test X", "DarkTheme")

-- AUTO FIND
local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Select Player!")
Section:NewToggle("Auto Equip", " ", function(a) 
        AutoEquiped = a 
    end)
