-- Function to create GUI
local function createHitboxGui()
    -- Check if GUI already exists and remove it to avoid duplicates
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("HitboxGui") then
        game.Players.LocalPlayer.PlayerGui:FindFirstChild("HitboxGui"):Destroy()
    end

    -- Create GUI
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "HitboxGui"
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local Frame = Instance.new("Frame")
    Frame.Parent = ScreenGui
    Frame.Size = UDim2.new(0, 200, 0, 100)
    Frame.Position = UDim2.new(0, 10, 1, -110)
    Frame.AnchorPoint = Vector2.new(0, 1)
    Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Dark gray background
    Frame.BorderSizePixel = 0
    Frame.BackgroundTransparency = 0.2
    Frame.Active = true

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
    Frame.Active = not Frame.Active
end)
 
local Corner = Instance.new("UICorner")
Corner.Name = "Corner"
Corner.Parent = Toggle
    
    local TextBox = Instance.new("TextBox")
    TextBox.Parent = Frame
    TextBox.Size = UDim2.new(1, -10, 0.4, -5)
    TextBox.Position = UDim2.new(0, 5, 0, 5)
    TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- White background
    TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)  -- Black text
    TextBox.Text = "Enter hitbox size"
    TextBox.ClearTextOnFocus = true

    local TeamButton = Instance.new("TextButton")
    TeamButton.Parent = Frame
    TeamButton.Size = UDim2.new(1, -10, 0.4, -5)
    TeamButton.Position = UDim2.new(0, 5, 0.5, 5)
    TeamButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)  -- Darker gray background
    TeamButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
    TeamButton.Text = "Toggle Team Check"

    local TextLabel = Instance.new("TextLabel")
    TextLabel.Parent = Frame
    TextLabel.Size = UDim2.new(1, -10, 0.2, -5)
    TextLabel.Position = UDim2.new(0, 5, 0.9, 5)
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  -- White background
    TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)  -- Black text
    TextLabel.Text = "Hitbox Size: 1"
    TextLabel.TextScaled = true

    -- Handle Input
    local hitboxSize = 1
    local teamCheck = false

    TextBox.FocusLost:Connect(function(enterPressed)
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

    -- Toggle team check
    TeamButton.MouseButton1Click:Connect(function()
        teamCheck = not teamCheck
        TeamButton.Text = teamCheck and "Team Check: ON" or "Team Check: OFF"
    end)
end

-- Initialize GUI on script load
createHitboxGui()

-- Recreate GUI when the player's character is added (handles respawns)
game.Players.LocalPlayer.CharacterAdded:Connect(function()
    wait(1) -- Optional: Wait for the character to load
    createHitboxGui()
end)
