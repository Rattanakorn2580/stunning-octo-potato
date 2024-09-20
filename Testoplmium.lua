local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "OPLMIUM HUB TEST", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Cache = { DevConfig = {} }; 
Cache.DevConfig["ListOfBox"] = {"Common Box", "Uncommon Box"}; 
Cache.DevConfig["ListOfDrink"] = {"Cider+", "Lemonade+", "Juice+", "Smoothie+"}; 
Cache.DevConfig["ListOfDrinkFormMixer"] = {"Cider", "Lemonade", "Juice", "Smoothie", "Milk", "Golden Apple"};

local Tab = Window:MakeTab({ 	Name = "Auto Farm", 	
    Icon = "rbxassetid://4483345998", 	
    PremiumOnly = false })

local Section = Tab:AddSection({ 	
    Name = "function Farm" }) 

Tab:AddToggle({ 	
        Name = "Bring Mob [All]", 	
        Default = false, 	
        Callback = function(BMS) 		
            BringMobs = BMS
        end })      
