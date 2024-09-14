local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("[BETA] OPMIUM HUB        ONE PIECE : LEGENDARY", "DarkTheme")

local ScreenGui = Instance.new("ScreenGui") 
ScreenGui.Name = "ScreenGui" 
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") 
ScreenGui.ResetOnSpawn = false 

local Toggle = Instance.new("TextButton") 
Toggle.Name = "Toggle" 
Toggle.Parent = ScreenGui 
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0) 
Toggle.Size = UDim2.new(0, 90, 0, 38) 
Toggle.Font = Enum.Font.SourceSans 
Toggle.Text = "Turn/Off1" 
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248) 
Toggle.TextSize = 28.000 
Toggle.Draggable = true 
Toggle.MouseButton1Click:connect(function() 
Library:ToggleUI() 
end)

-- UPDATE
local Tab = Window:NewTab("Update")
local Section = Tab:NewSection("New!! ' ปรับ เมนูใหม่ ' ")
local Section = Tab:NewSection("อยู่ในช่วงพัฒนานะจ้ะ")

--AUTO
local Tab = Window:NewTab("Autos")
local Section = Tab:NewSection("[ Auto function ]")

Section:NewToggle("Auto Package", " Auto Package", function(pack)
_G.autopackage = pack
end)
spawn(function()--auto package
    while wait() do
        pcall(function()
         if _G.autopackage then
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
end)
Section:NewToggle("Auto Mission Expert", " ", function(m)
        AutoAdd = m
    end)

spawn(function()
while wait() do 
if AutoAdd then 
pcall(function() 
workspace.Merchants.ExpertiseMerchant.Clickable.Retum:FireServer()
end) 
end 
end 
end)

Section:NewToggle("Bring Df", " ", function(bringdf)
_G.BringFruit = bringdf
end)
spawn(function()--Bring DF
    while wait() do
        if _G.BringFruit then
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

Section:NewToggle("Auto Bring Compass", " ", function()
local plr=game:GetService'Players'.LocalPlayer 

	local dftofind='Compass'
	while true do 
	local char=plr.Character or plr.CharacterAdded:Wait() 
	local HRP=char:WaitForChild'HumanoidRootPart' 
	for i,v in next, workspace:GetChildren() do 
	local Handle=v:FindFirstChild'Handle' 
	if v:IsA'Tool' and string.find(v.Name:lower(), dftofind:lower()) and Handle then 
	Handle.CFrame=HRP.CFrame 
	end 
	end 
	wait(1) 
	end 


end)

Section:NewButton("TP Chest", "Tp to Chest All", function()
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2001.57654, 231.100006, 574.679382, -0.316045165, 0, 0.948744476, 0, 1, 0, -0.948744476, 0, -0.316045165))
wait(.2)
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1861.69946, 215.300018, 838.104797, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247))
wait(.2)
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1793.90454, 234.100006, 844.402405, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247))
wait(.2)
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1864.5282, 215.300018, 842.347229, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998))
wait(.2)
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1857.45728, 215.300018, 835.276245, -0.906296611, 0, 0.422642082, 0, 1, 0, -0.422642082, 0, -0.906296611))
wait(.2)
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1855.42297, 234.100006, 905.920776, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-251.260406, 272.099976, 353.275208, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-212, 221.099991, 20.5, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(108, 221.099991, -36.5, 0, 0, 1, 0, 1, -0, -1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(16.5, 217.100006, 139, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-246.776093, 272.099976, 350.08075, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-246.851013, 272.099976, 355.632568, -0.906296611, 0, -0.422642082, 0, 1, 0, 0.422642082, 0, -0.906296611))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-310.5, 219.099991, -325, -0.707134247, 0, -0.707079291, 0, 1, 0, 0.707079291, 0, -0.707134247))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(114.5, 217.099991, -247, 1, 0, 0, 0, 1, 0, 0, 0, 1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1886, 221.099991, 3312.5, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1894, 221.099991, 3277.5, 0.766061246, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, 0.766061246))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1910, 221.099991, 3295.5, 0.173624337, 0, 0.984811902, 0, 1, 0, -0.984811902, 0, 0.173624337))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1161, 216.100006, 3316.5, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1156, 216.100006, 3316.5, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1166, 216.100006, 3316.5, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-4001, 213.100006, -2187.5, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-5260.00049, 300.100006, -7772.5, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(948, 213.099991, 1210.5, 0, 0, 1, 0, 1, -0, -1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(767, 213.099991, -1370.5, 0, 0, 1, 0, 1, -0, -1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2026, 445.099976, -753.500061, 0, 0, -1, 0, 1, 0, 1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2203, 213.099991, -630.499939, 0, 0, -1, 0, 1, 0, 1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240, 215.099991, 621.500061, 0, 0, -1, 0, 1, 0, 1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1384.99988, 221.099991, -3491.5, 0, 0, 1, 0, 1, -0, -1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1263.00012, 213.099991, -3103.5, 0, 0, 1, 0, 1, -0, -1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-35.25, 226.099991, 2155.75, 0, 0, 1, 0, 1, -0, -1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-37.5, 254.099991, -1223.00012, 0, 0, 1, 0, 1, -0, -1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-272.621338, 252.099991, -943.378845, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1110.5, 221.099991, -3449, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(119.5, 245.099991, -1231.00012, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(88.5, 297.100006, -916, 0, 0, -1, 0, 1, 0, 1, 0, 0))
wait(.2)
	end)

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("[ Mob Farm ]") 
Section:NewToggle("[ Bring All ]", " ", function(bring)
	_G.BringAll = bring
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.BringAll then
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

local Weaponlist = {} 
local Weapon = nil

for i,v in 
pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do 
    table.insert(Weaponlist,v.Name) 
end 

Section:NewDropdown("Taget Weapon", " ", Weaponlist, function(currentOption) 
        Weapon = currentOption 
    end)

Section:NewToggle("Auto Click", " ", function(a) 
        AutoClicked = a 
    end)

spawn(function()
while wait() do 
if AutoClicked then 
pcall(function() 
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) 
end) 
end 
end 
end)

Section:NewToggle("Auto Equip", " ", function(a) 
        AutoEquiped = a 
    end)

spawn(function() 
while wait() do 
if AutoEquiped then 
pcall(function() 						
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Weapon))
end) 
end 
end 
end)

local Section = Tab:NewSection("[ Auto Fishing ]")
Section:NewToggle("Auto Fishing", "Fishing", function(fishing)
_G.autofish = fishing
end)

spawn(function() -- fish farm
    while wait(0) do
        pcall(function()
            if _G.autofish then
                wait(0.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19784, 218, 4675)
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
end)

Section:NewButton("Dupe","", function()
  workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("UpdateClothing_Extras"):FireServer("A","\255",31)
	end)

Section:NewToggle("Auto Find Compass", " ", function(cp)
_G.Compass = cp
		end)

spawn(function() -- find compass
    while wait(.2) do
        pcall(function()
            if _G.Compass then
                game.Workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") and not game.Players.LocalPlayer.Character:FindFirstChild("Compass") then
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Compass").Parent = game.Players.LocalPlayer.Character
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Compass") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character:FindFirstChild("Compass").Poser.Value)
                    game:GetService 'VirtualUser':CaptureController()
                    game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                end
            end
        end)
    end
end)

local Section = Tab:NewSection("[ Auto Farm Stats ]")
Section:NewToggle("Auto Mixer", " ", function(mix)
        _G.automixer = mix
    end)

spawn(function() -- auto mixer
    while wait() do
        pcall(function()
            if _G.automixer then
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
            if _G.automixer then
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
            if _G.automixer then
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
        if _G.automixer then
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

--Autos DF Farming
local Tab = Window:NewTab("Auto Df Farm")
local Section = Tab:NewSection("[ Autos Df Fruits Farming ]")

-- TP ISLAND
local Tab = Window:NewTab("TP Island")                       
local Section = Tab:NewSection("[ TP Island ]")

Section:NewButton("Boss", " Tp to Boss Island ", function()
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(4890.38916, 411.091553, -7178.46777, 0, 1, -0, -1, 0, 0, 0, 0, 1))
    end)
Section:NewButton("Crab", " Tp to Crab Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-6.5, 202, -240.5, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Cave", " Tp to Cave Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(77, 202, -975, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Windbill", " Tp to Windbill Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(92.5, 220.5, -31, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Pirate", " Tp to Pirate Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1281.5, 214.5, -1352.5, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Gassy", " Tp to Grassy Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(723.5, 238.100006, 1205.5, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Bar", " Tp to Bar Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1491.40002, 259.798401, 2170.90015, 0, 0, 1, 0, 1, -0, -1, 0, 0))
    end)
Section:NewButton("Krizma", " Tp to Krizma Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1066, 282.5, 1624.5, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Flail", " Tp to Flail Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1110.40015, 216.498383, 3367.90015, -1, 0, 0, 0, 1, 0, 0, 0, -1))
    end)
Section:NewButton("Castle", " Tp to Castle Island ", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1000.40002, 223.500046, -3338.09985, 0, 0, 1, 0, 1, -0, -1, 0, 0))
    end)
Section:NewButton("Pyramid", " Tp to Pyramid Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(114.335197, 277.835052, 4950.93066, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247))
    end)
Section:NewButton("Fishing", " Tp to Fishing Island ", function()
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1700.47021, 215.498383, -325.746338, -0.258864403, 0, 0.965913713, 0, 1, 0, -0.965913713, 0, -0.258864403))
    end)
Section:NewButton("FishSell", " Tp to FishSell Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1982.74561, 217.998383, 564.403625, 0.965929627, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, 0.965929627))
    end)
Section:NewButton("Chiff", " Tp to Chiff Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(4603, 203, 4913, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Mountain", " Tp to Mountain Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2054, 487, -608.5, 0, 0, -1, 0, 1, 0, 1, 0, 0))
    end)
Section:NewButton("Forest", " Tp to Forest Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-6033, 398.5, -7, 0, -1, 0, 1, 0, -0, 0, 0, 1))
    end)
Section:NewButton("Crescent", " Tp to Crescent Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(3198, 352.5, 1680, 0, 0, 1, 0, 1, -0, -1, 0, 0))
    end)
Section:NewButton("Purple", " Tp to Purple Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-5078.5, 354.5, -7788, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Snow", " Tp to Snow Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1895.75, 221, 3299.25, 0, 0, 1, 0, 1, -0, -1, 0, 0))
    end)
Section:NewButton("Snow Mountain", " Tp to SnowMountain Island ", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(6741.09521, 394.982117, -1716.47095, 0.603998184, -0.0751705617, 0.793432772, 0.219797119, 0.972645164, -0.0751705617, -0.766077936, 0.219797119, 0.603998184))
    end)
Section:NewButton("Kai", " Tp to Kai Island ", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

local Tab = Window:NewTab("Skill")
local Section = Tab:NewSection("[ Auto Skill ]")
local Section = Tab:NewSection("Max Charge Skill [100%]")
Section:NewToggle("Max Charge Skill", " ", function(ar)
        _G.auto100rate = ar
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
end)

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
end)

aaxc = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        if self.Name == "RemoteEvent" and args[3] == "StopCharging" and _G.auto100rate then
            args[6] = 100
            return aaxc(self, unpack(args))
        end
    end
    return aaxc(self, ...)
end)

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
    end)

local Section = Tab:NewSection("[ Auto Sam ]")
Section:NewToggle("Auto Claim10", " ", function(a) 
        AutoClaim = a 
    end)
				
spawn(function() 
while wait() do 
if AutoClaim then 
pcall(function() 
workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10") 
end) 
end 
end 
end)

local Section = Tab:NewSection("[ Auto Spam Skill 🔒 ]")

local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("[ Safe Zone ]")
local NovoBloco = Instance.new("Part", workspace) 
local ts = game:GetService("TweenService") 
NovoBloco.Anchored = true 
NovoBloco.CanCollide = true 
NovoBloco.Size = Vector3.new(200.246, 0.771, 200.852) 
_G.e = se

    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.e then
ts:Create(NovoBloco, TweenInfo.new(0.2), 
		{CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -3.5, 0)}):Play() 
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(5000.5, 45000, 5000, 0, 0, -1, 0, 1, 0, 1, 0, 0))
            end
        end)
       end)
    end)

Section:NewToggle("Auto Tp Safezone", " Click this 'Tp SafeZone will working' ", function(se)
	_G.e = se
	end)
Section:NewButton("TP Safezone", " Tp to SafeZone", function()
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(5000.5, 45003, 5000, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	end)

local Section = Tab:NewSection("[ Players ]")
Plr = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Plr,v.Name) 
end
local drop = Section:NewDropdown("Player List", "Click To Select", Plr, function(t)
   PlayerTP = t
end)

Section:NewButton("Click To TP", " Tp to Player ", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end)

Section:NewToggle("View Player", "View Player", function(viewplr)
   Sp = viewplr
    local plr1 = game.Players.LocalPlayer.Character.Humanoid
    local plr2 = game.Players:FindFirstChild(PlayerTP)
    repeat wait(0)
        game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
    until Sp == false or plr2.Character.Humanoid.Health == 0
    if Sp == false or plr2.Character.Humanoid.Health ~= 0 then
        game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    end
end)

Section:NewToggle("Bring Player", " Bring Player to you", function(state)
_G.BringPlr = state
while _G.BringPlr do wait()
game.Players[PlayerTP].Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
end
end)

-- SEVER
local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("[ Other ]")
Section:NewButton("Rejoin"," Rejoin Sever ", function()
  game.Players.LocalPlayer:Kick()
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)

Section:NewButton("RemoteSpy"," Remote Spy Mobile ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RS/main/SimpleSpyMobile"))()
	end)
			
Section:NewButton("BoostFPS"," BoostFPS ", function()
loadstring(game:HttpGet("https://pastebin.com/raw/8YZ2cc6V"))()
end)
