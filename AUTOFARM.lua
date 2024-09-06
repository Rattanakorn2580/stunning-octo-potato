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
local Tab = Window:NewTab(" ")
local Section = Tab:NewSection(" ")
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
MONS = "Lv22 Angry Bobby"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmV then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONS].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv24 Angry Bobbi", " ", function(statr) 
        _G.AutoFarmL = statr
        end)
MOND = "Lv24 Angry Bobbi"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmL then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MOND].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv29 Angry Bobber", " ", function(statu) 
        _G.AutoFarmA = statu
        end)
MONA = "Lv29 Angry Bobber"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmA then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONA].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv35 Angry Bobb", " ", function(statp) 
        _G.AutoFarmB = statp
        end)
MONBB = "Lv35 Angry Bobb"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmB then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONB].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)
