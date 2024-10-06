local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local win = Flux:Window("InW Hub", "Premium", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)

local tab = win:Tab("Auto Farm", "http://www.roblox.com/asset/?id=6023426915")

tab:Label("This is just a label.")
tab:Line()

local Weaponlist = {}
local Weapon = nil

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    table.insert(Weaponlist,v.Name)
end

tab:Dropdown("Choose Weapon", Weaponlist,{""}, function(t)
Weapon = t
end)

tab:Toggle("Auto Equip", "Auto Equip item u!", function(ate)
_G.autoequip = ate
end)

win:Tab("Tab 2", "http://www.roblox.com/asset/?id=6022668888")
