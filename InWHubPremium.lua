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

tab:Toggle("Auto Click", "Auto Clicked", function(Ck)
AutoClicking = Ck
end)

spawn(function() 
game:GetService("RunService").RenderStepped:Connect(function() 
pcall(function() 
if AutoClicking then 
game:GetService'VirtualUser':CaptureController() 
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) 
end 
end) 
end) 
end)

tab:Toggle("Auto Equip", "Auto Equip item u!", function(ate)
_G.autoequip = ate
end)

spawn(function() -- auto equip
    while wait(0) do
        pcall(function()
            if _G.autoequip then
                repeat
                    wait(0.05)
                    game:GetService 'Players'.LocalPlayer.Backpack[Weapon].Parent = game:GetService 'Players'.LocalPlayer.Character
                until game.Players.LocalPlayer.Character.Humanoid.Health == 0 or _G.autoequip == false
                if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                    game:GetService 'Players'.LocalPlayer.Character:FindFirstChildOfClass 'Humanoid':UnequipTools()
                end
            end
        end)
    end
end)

win:Tab("Tab 2", "http://www.roblox.com/asset/?id=6022668888")
