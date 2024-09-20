local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "OPLMIUM HUB TEST", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

for i,v in pairs(game:GetService("Players"):GetChildren()) do

local List = { DevConfig = {} }; 
List.DevConfig["ListOfBox"] = {"Common Box", "Uncommon Box"}; 
List.DevConfig["ListOfDrink"] = {"Cider+", "Lemonade+", "Juice+", "Smoothie+"}; 
List.DevConfig["ListOfDrinkFormMixer"] = {"Cider", "Lemonade", "Juice", "Smoothie", "Milk", "Golden Apple"};
List.DevConfig["ListPlayer"] = table.insert{"Plr, v.Name"}
end

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

local TabPlr = Window:MakeTab({ 	
        Name = "Players", 	
        Icon = "rbxassetid://4483345998", 	
        PremiumOnly = false })
TabPlr:AddDropdown({ 	Name = "Select Player", 	
                Default = "", 	
                Options = List.DevConfig["ListPlayer"], 	
                Callback = function(Plr) 		
                        SelectPlayer = Plr
                end })
local TabLand = Window:MakeTab({ 	
        Name = "TP Islands", 	
        Icon = "rbxassetid://4483345998", 	
        PremiumOnly = false })


