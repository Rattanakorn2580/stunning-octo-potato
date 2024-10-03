local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/cueshut/saves/main/criminality%20paste%20ui%20library'))()

-- // Window \\ --
local window = library.new('lnWZa Hub', 'leadmarker')

-- // Tabs \\ --
local tab = window.new_tab('rbxassetid://4483345998')
local tab1 = window.new_tab('rbxassetid://4483345998')

-- // Sections \\ --
local section = tab.new_section('Autos')
local section1 = tab.new_section('Auto Farm Devil Fruit')

-- // Sector \\ --
local sector = section.new_sector('Function Auto', 'Left')
local sector1 = section.new_sector('', 'Right')

-- // Elements \\ -- (Type, Name, State, Callback)
local button = sector.element('Button', 'Button', nil, function()

end)

local toggle = sector.element('Auto Fishing', 'Toggle', false, function(v)
      AutoFish = v
  spawn(function() -- fish farm
    while wait(0) do
        pcall(function()
            if AutoFish then
                wait(0.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20000, 218, 20000)
                wait(0.5)
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if string.find(v.Name, "Rod") then
                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if string.find(v.Name, "Rod") then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                            end
                        end
                    end
                end
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if string.find(v.Name, "Rod") then
                        for _, x in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if string.find(x.Name, "Rod") then
                                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                                    if v:FindFirstChild("Bobber") then
                                        if v.Bobber.Effect.Enabled == true then
                                            wait(0.6)
                                            local args = {
                                                [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                                            }
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
                                        end
                                    elseif v.Name == "Cast" and not v:FindFirstChild("Bobber") then
                                        wait(0.6)
                                        local args = {
                                            [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                                        }
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
                                        workspace:WaitForChild("Merchants"):WaitForChild("FishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
                                    end
                                end
                            end
                        end
                    end
                end       
            end
        end)
    end
end);
end)

toggle:add_color({Color = Color3.fromRGB(84, 101, 255)}, nil, function(v)
   print(v.Color)    
end)

local dropdown = sector.element('Dropdown', 'Dropdown', {options = {'one', 'two', 'three'}}, function(v)
   print(v.Dropdown)
end)

local slider = sector.element('Slider', 'Slider', {default = {min = 1, max = 100, default = 50}}, function(v)
   print(v.Slider)
end)

local combo = sector.element('Combo', 'Combo', {options = {'bruh', 'otherbruh'}}, function(v)
   table.foreach(v.Combo, print)
end)
