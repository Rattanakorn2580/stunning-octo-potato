spawn(function()
    while wait() do 
        pcall(function()
            if _G.Raids then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.ClassName == "Model" then
			v.Humanoid.Health = die
                    end
                end
            end
        end)
    end
end)
 
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() -- อันนี้เป็นUI
local Window = Library.CreateLib("Test Hub", "Synapse") -- อันนี้เป็นชื่อui

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

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Bring Farm")
Section:NewToggle("Bring All", "", function(t)
	_G.Bring = t then
game:GetService("Workspace").Enemies["Lv2 Angry Bob"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-4)
	end)
Section:NewToggle("Bring All", "", function(t)
	_G.Bring = t then
game:GetService("Workspace").Enemies["Lv22 Angry Bobby"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
			end)
Section:NewToggle("Bring All", "", function(t)
	_G.Bring = t then
game:GetService("Workspace").Enemies["Lv24 Angry Bobbi"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
	end)
Section:NewToggle("Bring All", "", function(t)
	_G.Bring = t then
game:GetService("Workspace").Enemies["Lv29 Angry Bobber"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
	end)
Section:NewToggle("Bring All", "", function(t)
	_G.Bring = t then
game:GetService("Workspace").Enemies["Lv35 Angry Bobb"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
end)

local Tab = Window:NewTab("Kill Aura")
local Section = Tab:Newsection("Kill Aura")
Section:NewToggle("Kill Aura", function(v)
	_G.Raids = v
	end)