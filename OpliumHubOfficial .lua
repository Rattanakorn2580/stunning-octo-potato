local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Period Test", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local List = { DevConfig = {} }; 
List.DevConfig["ListOfBox"] = {"Common Box", "Uncommon Box"}; 
List.DevConfig["ListOfDrink"] = {"Cider+", "Lemonade+", "Juice+", "Smoothie+"}; 
List.DevConfig["ListOfDrinkFormMixer"] = {"Cider", "Lemonade", "Juice", "Smoothie", "Milk", "Golden Apple"};

local Tab = Window:MakeTab({ 	
        Name = "Autos", 	
        Icon = "rbxassetid://4483345998", 	
        PremiumOnly = false })

local Tab1 = Window:MakeTab({ 	Name = "Auto Farm", 	
    Icon = "rbxassetid://4483345998", 	
    PremiumOnly = false })

local Section = Tab1:AddSection({ 	
    Name = "function Farm" }) 

Tab1:AddToggle({ 	
        Name = "Bring Mob [ All ]", 	
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

local Tab2 = Window:MakeTab({ 	
        Name = "DrinkBuy", 	
        Icon = "rbxassetid://4483345998", 	
        PremiumOnly = false })

local Section = Tab2:AddSection({ 	
    Name = "Drink Buy" }) 

Tab2:AddDropdown({ 	Name = "Select Drink", 	
                Default = "", 	
                Options = List.DevConfig["ListOfDrink"], 	
                Callback = function(Dr) 		
                        SelectDrink = Dr	
                end })


Tab2:AddTextbox({ 	Name = "Amount Drink",
                Default = "1", 	
                TextDisappear = true, 	
                Callback = function(AD) 		
                        AmountDrink = AD	
                end })

Tab2:AddButton({ 	Name = "Buy Drink", 	
                Callback = function() if not AmountDrink or not string.match(AmountDrink, "%d+") or tonumber(string.match(AmountDrink, "%d+")) < 0 then return end; 
                        for _ = 1, tonumber(string.match(AmountDrink, "%d+")) do 
                game.Workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(SelectDrink) 
                        end 	
                end })
Tab2:AddToggle({ 	Name = "Auto Drink", 	
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


