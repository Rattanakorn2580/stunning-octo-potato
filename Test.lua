local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("List Mob", "BloodTheme")

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Select Auto Mob Farm")

Section:NewToggle("Lv2 Angry Bob", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(2.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv2 Angry Bob"].HumanoidRootPart.CFrame
    CFrame = new.CFrame(0,10,0)
        end
    end)
