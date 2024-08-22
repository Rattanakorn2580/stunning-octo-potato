local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Test X", "DarkTheme")

-- PLAYER
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Farm")
Section:NewToggle("Auto Farm", " ", function()
    for i,v in 
pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
      v.HumanoidRootPart.Size = Vector3.new(35, 35, 35) 
      v.HumanoidRootPart.Transparency = 0.5 
    end)
