
local Window = Tab:NewWindow("Main")
local Tab = Tab:NewSection("Bring List")
Section:NewTab("Bring Angry Bob")
_G.Bring = t
while _G.Bring do wait()
game:GetService("Workspace").Enemies["Lv2 Angry Bob"].HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
end)
