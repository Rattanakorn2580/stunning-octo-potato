-- BYPASS TP
if game:GetService("Players").LocalPlayer.Character.Services:FindFirstChild("Client") then
    game:GetService("Players").LocalPlayer.Character.Services["Client"].Disabled = true
end


local enemies = {} 
getgenv().enemies = nil 

-- MOBS
for _,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    insert = true 
    for _,v2 in pairs(enemies) do if v2 == v.Name then insert = false end end 
    if insert then table.insert(enemies, v.Name) end 
end

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("List Mob", "BloodTheme")

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Select Auto Mob Farm")

-- auto farm
local Main = Window:NewTab("Main")
local Section = NewSection("Mob Farm")

local dropdown = Section:NewDropdown("Choose Mob", "Chooses the mob to autofarm", enemies, function(v)
    getgenv().enemies = v
end)

Section:NewToggle("Start Mob Farm", "Toggles the autofarming of the enemies", function(v)
    getgenv().autofarmenemies = v
    while wait() do
        if getgenv().autofarmenemies == false then return end 
        if getgenv().enemies == nil then 
            game.StarterGui:SetCore("SendNotification", {
                Title = "!! FAIL !!", 
                Text = "Please choose your ENEMIES",
                Icon = "",
                Duration = 2.5
            })
            getgenv().autofarmenemies = false
            return
        end
        local mob = game:GetService("Workspace").Enemies:FindFirstChild(getgenv().enemies)
        if mob == nil then
            game.StarterGui:SetCore("SendNotification", { 
                Title = "Info!",
                Text = "There is currently no spawned enemies of this type!\nJust wait until they spawn", 
                Icon = "", 
                Duration = 2.5
            })
            while wait() do 
                wait() 
                if getgenv().autofarmenemies == false then return end 
                if game:GetService("Workspace").Enemies:FindFirstChild(getgenv().enemies) ~= nil then break; end
            end 
        else
            local enemies2 = enemie
            while wait() do
                mob = game:GetService("Workspace").Enemies:FindFirstChild(getgenv().enemies)
                if enemies ~= enemies2 then break; end
                if getgenv().autofarmenemies == false then return end
                if enemies ~= nil then
                    if enemies:FindFirstChild("Humanoid") then
                        if enemies.Humanoid.Health == 0 then wait(0.1) enemies:Destroy() break; end 
                    end
                    if enemies:FindFirstChild("HumanoidRootPart") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = enemies.HumanoidRootPart.CFrame 
                    end
                end
                wait() 
            end
        end
    end
end)

-- UPDATE MOBS

game:GetService("Workspace").Enemies.ChildAdded:Connect(function() 
    for _,v2 in pairs(mobs) do table.remove(mobs, _) end
    
    for _,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        insert = true 
        for _,v2 in pairs(enemies) do if v2 == v.Name then insert = false end end
        if insert then table.insert(enemies, v.Name) end 
    end
    dropdown:Refresh(enemies)
end)

game:GetService("Workspace").Enemies.ChildRemoved:Connect(function() 
    for _,v2 in pairs(enemies) do table.remove(enemies, _) end 
    
    for _,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
        insert = true 
        for _,v2 in pairs(enemies) do if v2 == v.Name then insert = false end end 
        if insert then table.insert(enemies, v.Name) end 
    end
    dropdown:Refresh(enemies)
end)
