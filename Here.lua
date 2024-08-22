local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Test X", "DarkTheme")

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Magma")
Section:NewToggle("Auto Equip", " ", function(t)
_G.Skill = t
while _G.Skill do
    wait()
FireSwingRemote()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("abilitySlot") then
        if v.abilitySlot.Value == "q" then
            v:FindFirstChildWhichIsA("RemoteEvent"):FireServer()
            v.cooldown.Changed:Connect(function()      
            v.cooldown.Value = 0
            end)
        end
        end
        end)
