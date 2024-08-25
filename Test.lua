

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("List Mob", "BloodTheme")

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Select Auto Mob Farm")

if game:GetService("Players").LocalPlayer.Character.Services:FindFirstChild("Client") then
    game:GetService("Players").LocalPlayer.Character.Services["Client"].Disabled = true
end
MONS = {}
 
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    table.insert(MONS,v.Name)
end

Section:NewToggle("Auto Farm", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[Select].HumanoidRootPart.CFrame
end
    end)

Section:NewDropdown("Select Enemies", "", MONS, function(currentOption)
    Select = currentOption
end)
 
Section:NewButton("Refresh", "", function()
    table.clear(MONS)
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    table.insert(MONS,v.Name)
end
end)
