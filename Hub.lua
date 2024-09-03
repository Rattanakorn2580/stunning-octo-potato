local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("List Mob", "BloodTheme")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() -- อันนี้เป็นUI
local Window = Library.CreateLib("Power x Hub", "Synapse") -- อันนี้เป็นชื่อui

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
Toggle.Text = "เปิด/ปิด" 
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248) 
Toggle.TextSize = 23.000 
Toggle.Draggable = true 
Toggle.MouseButton1Click:connect(function() 
Library:ToggleUI() 
end)

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("AutoFarm")
Section:NewToggle("Lv2 Angry Bob", " ", function(a)
    _G.AutoFarm = a
while _G.AutoFarm do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv2 Angry Bob"].HumanoidRootPart.CFrame * CFrame.new(0,0,5)
end
    end)
