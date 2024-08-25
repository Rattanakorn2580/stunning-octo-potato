local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("List Mob", "BloodTheme")

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Select Auto Mob Farm")

Section:NewToggle("Auto Farm", "", function(state)
  _G.AutoFarm = state
 while _G.AutoFarm do wait(1)
  pcall(function()
  for i,v in pairs(game:GetService("Workspace").Enemies:Descendants()) do
  if v.Name == "Lv2 Angry Bob" then
  if Humanoid.Health >= 0 then
  repeat task.wait()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.Health
        until _G.AutoFarm false or v.Humanoid.Health <= 0 then
       end
      end
     end)
   end
