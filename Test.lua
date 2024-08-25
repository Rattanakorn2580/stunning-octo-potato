local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("List Mob", "BloodTheme")

local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Farm")

Section:NewToggle("Lv20 Gunslinger", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv20 Gunslinger"].HumanoidRootPart.CFrame
end
    end)
