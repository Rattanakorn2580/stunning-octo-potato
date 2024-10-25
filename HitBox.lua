local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TITLE", "DarkTheme")

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
Toggle.Text = "Tutorial"
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248)
Toggle.TextSize = 28.000
Toggle.Draggable = true
Toggle.MouseButton1Click:connect(function()
    Library:ToggleUI()
end)
 
local Corner = Instance.new("UICorner")
Corner.Name = "Corner"
Corner.Parent = Toggle

local Tab = Window:NewTab("TabName")
local Section = Tab:NewSection("Section Name")

Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
	enterPressed = txt
        if enterPressed then
            local inputText = TextBox.Text
            local inputNumber = tonumber(inputText)
            if inputNumber then
                hitboxSize = inputNumber
                TextLabel.Text = "Hitbox Size: " .. hitboxSize

                -- Function to apply hitbox changes
                local function applyHitbox(player)
                    if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        if not teamCheck or (teamCheck and player.Team ~= game.Players.LocalPlayer.Team) then
                            local hitbox = player.Character.HumanoidRootPart
                            hitbox.Size = Vector3.new(hitboxSize, hitboxSize, hitboxSize)
                            hitbox.Transparency = 0.75
                            hitbox.CanCollide = false

                            -- Add a visualizer
                            if not hitbox:FindFirstChild("HitboxVisualizer") then
                                local hitboxVisualizer = Instance.new("SelectionBox")
                                hitboxVisualizer.Name = "HitboxVisualizer"
                                hitboxVisualizer.Adornee = hitbox
                                hitboxVisualizer.Parent = hitbox
                            end
                        end
                    end
                end

                -- Apply hitbox changes to all current players
                for _, player in pairs(game.Players:GetPlayers()) do
                    applyHitbox(player)
                    -- Reapply hitbox changes on respawn
                    player.CharacterAdded:Connect(function()
                        wait(1) -- Optional: Wait for the character to load
                        applyHitbox(player)
                    end)
                end

                -- Reapply hitbox changes for new players joining the game
                game.Players.PlayerAdded:Connect(function(player)
                    player.CharacterAdded:Connect(function()
                        wait(1) -- Optional: Wait for the character to load
                        applyHitbox(player)
                    end)
                end)
            else
                TextLabel.Text = "Invalid number"
            end
            TextBox.Text = ""
        end
end)
