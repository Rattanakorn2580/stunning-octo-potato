local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "OPlium Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "By Bank Kesee"})


local Cache = { DevConfig = {} };

Cache.DevConfig["ListOfBox1"] = {"Common Box"};
Cache.DevConfig["ListOfBox2"] = {"Uncommon Box"};
Cache.DevConfig["ListOfDrink"] = {"Cider+", "Cider", "Lemonade+", "Lemonade", "Juice+", "Juice", "Smoothie+", "Smoothie"};
Cache.DevConfig["ListOfDrinkFormMixer"] = {"Cider", "Lemonade", "Juice", "Smoothie", "Milk", "Golden Apple"};
Cache.DevConfig["ListOfBox3"] = {"Rare Box", "Ultra Rare Box"};

local TabAuto = Window:MakeTab({
	Name = "Autos",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = TabAuto:AddSection({
	Name = "Function Auto | All |"
})

TabAuto:AddToggle({
	Name = "Auto Fishing",
	Default = false,
	Callback = function(AFH)
		AutoFishing = AFH
	end    
})

TabAuto:AddToggle({
	Name = "Auto Package",
	Default = false,
	Callback = function(APK)
		AutoPackage = APK
	end    
})

TabAuto:AddToggle({
	Name = "Auto Drink",
	Default = false,
	Callback = function(ADK)
		AutoDrink = ADK
	end    
})


TabAuto:AddToggle({
	Name = "Auto Claim Mission",
	Default = false,
	Callback = function(AMS)
		AutoMission = AMS
	end    
})

local Section = TabAuto:AddSection({
	Name = "Auto Haki Training"
})

TabAuto:AddToggle({
	Name = "Auto Haki | Slowly |",
	Default = false,
	Callback = function(AHK)
		AutoHaki1 = AHK
	end    
})

TabAuto:AddToggle({
	Name = "Auto Haki | Faster |",
	Default = false,
	Callback = function(AHKK)
		AutoHaki2 = AHKK
	end    
})

TabNPC:AddToggle({
	Name = "Auto Drink",
	Default = false,
	Callback = function(ADK)
		AutoDrink = ADK
	end    
})


local TabNPC = Window:MakeTab({
	Name = "NPC",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabNPC:AddSection({
	Name = "Drink Buy"
})

TabNPC:AddDropdown({
	Name = "Select Drink",
	Default = "",
	Options = Cache.DevConfig["ListOfDrink"],
	Callback = function(SD)
		SelectDrink = SD
	end    
})

TabNPC:AddTextbox({
	Name = "Amount Drink",
	Default = "1",
	TextDisappear = true,
	Callback = function(AD)
		AmountDrink = AD
	end	  
})

TabNPC:AddButton({
	Name = "Buy Drink",
	Callback = function()
        if not AmountDrink or not string.match(AmountDrink, "%d+") or tonumber(string.match(AmountDrink, "%d+")) < 0 then return end;
        for _ = 1, tonumber(string.match(AmountDrink, "%d+")) do
            game.Workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(SelectDrink)
        end
  	end    
})

TabNPC:AddToggle({
	Name = "Auto Drink",
	Default = false,
	Callback = function(ADK)
		AutoDrink = ADK
	end    
})

spawn(function()
    while wait() do
        pcall(function()
            if not AutoDrink then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfDrink"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end);

TabNPC:AddToggle({
	Name = "Auto Drop Drink",
	Default = false,
	Callback = function(ADD)
		AutoDropDrink = ADD
	end    
})

spawn(function()
    while wait() do
        pcall(function()
            if not AutoDropDrink then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfDrink"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value.Parent = game.Workspace;
                end
            end
        end)
    end
end);

TabNPC:AddToggle({
	Name = "Auto Loot Drink",
	Default = false,
	Callback = function(ADD)
		AutoLootDeink = ADD
	end    
})

spawn(function()
    while wait() do
        pcall(function()
            if not AutoLootDeink then return end;
            for _, Item in pairs(game.Workspace:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfDrink"], Item.Name) and Item:FindFirstChild("Handle") then
                    Item.Handle.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position);
                end
            end
        end)
    end
end);

local Section = TabNPC:AddSection({
	Name = "Sam Quest"
})

TabNPC:AddButton({
	Name = "No Save Data!!",
	Callback = function()
        workspace.UserData["User_"..game.Players.LocalPlayer.UserId].UpdateClothing_Extras:FireServer("A", "\255", 34)
        game:GetService("Players").LocalPlayer.Character.CharacterTrait.ClothingTrigger:FireServer() 
  	end    
})

TabNPC:AddToggle({
	Name = "Auto Sam Quest",
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

TabNPC:AddTextbox({
	Name = "Time To Compass",
	Default = "0.5",
	TextDisappear = true,
	Callback = function(TTCP)
		TimeCompasssss = TTCP
	end	  
})

TabNPC:AddToggle({
	Name = "Auto Compass Quest",
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

TabNPC:AddToggle({
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


TabNPC:AddToggle({
	Name = "Unbox | Common |",
	Default = false,
	Callback = function(AUC)
		UnboxBoxC = AUC
	end    
})


spawn(function()
    while wait() do
        pcall(function()
            if not UnboxBoxC then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox1"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end);

TabNPC:AddToggle({
	Name = "Unbox | Uncom",
	Default = false,
	Callback = function(AUN)
		AutoUnboxU = AUN
	end    
})


spawn(function()
    while wait() do
        pcall(function()
            if not AutoUnboxU then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox2"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end);

TabNPC:AddToggle({
	Name = "Unbox | Rare, Ultra",
	Default = false,
	Callback = function(AULR)
		UnboxRL = AULR
	end    
})

spawn(function()
    while wait() do
        pcall(function()
            if not UnboxRL then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox3"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value:Activate();
                end
            end
        end)
    end
end);

TabNPC:AddToggle({
	Name = "Auto Loot Compass",
	Default = false,
	Callback = function(AUB)
		AutoLootXXX = AUB
	end    
})

spawn(function()
    while wait() do
        pcall(function()
            if not AutoLootXXX then return end;
            for _, Item in pairs(game.Workspace:GetChildren()) do
                if Item.Name == "Compass" and Item:FindFirstChild("Handle") then
                    Item.Handle.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position);
                end
            end
        end)
    end
end);

local TabMisc = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = TabMisc:AddSection({
	Name = "Sever"
})

TabMisc:AddButton({
	Name = "Rejoin",
	Callback = function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId) 
  	end    
})

