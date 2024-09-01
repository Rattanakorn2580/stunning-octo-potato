-- TELEPORT BYPASS
if game:GetService("Players").LocalPlayer.Character.Services:FindFirstChild("Client") then
    game:GetService("Players").LocalPlayer.Character.Services["Client"].Disabled = true
end

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
local Section = Tab:NewSection("Select Mob Farm")

Section:NewToggle("Lv2 Angry Bob", "", function(state)
    _G.AutoFarm = state
while wait() do -- LOOP WHICH REPEATS UNTIL THE UNTIL IS TRUE / DONE
                wait() -- WAIT SO WE DONT CRASH
                if _G.AutoFarm == false then return end -- IF THE TOGGLE IS OFF THEN STOP THE LOOP
                if game:GetService("Workspace").Enemies:FindFirstChild() ~= nil then break; end
            end -- IF THE MOB IS SPAWNED THEN GO ON WITH THE AUTOFARM
        else
            while wait() do
                _G.AutoFarm = game:GetService("Workspace").Enemies["Lv2 Angry Bob"]:FindFirstChild()
                if _G.AutoFarm ~= mob2 then break; end
                if G.AutoFarm == false then return end -- IF THE TOGGLE IS OFF THEN STOP THE LOOP
                if _G.AutoFarm ~= nil then
                    if game:FindFirstChild("Humanoid") then
                        if game:GetService("Workspace").Enemies["Lv2 Angry Bob"].Humanoid.Health == 0 then wait() game:Destroy() break; end -- IF THE MOB IS DEAD THEN JUST DESTROY IT FOR FASTER FARMING
                    end
                    if game:FindFirstChild("HumanoidRootPart") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv2 Angry Bob"].HumanoidRootPart.CFrame * CFrame.new(0,0,2) -- TELEPORT TO THE MOB
                    end
                end
                wait() -- WAIT SO WE DONT CRASH
            end
        end
    end
end)
