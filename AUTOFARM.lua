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
Section:NewToggle("Lv2 Angry Bob", " ", function(v) 
        _G.FarmBob = v ----true/false
        end)

    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.FarmBob then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv2 Angry Bob"].HumanoidRootPart.CFrame * CFrame.new(0,0,5) --Distace
            end
        end)
       end)
    end)

Section:NewToggle("Lv22 Angry Bobby", " ", function(e) 
        _G.FarmBobby = e ----true/false
        end)

    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.FarmBobby then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv22 Amgry Bobby"].HumanoidRootPart.CFrame * CFrame.new(0,0,5) --Distace
            end
        end)
       end)
    end)

Section:NewToggle("Lv24 Angry Bobbi", " ", function(a) 
        _G.FarmBobbi = a ----true/false
        end)

    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.FarmBobbi then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv24 Angry Bobbi"].HumanoidRootPart.CFrame * CFrame.new(0,0,5) --Distace
            end
        end)
       end)
    end)

Section:NewToggle("Lv29 Angry Bobber", " ", function(t) 
        _G.FarmBobber = t ----true/false
        end)

    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.FarmBobber then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv29 Angry Bobber].HumanoidRootPart.CFrame * CFrame.new(0,0,5) --Distace
            end
        end)
       end)
    end)

Section:NewToggle("Lv35 Angry Bobb", " ", function(s) 
        _G.FarmBobb = s ----true/false
        end)

    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.FarmBobb then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv35 Angry Bobb"].HumanoidRootPart.CFrame * CFrame.new(0,0,5) --Distace
            end
        end)
       end)
    end)

