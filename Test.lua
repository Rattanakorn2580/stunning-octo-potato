- BYPASS TP 
if game:GetService("Players").LocalPlayer.Character.Services:FindFirstChild("Client") then 
  game:GetService("Players").LocalPlayer.Character.Services["Client"].Disabled = true 
end 
local mobs = {} getgenv().mob = nil 

-- MOBS 
for _,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
  insert = true for _,v2 in pairs(mobs) do 
    if v2 == v.Name then insert = false 
    end 
  end 
  if insert then 
    table.insert(mobs, v.Name) 
  end 
end 

-- CREDIT Kavo Libary 
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))() 
local Window = Library.CreateLib("King legency", "GrapeTheme") 

-- auto farm 
local Main = Window:NewTab("Main") 
local Section = Main:NewSection("Mob Farm") 
local dropdown = Section:NewDropdown("Choose Mob", "Chooses the mob to autofarm", mobs, function(v) 
    getgenv().mob = v 
  end)

Section:NewToggle("Start Mob Farm", "Toggles the autofarming of the mobs", function(v) 
    getgenv().autofarmmobs = v 
    while wait() do 
      if getgenv().autofarmmobs == false then return end 
      if getgenv().mob == nil then
        getgenv().autofarmmobs = false return end 
      local mob = game:GetService("Workspace").Enemies:FindFirstChild(getgenv().mob) 
      if mob == nil then
        while wait() do 
          wait() 
          if getgenv().autofarmmobs == false then return end 
          if game:GetService("Workspace").Enemies:FindFirstChild(getgenv().mob) ~= nil then break; end end 
      else 
        local mob2 = mob 
        while wait() do 
          mob = game:GetService("Workspace").Enemies:FindFirstChild(getgenv().mob) 
          if mob ~= mob2 then break; end 
          if getgenv().autofarmmobs == false then return end 
          if mob ~= nil then if mob:FindFirstChild("Humanoid") then 
          if mob.Humanoid.Health == 0 then wait(0.1) mob:Destroy() break; end end 
          if mob:FindFirstChild("HumanoidRootPart") then 
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame * CFrame.new(0,0,2) 
            end 
          end 
          wait() 
        end 
      end 
    end 
  end)

