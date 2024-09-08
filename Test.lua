local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("OPLMIUM HUB", "DarkTheme")

local ScreenGui = Instance.new("ScreenGui") 
ScreenGui.Name = "ScreenGui" 
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") 
ScreenGui.ResetOnSpawn = false 

local Toggle = Instance.new("TextButton") 
Toggle.Name = "Toggle" 
Toggle.Parent = ScreenGui 
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0) 
Toggle.Size = UDim2.new(0, 90, 0, 38) 
Toggle.Font = Enum.Font.SourceSans 
Toggle.Text = "Turn/Off" 
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248) 
Toggle.TextSize = 28.000 
Toggle.Draggable = true 
Toggle.MouseButton1Click:connect(function() 
Library:ToggleUI() 
end)

spawn(function() 
while wait() do 
if AutoTP then 
pcall(function() 
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Weapon))
end) 
end 
end 
end)

spawn(function()
while wait() do 
if AutoTP then 
pcall(function() 
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) 
end) 
end 
end 
end)

spawn(function()
while wait() do 
if AutoTP then 
pcall(function() 
workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10") 
end) 
end 
end 
end)
Section:NewToggle("Auto Equip", " ", function(a) 
        AutoTP = a 
    end)
