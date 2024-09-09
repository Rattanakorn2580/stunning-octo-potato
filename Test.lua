
do local ui =  game:GetService("CoreGui"):FindFirstChild("NOOB HUB")  if ui then ui:Destroy() end end

local NOOBHUB = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Teleport1 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Teleport2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")

--Properties:

NOOBHUB.Name = "NOOB HUB"
NOOBHUB.Parent = game.CoreGui
NOOBHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = NOOBHUB
Frame.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
Frame.Position = UDim2.new(0.00439238641, 0, 0.596462965, 0)
Frame.Size = UDim2.new(0, 137, 0, 74)

UICorner.Parent = Frame

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0729926974, 0, -0.270270258, 0)
Title.Size = UDim2.new(0, 67, 0, 20)
Title.Font = Enum.Font.GothamSemibold
Title.Text = "NOOB HUB"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 14.000


UICorner_2.Parent = Teleport1
Teleport1.Name = "Teleport1"
Teleport1.Parent = Frame
Teleport1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Teleport1.Position = UDim2.new(0.124087594, 0, 0.162162155, 0)
Teleport1.Size = UDim2.new(0, 103, 0, 23)
Teleport1.Font = Enum.Font.GothamSemibold
Teleport1.Text = "Teleport1"
Teleport1.TextColor3 = Color3.fromRGB(0, 0, 0)
Teleport1.TextSize = 14.000
Teleport1.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-22.854461669922, 12.999997138977, -69.84619140625)
end)

Teleport2.Name = "Teleport2"
Teleport2.Parent = Frame
Teleport2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Teleport2.Position = UDim2.new(0.124087594, 0, 0.581081033, 0)
Teleport2.Size = UDim2.new(0, 103, 0, 23)
Teleport2.Font = Enum.Font.GothamSemibold
Teleport2.Text = "Teleport2"
Teleport2.TextColor3 = Color3.fromRGB(0, 0, 0)
Teleport2.TextSize = 14.000
Teleport2.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-27.742389678955, 12.999997138977, -93.027008056641)
end)
UICorner_3.Parent = Teleport2
