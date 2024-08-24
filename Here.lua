local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Opl X", "DarkTheme")

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Farm")

MONS = {}
 
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    table.insert(MONS,v.Name)
end
 
Section:NewToggle("Auto-Farm", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies.HumanoidRootPart.CFrame
end
end)

Section:NewDropdown("Select Monster", "", MONS, function(currentOption)
    Select = currentOption
end)
 
Section:NewButton("Refresh", "", function()
    table.clear(MONS)
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    table.insert(MONS,v.Name)
  end
end)
