local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("List Mob", "BloodTheme")

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Select Auto Mob Farm")
MONS = {} 

for i,v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do 
table.insert(MONS,v.Name) 
end

Section:NewToggle("Lv2 Angry Bob", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(2.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = 
game:GetService("Workspace").Enemies[Select Monster].HumanoidRootPart.CFrame
end
    end)
Section:NewDropdown("Please Select Monster", "", MONS, function(currentOption)
Select = currentOption 
end) 

Section:NewButton("Refresh", "", function() 
table.clear(MONS) 
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
table.insert(MONS,v.Name) 
end 
end)
