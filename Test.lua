-- BYPASS TP
if game:GetService("Players").LocalPlayer.Character.Services:FindFirstChild("Client") then
    game:GetService("Players").LocalPlayer.Character.Services["Client"].Disabled = true
end


local mobs = {} 
getgenv().mob = nil 

-- MOBS
for _,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    insert = true 
    for _,v2 in pairs(mobs) do if v2 == v.Name then insert = false end end 
    if insert then table.insert(mobs, v.Name) end 
end

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("List Mob", "BloodTheme")

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Select Auto Mob Farm")

Section:NewToggle("Lv2 Angry Bob", "", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = 
game:GetService("Workspace").Enemies["Lv2 Angry Bob"].HumanoidRootPart.CFrame * CFrame.new(78.3136978, 225.999542, -249.492081, 0.584371388, 0, 0.811486363, 0, 1, 0, -0.811486363, 0, 0.584371388)
end
    end)
