local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Opl X", "DarkTheme")

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Farm")

Section:NewToggle("Auto-Farm", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv2 Angry Bob"].HumanoidRootPart.CFrame
end

        spawn(function()
    while task.wait(.1) do
        pcall(function()
            if _G.AutoFarm then
            checklevel()
            if not game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
            end
            end
        end)
    end
end)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies["Lv9 Bandit"].HumanoidRootPart.CFrame
            end

    spawn(function()
    while task.wait(.1) do
        pcall(function()
            if _G.Auto_Farm then
            checklevel()
            if not game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
            end
            end
        end)
    end
end)
end)

