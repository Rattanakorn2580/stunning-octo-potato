local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("List Mob", "BloodTheme")

local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Farm")

Section:NewToggle("Lv2 Angry Bob", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(1)
            for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
        if "Lv2 Angry Bob" then
        if v.Humanoid.Health >= 0 then
    repeat task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
until _G.AutoFarm false or v.Humanoid.Health <= 0 then
                    end
                end
            end
        end
    end)
                        
