local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))() 
local Player = game.Players.LocalPlayer 
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "InW Hub | For Dupe |", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "กรุณาติดต่อเจ้าของ . . . InW Hub"})

local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-1000000, 1000000)), (math.random(10000, 50000)), (math.random(-1000000, 1000000)))
    SafeZoneOuterSpace.Anchored = true

local Cache = { DevConfig = {} };
Cache.DevConfig["ListOfBox3"] = {"Rare Box", "Ultra Rare Box"};
Cache.DevConfig["ListOfSafeZone"] = {"SafeZone Sky"};

local TabAuto = Window:MakeTab({
	Name = "Auto Dupe Compass",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabAuto:AddSection({
	Name = "เกิดอัตโนมัติ"
})

TabAuto:AddToggle({
	Name = "ออโต้ เกิด",
	Default = false,
	Callback = function(AS)
		_G.autorespawn = AS
	end    
})

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

local Section = TabAuto:AddSection({
	Name = "Check Compass token"
})

TabAuto:AddButton({
	Name = "Check Token Compasses",
	Callback = function()
        for i, v in pairs(game:GetService("Workspace").Merchants.QuestMerchant.Clickable:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
	end    
	end
  	end    
})


local Section = TabAuto:AddSection({
	Name = "Auto Finding And Reset Stats"
})

TabAuto:AddToggle({
	Name = "Auto Bring Compasses",
	Default = false,
	Callback = function(ABR)
		_G.autobring = ABR
	end    
})

spawn(function()
    while wait() do
        pcall(function()
            if not _G.autobring then return end;
            for _, Item in pairs(game.Workspace:GetChildren()) do
                if Item.Name == "Compass" and Item:FindFirstChild("Handle") then
                    Item.Handle.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position);
                end
            end
        end)
    end
end);

TabAuto:AddToggle({
	Name = "Auto Finding",
	Default = false,
	Callback = function(ADF)
		_G.autofinddf = ADF
	end    
})

spawn(function()
    while wait() do
        pcall(function()
            if not _G.autofinddf then return end;
            local Compass = game.Players.LocalPlayer.Backpack:FindFirstChild("Compass");
            local Compass2 = game.Players.LocalPlayer.Character:FindFirstChild("Compass");
	    local Compass3 = game.Players.LocalPlayer.Character:FindFirstChild("Compass");
            if Compass or Compass2 or Compass3 then
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
end);

spawn(function()
    while wait(5) do
        pcall(function()
            if _G.autofinddf then
local A_1 = ""
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].Stats
    Event:FireServer(A_1)
            end
        end)
    end
end)


TabAuto:AddToggle({
	Name = "Auto Claim Challengs Compasses",
	Default = false,
	Callback = function(ACM)
		_G.autoclaim = ACM
	end    
})

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Weekly3"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
            end
        end)
    end
end)

TabAuto:AddToggle({
	Name = "Auto Drop Rare Box",
	Default = false,
	Callback = function(ADP)
		_G.autodrop = ADP
	end    
})

spawn(function()
    while wait() do
        pcall(function()
            if not _G.autodrop then return end;
            for _, Value in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if table.find(Cache.DevConfig["ListOfBox3"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value.Parent = game.Workspace;
                end
            end
        end)
    end
end);

local TabLD = Window:MakeTab({
	Name = "เกาะ",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabLD:AddSection({
	Name = "พื้นที่ปลอดภัย"
})

TabLD:AddDropdown({
	Name = "เลือก พื้นที่ปลอดภัย",
	Default = "",
	Options = Cache.DevConfig["ListOfSafeZone"],
	Callback = function(CSF)
		getgenv().tpsafezone = CSF
	end    
})
	
TabLD:AddButton({
	Name = "กดเพื่อวาป",
	Callback = function()
        if getgenv().tpsafezone == "SafeZone Sky" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
	 elseif getgenv().tpsafezone == "SafeZone LightFarm" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneLightPart"].CFrame * CFrame.new(0, 5, 0)
			end
			end    
})

local TabMC = Window:MakeTab({
	Name = "ติดต่อเจ้าของ ! ! !",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabMC:AddSection({
	Name = "สคริปถูกเปลี่ยน"
})

TabMC:AddButton({
	Name = "กรุณาติดต่อเจ้าของ",
	Default = false,
	Callback = function()
	end    
})
