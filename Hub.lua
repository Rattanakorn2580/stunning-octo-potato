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

local Window = Tab:NewWindow("Main")
local Tab = Tab:NewSection("Bring List")
Section:NewToggle("Bring Angry Bob", function(t)
_G.Bring = t
while _G.Bring do wait()
game:GetService("Workspace").Enemies["Lv2 Angry Bob"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
    end)
Section:NewToggle("Bring Angry Bob", function(t)
_G.Bring = t
while _G.Bring do wait()
game:GetService("Workspace").Enemies["Lv22 Angry Bobby"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
      end)
    Section:NewToggle("Bring Angry Bob", function(t)
_G.Bring = t
while _G.Bring do wait()
game:GetService("Workspace").Enemies["Lv24 Angry Bobbi"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
        end)
      Section:NewToggle("Bring Angry Bob", function(t)
_G.Bring = t
while _G.Bring do wait()
game:GetService("Workspace").Enemies["Lv29 Angry Bobber"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
          end)
        Section:NewToggle("Bring Angry Bob", function(t)
_G.Bring = t
while _G.Bring do wait()
game:GetService("Workspace").Enemies["Lv35 Angry Bobb"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
end)
