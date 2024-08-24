local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Winnable Hub", "DarkTheme")

local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Felix | ComeBxck")
MONS = {}
 
for i,v in pairs(game:GetService("Workspace").Enemies.Mon:GetChildren()) do
    table.insert(MONS,v.Name)
end
Section:NewToggle("Auto Farm", "", function(a)
    _G.AutoFarm = a
    while _G.AutoFarm do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies.Mon[lv9 Bandit].HumanoidRootPart.CFrame
end
end)
 
Section:NewDropdown("Please Select Monster", "", MONS, function(currentOption)
    Select = currentOption
end)
 
Section:NewButton("Refresh", "", function()
    table.clear(MONS)
for i,v in pairs(game:GetService("Workspace").Enemies.Mon:GetChildren()) do
    table.insert(MONS,v.Name)
end
end)
