
local DarkraiX = loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Kavo-Ui/main/Darkrai%20Ui", true))()

local Library = DarkraiX:Window("lnWZa  X","","",Enum.KeyCode.RightControl);

--[[
DarkraiX:Window(
1 = Name Of Your Ui Library (string)
2 = Game Name (You Can Keep This Empty To Get The Current Game Name!) (string)
3 = A Logo If You Have One! (string)
4 = Ui Library Toggle (I'll Not Prefer Touching It) (function)
);
]]

Tab1 = Library:Tab("Autos")

Tab1:Seperator("Auto Spawn")

Tab1:Toggle("Auto Spawn",false,function(SP)
AutoFish = SP
    end)

Tab1:Seperator("Functions Autos")

Tab1:Toggle("Auto Fishing",false,function(value)
AutoFish = value
    end)

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
Tab1:Slider("Slider",1,100,25,function(value)
        print(value)
    end)

--[[
Tab1:Slider(
1 = Name (string)
2 = Minimum (number)
3 = Maximum (number)
4 = Currently How Much (number)
)
]]

Tab1:Dropdown("Dropdown",{"yo","sus","pro"},function(value)
            print(value)
end)

--[[
Tab1:Dropdown(
1 = Name (string)
2 = Options (table)
)
]]

Tab1:Textbox("Textbox","",true,function(value)
print(value)
end)

--[[
Tab1:Textbox(
1 = Name (string)
2 = Current Text (string)
3 = State (bool)
4 = callback (function)
)
]]
