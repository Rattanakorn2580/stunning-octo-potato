local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Select Mob", "LightTheme")

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
Toggle.Text = "Turn/Off2" 
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248) 
Toggle.TextSize = 28.000 
Toggle.Draggable = true 
Toggle.MouseButton1Click:connect(function() 
Library:ToggleUI() 
end)

--AUTOFARM
local Tab = Window:NewTab("Taget List")
local Section = Tab:NewSection("Select Mob")
Section:NewToggle("Lv2 Angry Bob", " ", function(state) 
        _G.AutoFarmLV = state
        end)
MON = "Lv2 Angry Bob"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmLV then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MON].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv22 Angry Bobby", " ", function(stats) 
        _G.AutoFarmV = stats
        end)
MOND = "Lv22 Angry Bobby"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmV then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MOND].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)
