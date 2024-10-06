local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local win = Flux:Window("InW Hub", "Premium", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)

local tab = win:Tab("Auto Farm", "http://www.roblox.com/asset/?id=6023426915")

tab:Label("This is just a label.")
tab:Line()
tab:Toggle("Auto-Farm Coins", "Automatically collects coins for you!", function(t)
print(t)
end)

tab:Slider("Walkspeed", "Makes your faster.", 0, 100,16,function(t)
print(t)
end)

local Weaponlist = {}
local Weapon = nil

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    table.insert(Weaponlist,v.Name)
end

tab:Dropdown("Choose Weapon", Weaponlist,{""}, function(t)
Weapon = t
end)

tab:Colorpicker("ESP Color", Color3.fromRGB(255,1,1), function(t)
print(t)
end)

tab:Textbox("Gun Power", "This textbox changes your gun power, so you can kill everyone faster and easier.", true, function(t)
print(t)
end)

tab:Bind("Kill Bind", Enum.KeyCode.Q, function()
print("Killed a random person!")
end)

win:Tab("Tab 2", "http://www.roblox.com/asset/?id=6022668888")
