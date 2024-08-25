local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Opl X", "BloodTheme")

local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Find")
Section:NewToggle("Auto Find", "", function(state)
_G.AutoFind = state 
while _G.AutoFind do wait() 
for i,v in pairs(game:GetService("Workspace").Compass.Handle:GetDescendants()) do 
if v.Name == "TouchInterest" then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame 
end 
end 
end 
end)
