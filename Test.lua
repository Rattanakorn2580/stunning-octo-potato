local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("List Mob", "BloodTheme")

local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Farm")
Section:NewToggle("Lv2 Angry Bob", "", function(v)
    _G.AutoFarm = v
    while wait(1) do
        if v.Humanoid.Health >= 0 then
    repeat task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv2 Angry Bob"].HumanoidRootPart.CFrame
until v.Humanoid.Health <= 0 then
end
end)
end                
