local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("List Mob", "BloodTheme")

local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Farm")
Section:NewToggle("Lv2 Angry Bob", "", function(v)
    _G.AutoFarm = v
    while _G.AutoFarm do wait(1)
            for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
        if v.Name = "Lv2 Angry Bob" then
        if v.Humanoid.Health >= 0 then
    repeat task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv2 Angry Bob"].HumanoidRootPart.CFrame
until v.Humanoid.Health <= 0 then
end
end
end
end
end)
                        
