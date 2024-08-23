local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Test X", "DarkTheme")

local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Select Player!")

Section:NewButton("Item Get","", function()
        for i,v in pairs(game:GetService("ReplicatedStorage").GameItems:GetChildren()) do
   game:GetService("ReplicatedStorage").GameRemotes.BuyEvent:FireServer(v.Name)
        end)
    Section:NewToggle("Noclip", " ", function(t) 
            noclip = t
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
