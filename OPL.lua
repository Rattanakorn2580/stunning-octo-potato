local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("NOOB HUB", "DarkTheme")

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")                       
local Section = Tab:NewSection("Auto Equip") 

local Weaponlist = {} 
local Weapon = nil

for i,v in 
pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do 
    table.insert(Weaponlist,v.Name) 
end 
Section:NewDropdown("select weapon", " ", Weaponlist, function(currentOption) 
        Weapon = currentOption 
    end)

Section:NewToggle("Auto Equip", " ", function(a) 
        AutoEquiped = a 
    end)

spawn(function() 
while wait() do 
if AutoEquiped then 
pcall(function() 
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Weapon)) 
end) 
end 
end 
end)

-- TP ISLAND
local Tab = Window:NewTab("TP Island")                       
local Section = Tab:NewSection("TP Island")

Section:NewButton("Boss", "", function()
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(4890.38916, 411.091553, -7178.46777, 0, 1, -0, -1, 0, 0, 0, 0, 1))
    end)
Section:NewButton("Crab", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-6.5, 202, -240.5, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Cave", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(77, 202, -975, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Windbill", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(92.5, 220.5, -31, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Sam", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1281.5, 214.5, -1352.5, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Gassy", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(723.5, 238.100006, 1205.5, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Bar", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1491.40002, 259.798401, 2170.90015, 0, 0, 1, 0, 1, -0, -1, 0, 0))
    end)
Section:NewButton("Krizma", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1066, 282.5, 1624.5, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Flail", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1110.40015, 216.498383, 3367.90015, -1, 0, 0, 0, 1, 0, 0, 0, -1))
    end)
Section:NewButton("Castle", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1000.40002, 223.500046, -3338.09985, 0, 0, 1, 0, 1, -0, -1, 0, 0))
    end)
Section:NewButton("Pyramid", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(114.335197, 277.835052, 4950.93066, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247))
    end)
Section:NewButton("Fishing", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end)
Section:NewButton("FishSell", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end)
Section:NewButton("Chiff", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end)
Section:NewButton("Mountain", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end)
Section:NewButton("Crescent", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end)
Section:NewButton("Snow", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1895.75, 221, 3299.25, 0, 0, 1, 0, 1, -0, -1, 0, 0))
    end)
Section:NewButton("Snow Mountain", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(6741.09521, 394.982117, -1716.47095, 0.603998184, -0.0751705617, 0.793432772, 0.219797119, 0.972645164, -0.0751705617, -0.766077936, 0.219797119, 0.603998184))
    end)
Section:NewButton("Kai", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

-- NPC
local Tab = Window:NewTab("NPC")
local Section = Tab:NewSection("Sam Quest")

-- PLAYER
local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Select Player!")
Plr = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Plr,v.Name) 
end
local drop = Section:NewDropdown("Select Player!", "Click To Select", Plr, function(t)
   PlayerTP = t
end)
Section:NewButton("Click To TP", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end)
Section:NewToggle("Auto Tp", "", function(t)
_G.TPPlayer = t
while _G.TPPlayer do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end
end)

Section:NewButton("Refresh Dropdown","Refresh Dropdown", function()
  drop:Refresh(Plr)
end)
