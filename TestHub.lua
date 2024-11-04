local ScreenGui = Instance.new("ScreenGui")
local LibInW = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
ScreenGui.IgnoreGuiInset = true

LibInW.Parent = ScreenGui
LibInW.Text = ""
LibInW.Position = UDim2.new(0.5, -50, 0.5, -25)
LibInW.Size = UDim2.new(0, 100, 0, 50)
LibInW.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LibInW.TextColor3 = Color3.fromRGB(255, 255, 255)

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
    LibInW.Visible = not LibInW.Visible
end)
 
local Corner = Instance.new("UICorner")
Corner.Name = "Corner"
Corner.Parent = Toggle
