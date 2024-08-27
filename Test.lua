spawn(function()
    while wait() do 
        pcall(function()
            if _G.Raids then
                for i,v in pairs(game:GetService("Workspace").Enemies["Lv2 Angry Bob"]:GetChildren()) do
                    if v.ClassName == "Model" and v.Humanoid.Health > 0 then
                        v.Humanoid.Health = 0
                    end
                end
            end
        end)
    end
end)
 
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
Toggle.Text = "เปิด/ปิด ฟาม" 
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248) 
Toggle.TextSize = 23.000 
Toggle.Draggable = true 
Toggle.MouseButton1Click:connect(function() 
Library:ToggleUI() 
end)
spawn(function()
        while wait() do
            pcall(function()
                    if _G.HitMob then
                        for i,v in 
pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
      v.HumanoidRootPart.Size = Vector3.new(500, 500, 500) 
      v.HumanoidRootPart.Transparency = 0.2
                        end
                    end
                end)
            end
        end)

local Tab = Window:NewTab("Main")-- อันนี้เป็นชื่อของTab
local Section = Tab:NewSection("Rain") -- อันนีเป็นชื่อของSection 
Section:NewToggle("Kill all", "", function(v) -- อันนี้เป็น NewToggle
    _G.Raids = v --อันนี้เป็นตัวแปร
end)
Section:NewToggle("Hitbox Mob", "", function(v)
        _G.HitMob = v
    end)

Section:NewButton("Noclip","", function()
  local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end
noclip() -- to toggle noclip() and clip()
end)

Section:NewButton("Admin","", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
end)
