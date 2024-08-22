local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Test X", "DarkTheme")

-- AUTO FIND
local Tab = Window:NewTab("Auto Find")
local Section = Tab:NewSection("Auto Find")
Section:NewButton("Refresh Dropdown","Refresh Dropdown", function()
  drop:Refresh(Plr)
end)
