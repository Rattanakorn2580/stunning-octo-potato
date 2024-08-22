local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Test X", "DarkTheme")

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Magma")
Section:NewToggle("Auto Equip", " ", function(t) 
_G.Tp = t
while _G.Tp do wait()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-949, 213.5, 1655, 1, 0, 0, 0, 1, 0, 0, 0, 1))
end
end
_G.Skill = true
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
