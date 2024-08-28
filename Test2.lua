local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Opl X", "BloodTheme")

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

-- KILL AURA
spawn(function()
while wait() do
    if getgenv().KillAura == true
pcall(function()
local Vector3 = Vector3.new(-9653.310546875, 47.48046112060547, -4440.38330078125)
local CFrame = CFrame.new(-9653.31055, 47.4804611, -4440.3833, 0.345474839, -0.00910704955, 0.938383877, -0, 0.999953032, 0.00970457867, -0.938428104, -0.00335268769, 0.345458567)
game:GetService("ReplicatedStorage").RemoteEvents.BladeCombatRemote:FireServer(false, ohVector32, ohCFrame3)
  end
  end)
end
end)

local Tab = Window:NewTab("Mob Farm")
local Section = Tab:NewSection("Kill Aura")

Section:NewToggle("kill aura", " ", function(true) 
     getgenv().KillAura == true
    end)

