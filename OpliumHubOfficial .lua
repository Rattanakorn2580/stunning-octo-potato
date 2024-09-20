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

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "OPlium Hub | Beta", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local List = { DevConfig = {} }; 
List.DevConfig["ListOfBox"] = {"Common Box", "Uncommon Box"}; 
List.DevConfig["ListOfDrink"] = {"Cider+", "Lemonade+", "Juice+", "Smoothie+"}; 
List.DevConfig["ListOfDrinkFormMixer"] = {"Cider", "Lemonade", "Juice", "Smoothie", "Milk", "Golden Apple"};

local TabAuto = Window:MakeTab({ 	
        Name = "Autos", 	
        Icon = "rbxassetid://4483345998", 	
        PremiumOnly = false })

local Section = TabAuto:AddSection({ 	
    Name = "function Auto [ All ]" }) 

TabAuto:AddToggle({ 	
        Name = "Auto Package", 	
        Default = false, 	
        Callback = function(AP) 		
            AutoPackage = AP	
        end })

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
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat1Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,-3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat2Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,-3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants:GetChildren()[16].HumanoidRootPart.CFrame*CFrame.new(0,0,-3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat3Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat4Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,-3.1)
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

TabAuto:AddToggle({ Name = "Auto Unbox", 	
		Default = false, 	
		Callback = function(AUB) 		
			AutoUnboxBoxXX = AUB 	
		end }) 

spawn(function() 
while wait() do 
pcall(function() 
if not AutoUnboxBoxXX then return end; 
for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
if table.find(List.DevConfig["ListOfBox"], Value.Name) then 
game.Players.LocalPlayer.Character.Humanoid:UnequipTools(); 
Value.Parent = game.Players.LocalPlayer.Character; 
Value:Activate(); 
end 
end 
end) 
end 
end);

local Tab1 = Window:MakeTab({ 	Name = "Auto Farm", 	
    Icon = "rbxassetid://4483345998", 	
    PremiumOnly = false })

local Section = Tab1:AddSection({ 	
    Name = "function Farm" }) 

Tab1:AddToggle({ 	
        Name = "Auto Farm Mob [ All ]", 	
        Default = false, 	
        Callback = function(BMS) 		
            BringMobs = BMS
        end })

spawn(function()
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
end);

local Section = Tab1:AddSection({
	Name = "Auto Quest Sam"
})

Tab1:AddButton({
	Name = "Dupe",
	Callback = function()
        workspace.UserData["User_"..game.Players.LocalPlayer.UserId].UpdateClothing_Extras:FireServer("A", "\255", 34)
        game:GetService("Players").LocalPlayer.Character.CharacterTrait.ClothingTrigger:FireServer() 

  	end    
})

Tab1:AddToggle({
	Name = "Auto Claim Sam Quest",
	Default = false,
	Callback = function(ASQ)
		AutoSamQuestXX = ASQ
	end    
})

spawn(function()
    while wait() do
        pcall(function()
            if not AutoSamQuestXX then return end;
            game.Workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10");
            game.Workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10");
        end)
    end
end);

Tab1:AddTextbox({
	Name = "Time To Compass",
	Default = "0.5",
	TextDisappear = true,
	Callback = function(TTCP)
		TimeCompasssss = TTCP
	end	  
})

Tab1:AddToggle({
	Name = "Auto Find Compass",
	Default = false,
	Callback = function(ASQ)
		AutoCompassQuestXX = ASQ
	end    
})

spawn(function()
    while wait() do
        pcall(function()
            if not AutoCompassQuestXX then return end;
            local Compass = game.Players.LocalPlayer.Backpack:FindFirstChild("Compass");
            local Compass2 = game.Players.LocalPlayer.Character:FindFirstChild("Compass");
            if Compass or Compass2 then
                local OldPostiton = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
                game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                Compass.Parent = game.Players.LocalPlayer.Character;
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Compass.Poser.Value);
                Compass:Activate();
                wait(TimeCompasssss);
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(OldPostiton);
            end
        end)
    end
end);

Tab1:AddToggle({
	Name = "Auto Drop Compass",
	Default = false,
	Callback = function(ADD)
		DropCompass = ADD
	end    
})

spawn(function()
    while wait() do
        pcall(function()
            if not DropCompass then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                Value.Parent = game.Players.LocalPlayer.Character;
                Value.Parent = game.Workspace;
            end
        end)
    end
end);

local TabDk = Window:MakeTab({ 	
        Name = "DrinkBuy", 	
        Icon = "rbxassetid://4483345998", 	
        PremiumOnly = false })

local Section = TabDk:AddSection({ 	
    Name = "Drink Buy" }) 

TabDk:AddDropdown({ 	Name = "Select Drink", 	
                Default = "", 	
                Options = List.DevConfig["ListOfDrink"], 	
                Callback = function(Dr) 		
                        SelectDrink = Dr	
                end })


TabDk:AddTextbox({ 	Name = "Amount Drink",
                Default = "1", 	
                TextDisappear = true, 	
                Callback = function(AD) 		
                        AmountDrink = AD	
                end })

TabDk:AddButton({ 	Name = "Buy Drink", 	
                Callback = function() if not AmountDrink or not string.match(AmountDrink, "%d+") or tonumber(string.match(AmountDrink, "%d+")) < 0 then return end; 
                        for _ = 1, tonumber(string.match(AmountDrink, "%d+")) do 
                game.Workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(SelectDrink) 
                        end 	
                end })
TabDk:AddToggle({ 	Name = "Auto Drink", 	
                Default = false, 	
                Callback = function(ADK) 		
                        AutoDrink = ADK 	
                end }) 

spawn(function() 
while wait() do 
pcall(function() 
if not AutoDrink then return end; 
for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
if table.find(List.DevConfig["ListOfDrink"], Value.Name) then 
game.Players.LocalPlayer.Character.Humanoid:UnequipTools(); 
        Value.Parent = game.Players.LocalPlayer.Character; 
        Value:Activate(); 
                        end 
                        end
                end) 
        end 
end);

local TabLand = Window:MakeTab({ 	
        Name = "TP Islands", 	
        Icon = "rbxassetid://4483345998", 	
        PremiumOnly = false })

local Section = TabLand:AddSection({ 	
    Name = "Safe Zone" })

TabLand:AddButton({ 	
                Name = "SafeZone Sky", 	
                Callback = function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)	
                end 
})

TabLand:AddButton({ 	
                Name = "SafeZone Sea", 	
                Callback = function()
                game.Players.LocalPlayer.Character.Humanoid.Sit = true
        wait(0.15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneUnderSeaPart"].CFrame * CFrame.new(0, 5, 0)	
                end 
})

local Section = TabLand:AddSection({ 	
    Name = "Teleport Island" }) 

TabLand:AddButton({ 	
                Name = "Pursuer Boss", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(4858, 608, -7284))	
                end 
})

TabLand:AddButton({ 	
                Name = "Bar", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1477, 279, 2126))	
                end 
})

TabLand:AddButton({ 	
                Name = "Crab", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-6, 215, -240))	
                end 
})

TabLand:AddButton({ 	
                Name = "Cave", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-222, 216, -843))	
                end 
})

TabLand:AddButton({ 	
                Name = "Winxmill", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(28, 223, -90))	
                end 
})

TabLand:AddButton({ 	
                Name = "Sam", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1281, 217, -1352))	
                end 
})

TabLand:AddButton({ 	
                Name = "Grassy", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(723, 240, 1205))	
                end 
})

TabLand:AddButton({ 	
                Name = "Sand Castle", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1018, 223, -3338))	
                end 
})

TabLand:AddButton({ 	
                Name = "Krizma", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1074, 361, 1695))	
                end 
})

TabLand:AddButton({ 	
                Name = "Flail", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1097, 216, 3361))	
                end 
})

TabLand:AddButton({ 	
                Name = "Kaizu", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1575, 219, 9939))	
                end 
})

TabLand:AddButton({ 	
                Name = "Pyramid", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(118, 309, 4946))	
                end 
})

TabLand:AddButton({ 	
                Name = "Merlin Fish", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1668, 216, -353))	
                end 
})

TabLand:AddButton({ 	
                Name = "FishSell", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1993, 217, 576))	
                end 
})

TabLand:AddButton({ 	
                Name = "Vokun's land", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(4571, 217, 5095))	
                end 
})

TabLand:AddButton({ 	
                Name = "Mountain", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(4571, 217, 5095))	
                end 
})

TabLand:AddButton({ 	
                Name = "Forest", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-6033, 401, -7))	
                end 
})

TabLand:AddButton({ 	
                Name = "Crescent", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(3198, 356, 1680))	
                end 
})

TabLand:AddButton({ 	
                Name = "Purple", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-5164, 522, -7802))	
                end 
})

TabLand:AddButton({ 	
                Name = "Snowy", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1895, 224, 3299))	
                end 
})

TabLand:AddButton({ 	
                Name = "Snowy Mountain", 	
                Callback = function()
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(6741, 397, -1716))	
                end 
})

TabLand:AddButton({ 	
                Name = "Altar", 	
                Callback = function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Altar.RecepticalEffect.CFrame * CFrame.new(0, 5, 0)	
                end 
})

local TabSk = Window:MakeTab({ 	
        Name = "Skill", 	
        Icon = "rbxassetid://4483345998", 	
        PremiumOnly = false })

TabSk:AddToggle({ 	
        Name = "Max Charge Skill", 	
        Default = false, 	
        Callback = function(SM) 		
            skillmax = SM
        end })     

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

local TabSV = Window:MakeTab({
	Name = "Sever",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = TabSV:AddSection({
	Name = "Rejoin"
})

TabSV:AddButton({
	Name = "Rejoin Server",
	Callback = function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId) 
  	end    
})
