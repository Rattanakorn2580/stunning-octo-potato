local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Test X", "DarkTheme")

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Auto Farm")

local EnemiesHit = nil
for i,v in 
pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
end
Section:NewToggle("Auto Farm", " ", function(t)
    _G.EnemiesHit = t
    end)
        
spawn(function()
while _G.EnemieHit wait() do
if EnemiesHit then
pcall(function()
v.HumanoidRootPart.Size = Vector3.new(35, 35, 35) 
v.HumanoidRootPart.Transparency = 0.5 
end
end
end
end)
