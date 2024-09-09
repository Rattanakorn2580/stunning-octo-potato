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

Section:NewToggle("Auto Bring Compass", " ", function()
local plr=game:GetService'Players'.LocalPlayer 

	local dftofind='Compass'
	while true do 
	local char=plr.Character or plr.CharacterAdded:Wait() 
	local HRP=char:WaitForChild'HumanoidRootPart' 
	for i,v in next, Players.LocalPlayer.Backpack:GetChildren() do 
	local Poser=v:FindFirstChild'Poser' 
	if v:IsA'Tool' and string.find(v.Name:lower(), dftofind:lower()) and Poser then 
	HRP.CFrame=Poser.CFrame 
	end 
	end 
	wait(1) 
	end 


end)
