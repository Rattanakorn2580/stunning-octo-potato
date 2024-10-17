local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Golden Hub", "Synapse")

local gui = Instance.new("ScreenGui")
gui.Name = "patrickGui"
gui.Parent = game.CoreGui

local TextButton = Instance.new("TextButton")
TextButton.Text = "Toggle"
TextButton.TextSize = 24
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.BackgroundColor3 = Color3.new(0, 1, 1)
TextButton.BorderColor3 = Color3.new(1, 1, 1)
TextButton.BorderSizePixel = 4
TextButton.Font = Enum.Font.Code
TextButton.Size = UDim2.new(0.2, 0, 0.1, 0)
TextButton.Position = UDim2.new(0, 0, 0.4, 0)
TextButton.MouseButton1Click:Connect (function()
Library:ToggleUI()
end)
TextButton.Parent = gui
TextButton.Draggable = true

local cornerUI = Instance.new("UICorner")
cornerUI.CornerRadius = UDim.new(0, 5)
cornerUI.Parent = TextButton

local uiStroke = Instance.new("UIStroke")
    uiStroke.Color = Color3.new(0, 0, 0)
    uiStroke.Thickness = 2
    uiStroke.Parent = TextButton
    
