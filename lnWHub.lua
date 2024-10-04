
local DarkraiX = loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Kavo-Ui/main/Darkrai%20Ui", true))()

local Library = DarkraiX:Window("lnWZa  X","","",Enum.KeyCode.RightControl);

Tab1 = Library:Tab("Autos")

Tab1:Seperator("Auto Spawn")

Tab1:Toggle("Auto Respawn",false,function(SP)
_G.autorespawn = SP
    end)

spawn(function()--autorespawn
    while wait() do
        if _G.autorespawn then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Visible == true then
                    for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Load.MouseButton1Click)) do
                        v.Function()
                    end
                end
            end)
        end
    end
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

Tab1:Toggle("Auto Package",false,function(Apage)
AutoPackage = Apage
    end)

spawn(function()
    while wait() do
        pcall(function()
         if AutoPackage then
            wait(0.6)
                game.workspace:WaitForChild("Merchants"):WaitForChild("QuestFishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
            wait(0.001)
             local playernameuser = game.Players.LocalPlayer.Name
            if  game.Players.LocalPlayer.Backpack:FindFirstChild("Package") or game.Players.LocalPlayer.Character:FindFirstChild("Package") or game.workspace.playernameuser:FindFirstChild("Package") then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.AffinityMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat1Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat2Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants:GetChildren()[16].HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat3Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat4Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.DrinkMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.BetterDrinkMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.ExpertiseMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.SniperMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1549, 264, 2136)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.SwordMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.KrizmaMerch.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.FishMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.FlailMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.FriendMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.HeavyWeaponsMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.QuestMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.EmoteMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))      
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2610, 254, 1114)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))      
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1982, 218, 567)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))      
            end
        end
        end)
    end
end);

Tab1:Toggle("Auto Claim Mission",false,function(miss)
AutoMission = miss
    end)

spawn(function()
while wait() do 
if AutoMission then 
pcall(function() 
workspace.Merchants.ExpertiseMerchant.Clickable.Retum:FireServer()
end) 
end 
end 
end);

Tab1:Toggle("Auto Bring DF Fruit",false,function(df)
BringDF = df
    end)

spawn(function()
    while wait() do
        if BringDF then
            pcall(function()
                for i,v in pairs(game.Workspace.Trees.Tree.Model:GetChildren()) do 
                    if v.ClassName == "Tool" then 
                        fireclickdetector(v.Main.ClickDetector)
                    end
                end
            end)
        end
    end
 end)

Tab1:Seperator("Auto Train Haki")

Tab1:Toggle("Auto Haki | Slowly |",false,function(hk)
AutoHaki1 = hk
    end)

spawn(function()
    while wait() do
        pcall(function()
            if AutoHaki1 then
                for i = 1, 2 do
                    local args = {
                        [1] = "On",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
		local args = {
                        [1] = "On",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
		local args = {
                        [1] = "On",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
		local args = {
                        [1] = "On",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
		local args = {
                        [1] = "On",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
                    task.wait(0.1)
                    local args = {
                        [1] = "Off",
                        [2] = 1
                    }
                    workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
		end
            end
        end)
    end
end)

Tab1:Toggle("Auto Haki | Faster |",false,function(hkk)
AutoHaki2 = hkk
    end)

game:GetService('RunService').RenderStepped:connect(function()
    if AutoHaki2 then
        for i = 1, 100 do
            local args = {
                [1] = "On",
                [2] = 1
            }
            task.wait(0.1)
            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "On",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
            task.wait(0.1)
            local args = {
                [1] = "Off",
                [2] = 1
            }

            workspace:WaitForChild("UserData"):WaitForChild("User_" .. game.Players.LocalPlayer.UserId):WaitForChild("III"):FireServer(unpack(args))
        end
    end
end);

Tab1 = Library:Tab("Auto Farm")

Tab1:Seperator("Auto Farm Mob")

Tab1:Toggle("Auto Farm | All |",false,function(afa)
AutoFarmA = afa
    end)

spawn(function()
    while wait() do
        pcall(function()
            if AutoFarmA then
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv4 Boar")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Crab")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv12 Thug")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv15 Thug")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv17 Thug")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv22 Thug")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv23 Thug")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv24 Thug")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv30 Thug")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv40 Thug")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Thief")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Bandit")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv4 Freddy")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
		     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv24 Fred")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv28 Fredde")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv32 Fredric")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv34 Freddi")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv40 Cave")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv20 Gunslinger")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv24 Gunslinger")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv36 Gunslinger")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv42 Gunslinger")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                     for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Lv50 Gunslinger")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
            end
        end)
    end
end)

Tab1:Toggle("Auto Bring | All |",false,function(bms)
BringMobs = bms
    end)

spawn(function() -- autofarm cannon
    while wait(0) do
        pcall(function()
            if BringMobs then
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, " Boar")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v:FindFirstChild("HumanoidRootPart").Anchored = true
                        v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,4,-15)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Crab")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
                        v:FindFirstChild("HumanoidRootPart").Anchored = true
                        v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,4,-15)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Angry ") 
                    or string.find(v.Name, "Bandit") 
                    or string.find(v.Name, "Thief")
                    or string.find(v.Name, "Crab") 
                    or string.find(v.Name, " ") 
                    or string.find(v.Name, " ") 
                    or string.find(v.Name, "Freddy")  
                    or string.find(v.Name, " ") 
                    or string.find(v.Name, "Thug") 
                    or string.find(v.Name, "Gunslinger")
                    or string.find(v.Name, " ") 
                    or string.find(v.Name, " ") 
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v:FindFirstChild("HumanoidRootPart").Anchored = true
                        v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,4,-15)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

Tab1:Seperator("Auto Weapon")

local Weaponlist = {}
local Weapon = nil

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    table.insert(Weaponlist,v.Name)
end

Tab1:Dropdown("Choose Weapon", Weaponlist,{""},function(currentOption)
            Weapon = currentOption
end)

Tab1:Toggle("Auto Click",false,function(ack)
AutoClicking = ack
    end)

spawn(function() 
game:GetService("RunService").RenderStepped:Connect(function() 
pcall(function() 
if AutoClicking then 
game:GetService'VirtualUser':CaptureController() 
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) 
end 
end) 
end) 
end)

Tab1:Toggle("Auto Equip",false,function(aed)
Equip = aed
    end)

spawn(function()
while wait() do
if Equip then
pcall(function()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Weapon))
end)
end
end
end)

Tab1:Seperator("Auto Fruity")

Tab1:Toggle("Auto Stats",false,function(afs)
AutoStats = afs
    end)

spawn(function() -- auto mixer
    while wait() do
        pcall(function()
            if AutoSats then
                wait(1)
                for i, v in pairs(game:GetService("Workspace").Island8.Kitchen:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)
    end
end)


spawn(function() -- auto drink mixer
    while wait() do
        pcall(function()
            if AutoStats then
                for a, h in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if h:IsA("Tool") and string.find(h.Name, "Juice") or string.find(h.Name, "Milk") or
                    string.find(h.Name, "Cider") or string.find(h.Name, "Lemonade") or
                    string.find(h.Name, "Smoothie") or string.find(h.Name, "Golden") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(h)
                        game:GetService 'VirtualUser':CaptureController()
                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    end
                end
            end
        end)
    end
end)

spawn(function()--autofruit
    while wait() do
        pcall(function()
            if AutoStats then
                wait(.5)
                for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
                for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)
    end
end)

spawn(function()--autofruit
    while wait() do
    pcall(function()
        if AutoStats then
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            local PopperClient = LocalPlayer:WaitForChild("PlayerScripts").PlayerModule.CameraModule.ZoomController.Popper
            
            for i, v in next, getgc() do
                if getfenv(v).script == PopperClient and typeof(v) == "function" then
                    for i2, v2 in next, debug.getconstants(v) do
                        if tonumber(v2) == 0.25 then
                            debug.setconstant(v, i2, 0)
                       -- elseif tonumber(v2) == 0 then
                           -- debug.setconstant(v, i2, 0.25)
                        end
                    end
                end
            end
            --Barrels
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12, 216, -351)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4, 216, -378)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-114, 216, -750)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-133, 216, -710)
            wait(.5)
    
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-204, 224, -206)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1754, 217, -327)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1706, 217, -326)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1754, 216, -217)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1550, 217, -307)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1494, 217, -306)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1493, 217, -290)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1871, 218, 823)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1858, 218, 814)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1882, 219, 838)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1989, 235, 568)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1970, 219, 576)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1989, 218, 561)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1981, 217, 553)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1517, 217, -289)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1186, 217, -285)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1173, 217, -286)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1009, 220, 3342)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2601, 254, 1111)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2618, 254, 1110)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(989, 224, -3337)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916, 216, 3409)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(882, 218, 3364)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1167, 219, 3228)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(987, 224, -3337)
            wait(.5)
            --[[
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(987, 224, -3337)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1072, 224, -3429)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1195, 224, -3372)
            wait(.5)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1238, 224, -3231)
            wait(1.5)]]
            for i,v in pairs(game.Workspace:GetChildren()) do 
                if v.ClassName == "Tool" then
                    v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
            wait(1.5)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1193, 216, 630)
            wait(5)
            end
        end)
    end
end)

Tab1 = Library:Tab("Player")

Tab1:Seperator("Players")

Plr = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
	table.insert(Plr,v.Name)
end

Tab1:Dropdown("Choose Player", Plr,{""},function(spr)
            SelectPlayer = spr
end)

Tab1:Button("Click To Tp",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[SelectPlayer].Character.HumanoidRootPart.CFrame
end)

Tab1:Toggle("Behind Player",false,function(abp)
Behindplr = abp
    end)

spawn(function() 	
while wait() do
pcall(function()	
if Behindplr then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[SelectPlayer].Character.HumanoidRootPart.CFrame*CFrame.new(0,0,2)
		end
	end)	
	end 	
end)

Tab1:Toggle("Bring Player",false,function(bpl)
BringPlr = bpl
    end)

spawn(function()
    while wait() do
        if BringPlr then
            pcall(function()
                game.Players[SelectPlayer].Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-5)
            end)
        end
    end
end)

Tab1:Toggle("Bring | All Player |",false,function(bpa)
BringAll = bpa
    end)

spawn(function() -- bring Plr
    while wait() do
        if BringAll then
            pcall(function()
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-5)
                        if v.Character.Humanoid.Health == 0 then
                        	v.Character.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end)
        end
    end
end)

Tab1 = Library:Tab("NPCs")

Tab1:Seperator("Teleport To NPCs")

Tab1:Dropdown("Choose NPCs",{"Rayleigh", "Better Drink", "Drink", "Flail", "QuestFish", "Krizma", "Sword", "Sniper", "Emote", "Affinity","Fish", "Expertise"},function(tpm)
            getgenv().tpmerchant = tpm
end)

Tab1:Button("Click To Tp",function()
    if getgenv().tpmerchant == "Rayleigh" then
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.QuestHakiMerchant.HumanoidRootPart.CFrame
	elseif getgenv().tpmerchant == "Better Drink" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1493, 260, 2171)
        elseif getgenv().tpmerchant == "Drink" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1282, 218, -1368)
        elseif getgenv().tpmerchant == "Flail" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1110, 217, 3369)
        elseif getgenv().tpmerchant == "QuestFish" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1702, 216, -325)
        elseif getgenv().tpmerchant == "Krizma" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1072, 361, 1669)
        elseif getgenv().tpmerchant == "Sword" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1005, 224, -3339)
        elseif getgenv().tpmerchant == "Sniper" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1843, 222, 3416)
        elseif getgenv().tpmerchant == "Emote" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1522, 265, 2165)
        elseif getgenv().tpmerchant == "Affinity" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(113, 278, 4952)
        elseif getgenv().tpmerchant == "Fish" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1983, 218, 566)
        elseif getgenv().tpmerchant == "Expertise" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(903, 270, 1219)
end
end)

Tab1:Seperator("Quest Sam")

Tab1:Button("Dupe",function()
    workspace.UserData["User_"..game.Players.LocalPlayer.UserId].UpdateClothing_Extras:FireServer("A", "\255", 34)
        game:GetService("Players").LocalPlayer.Character.CharacterTrait.ClothingTrigger:FireServer() 

end)

Tab1:Toggle("Auto Find",false,function(afc)
AutoFind = afc
    end)

spawn(function()
    while wait() do
        pcall(function()
            if not AutoFind then return end;
            local Compass = game.Players.LocalPlayer.Backpack:FindFirstChild("Compass");
            local Compass2 = game.Players.LocalPlayer.Character:FindFirstChild("Compass");
            if Compass or Compass2 then
                local OldPostiton = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
                game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                Compass.Parent = game.Players.LocalPlayer.Character;
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Compass.Poser.Value);
                Compass:Activate();
                wait(0.2);
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(OldPostiton);
            end
        end)
    end
end)


Tab1:Toggle("Auto Claim Sam | Claim10 |",false,function(asq)
AutoSamQuest = asq
    end)

spawn(function()
    while wait() do
        pcall(function()
            if not AutoSamQuest then return end;
            game.Workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10");
            game.Workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10");
        end)
    end
end)

Tab1 = Library:Tab("TP Island")

local SafeZoneUnderSea = Instance.new("Part",game.Workspace)
    SafeZoneUnderSea.Name = "SafeZoneUnderSeaPart"
    SafeZoneUnderSea.Size = Vector3.new(200,3,200)
    SafeZoneUnderSea.Position = Vector3.new((math.random(-5000, 5000)), -491, (math.random(-5000, 5000)))
    SafeZoneUnderSea.Anchored = true

local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-1000000, 1000000)), (math.random(10000, 50000)), (math.random(-1000000, 1000000)))
    SafeZoneOuterSpace.Anchored = true

Tab1:Seperator("Safe Zone")

Tab1:Button("SafeZone Sky",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
end)

Tab1:Button("SafeZone UnderSea",function()
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
        wait(0.15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneUnderSeaPart"].CFrame * CFrame.new(0, 5, 0)
end)

Tab1:Seperator("Teleport To Island")

Tab1:Dropdown("Choose Island",{"Grassy","Kaizu","Snow Mountains","Pursuer Boss","Bar",
	                           "Cliffs","Windmill", "Cave","Krizma","Sam","Green","Trees",
	                           "Pyramid","Package","Snowy","Mountain","Marine Ford","Sand Castle",
	                           "Forest","Evil","Crescent","Islands","Town","Rocky","Palm","Sand",
	                           "Sand 2","Small","Tiny","Super Tiny","Grass","Atlar"},function(tpl)
            getgenv().tpisland = tpl
end)

Tab1:Button("Click To Tp",function()
    if getgenv().tpisland == "Grassy" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(737, 241, 1209)
      elseif getgenv().tpisland == "Kaizu" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1526.0230712891, 364.99990844727, 10510.020507812)
      elseif getgenv().tpisland == "Snow Mountains"  then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6501, 408, -1261)
      elseif getgenv().tpisland == "Pursuer Boss" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4847, 570, -7143)
      elseif getgenv().tpisland == "Bar" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1522, 260, 2188)
      elseif getgenv().tpisland == "Cliffs" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4598, 217, 4964)
      elseif getgenv().tpisland == "Windmill" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7, 224, -91)
      elseif getgenv().tpisland == "Cave" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-280, 217, -831)
      elseif getgenv().tpisland == "Krizma" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1109, 341, 1645)
      elseif getgenv().tpisland == "Sam" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1283, 218, -1348)
      elseif getgenv().tpisland == "Green" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2727, 253, 1041)
      elseif getgenv().tpisland == "Trees" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1068, 217, 3351)
      elseif getgenv().tpisland == "Pyramid" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(118, 216, 4773)
      elseif getgenv().tpisland == "Merlin Fish" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1668, 217, -300)
      elseif getgenv().tpisland == "Snowy" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1896, 222, 3385)
      elseif getgenv().tpisland == "Mountain" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2052, 488, -701)
      elseif getgenv().tpisland == "Marine Ford" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3164, 296, -3780)
      elseif getgenv().tpisland == "Sand Castle" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1020, 224, -3277)
      elseif getgenv().tpisland == "Forest" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5781, 216, 114)
      elseif getgenv().tpisland == "Evil" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5169, 523, -7803)
      elseif getgenv().tpisland == "Crescent" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3193, 357, 1670)
      elseif getgenv().tpisland == "Islands" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4319, 245, 5252)
      elseif getgenv().tpisland == "Town" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1818, 218, 755)
      elseif getgenv().tpisland == "Rocky" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-37, 229, 2149)
      elseif getgenv().tpisland == "Palm" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(766, 216, -1374)
      elseif getgenv().tpisland == "Sand" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2747, 216, -942)
      elseif getgenv().tpisland == "Sand 2" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(162, 216, -2265)
      elseif getgenv().tpisland == "Small" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1237, 240, -244)
      elseif getgenv().tpisland == "Tiny" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1235, 223, 623)
      elseif getgenv().tpisland == "Super Tiny" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4007, 216, -2190)
      elseif getgenv().tpisland == "Grass" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2096, 217, -1884)
      elseif getgenv().tpisland == "Atlar" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Altar.RecepticalEffect.CFrame * CFrame.new(0, 5, 0)
		end
	end)

Tab1:Seperator("Event Halloween")

Tab1:Toggle("Bring Farm | Zombies |",false,function(fz)
FarmZom = fz
    end)

spawn(function()
    while wait() do
        pcall(function()
            if FarmZom then
		for _,v in pairs(game.Workspace.WorldEvent.Halloween.Zombies:GetChildren()) do
                    if string.find(v.Name, "Zombie")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(15, 15, 15)
                        --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.HumanoidRootPart.Transparency = 0.9
			v:FindFirstChild("HumanoidRootPart").Anchored = true
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,5)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
                end
            end
        end)
    end
end)

Tab1:Button("Tp To Pumpkin",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.WorldEvent.Halloween.Pumpkin.CFrame
end)

Tab1:Toggle("Auto Click Pumpkin",false,function(pck)
Pumpck = pck
    end)

spawn(function()--autofruit
    while wait() do
        pcall(function()
            if Pumpck then
                wait(.5)
                for i,v in pairs(game.Workspace.WorldEvent.Halloween.Pumpkin:GetChildren()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)
    end
end)

Tab1 = Library:Tab("Skill")

Tab1:Seperator("Max Charge Skill")

Tab1:Toggle("Max Charge Skill",false,function(maxc)
skillmax = maxc
    end)

local mta = getrawmetatable(game)
local namecall = mta.__namecall
local setreadonly = setreadonly or make_writable


setreadonly(mta, false)

mta.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local arguments = args
    local a = {}
    for i = 1, #arguments - 1 do
        a[i] = arguments[i]
    end
    local method = getnamecallmethod() 

    if method == 'FireServer' or method == "InvokeServer" then
        if self.Name == 'Drown' and _G.nowaterdamage then
            if args[1] then
                return nil
            end
        end
    end
    
    return namecall(self, ...)    
end);

local attackremote = {}    

local a
a=hookmetamethod(game,"__namecall",function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        if self.Name == "RequestAnimation" and game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
            attackremote[self.Name] = args[1]
            return a(self,unpack(args))
        elseif self.Name == "RequestAnimation" and game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
            attackremote[self.Name] = ""
        end
    end
      return a(self,...)
end);

aaxc = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        if self.Name == "RemoteEvent" and args[3] == "StopCharging" and skillmax then
            args[6] = 100
            return aaxc(self, unpack(args))
        end
    end
    return aaxc(self, ...)
end);

local remotes = {}
    local azc
    azc=hookmetamethod(game,"__namecall",function(self,...)
        local args = {...}
        local method = getnamecallmethod()
        if method == "FireServer" or method == "InvokeServer" then
            if self.Name == "RemoteEvent" and args[3] == "StopCharging" then
                remotes[self.Name] = args[1]
                return azc(self,unpack(args))
            end
        end
          return azc(self,...)
    end);

Tab1 = Library:Tab("Misc")

Tab1:Seperator("Server")

Tab1:Button("Rejoin",function()
    print("hi")
end)

Tab1:Seperator("Unbox")

Tab1:Toggle("Unbox | Common |",false,function(ubc)
unboxC = ubc
    end)

spawn(function() 
while wait() do 
pcall(function() 
if not unboxC then return end; 
for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
if table.find(List.DevConfig["ListOfBox1"], Value.Name) then 
game.Players.LocalPlayer.Character.Humanoid:UnequipTools(); 
Value.Parent = game.Players.LocalPlayer.Character; 
Value:Activate(); 
end 
end 
end) 
end 
end)

Tab1:Toggle("Unbox | Uncommon |",false,function(ubu)
unboxUc = ubu
    end)

spawn(function() 
while wait() do 
pcall(function() 
if not unboxUc then return end; 
for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
if table.find(List.DevConfig["ListOfBox2"], Value.Name) then 
game.Players.LocalPlayer.Character.Humanoid:UnequipTools(); 
Value.Parent = game.Players.LocalPlayer.Character; 
Value:Activate(); 
end 
end 
end) 
end 
end)

Tab1:Toggle("Unbox | Rare, Ultra|",false,function(ubr)
UnboxRu = ubr
    end)

spawn(function() 
while wait() do 
pcall(function() 
if not unboxRu then return end; 
for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
if table.find(List.DevConfig["ListOfBox3"], Value.Name) then 
game.Players.LocalPlayer.Character.Humanoid:UnequipTools(); 
Value.Parent = game.Players.LocalPlayer.Character; 
Value:Activate(); 
end 
end 
end) 
end 
end)
