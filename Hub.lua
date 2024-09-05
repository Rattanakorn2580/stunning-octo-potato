local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("List BringMob", "BloodTheme")

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
Toggle.Text = "เปิด/ปิด เมนู" 
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248) 
Toggle.TextSize = 28.000 
Toggle.Draggable = true 
Toggle.MouseButton1Click:connect(function() 
Library:ToggleUI() 
end)

--BRINGMOB
local Tab = Window:NewTab("ListMob")
local Section = Tab:NewSection("Bring List Mob")
Section:NewToggle("Bring", " ", function(t) 
    Bring = t
end)

spawn(function()
while wait() do 
if Bring then 
pcall(function() 
game:GetService("Workspace").Enemies["Lv2 Angry Bob"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5) 
end) 
end 
end 
end)

Section:NewToggle("Bring", " ", function(t) 
    Bring = t
end)

spawn(function()
while wait() do 
if Bring then 
pcall(function() 
game:GetService("Workspace").Enemies["Lv22 Angry Bobby"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5) 
end) 
end 
end 
end)

Section:NewToggle("Lv24 Angry Bobbi", " ", function(t) 
    Bring = t
end)

spawn(function()
while wait() do 
if Bring then 
pcall(function() 
game:GetService("Workspace").Enemies["Lv24 Angry Bobbi"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5) 
end) 
end 
end 
end)

Section:NewToggle("Lv29 Angry Bobber", " ", function(t) 
    Bring = t
end)

spawn(function()
while wait() do 
if Bring then 
pcall(function() 
game:GetService("Workspace").Enemies["Lv29 Angry Bobber"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5) 
end) 
end 
end 
end)

Section:NewToggle("Lv35 Angry bobb", " ", function(t) 
    Bring = t
end)

spawn(function()
while wait() do 
if Bring then 
pcall(function() 
game:GetService("Workspace").Enemies["Lv35 Angry Bobb"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5) 
end) 
end 
end 
end)

Section:NewToggle("Lv1 Crab", " ", function(t) 
    Bring = t
end)

spawn(function()
while wait() do 
if Bring then 
pcall(function() 
game:GetService("Workspace").Enemies["Lv1 Crab"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5) 
end) 
end 
end 
end)

Section:NewToggle("Lv3 Crab", " ", function(t) 
    Bring = t
end)

spawn(function()
while wait() do 
if Bring then 
pcall(function() 
game:GetService("Workspace").Enemies["Lv3 Crab"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5) 
end) 
end 
end 
end)

Section:NewToggle("Lv4 Crab", " ", function(t) 
    Bring = t
end)

spawn(function()
while wait() do 
if Bring then 
pcall(function() 
game:GetService("Workspace").Enemies["Lv4 Crab"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5) 
end) 
end 
end 
end)

Section:NewToggle("Lv4 Crab", " ", function(t) 
    Bring = t
end)

spawn(function()
while wait() do 
if Bring then 
pcall(function() 
game:GetService("Workspace").Enemies["Lv4 Crab"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5) 
end) 
end 
end 
end)

Section:NewToggle("Lv5 Crab", " ", function(t) 
    Bring = t
end)

spawn(function()
while wait() do 
if Bring then 
pcall(function() 
game:GetService("Workspace").Enemies["Lv5 Crab"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5) 
end) 
end 
end 
end)

Section:NewToggle("Bring", " ", function(t) 
    Bring = t
end)

spawn(function()
while wait() do 
if Bring then 
pcall(function() 
game:GetService("Workspace").Enemies["Lv22 Angry Bobby"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5) 
end) 
end 
end 
end)

