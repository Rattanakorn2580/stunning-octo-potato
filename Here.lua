local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Test X", "DarkTheme")

-- AUTO FIND
local Tab = Window:NewTab("Auto Find")
local Section = Tab:NewSection("Auto Find")

for i,v in pairs (game:GetService("Workspace").Compass.Handle.Bit:GetDescendants()) 
if v.Name "TochInterest" then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.v.Parent.CFrame
 end
Section:NewToggle("Auto Find", " ", function(a)
    AutoFinding = a
  end)

spawn(function()
while wait() do
if AutoFinding then
pcall(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.v.Parent.CFrame
end)
end
end
end)
    
