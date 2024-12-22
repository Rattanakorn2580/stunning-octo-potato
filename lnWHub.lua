local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))() 
local Player = game.Players.LocalPlayer 
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "InW Hub | For Dupe |", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "กรุณาติดต่อเจ้าของ . . . InW Hub"})

local Cache = { DevConfig = {} };
Cache.DevConfig["ListOfBox3"] = {"Rare Box", "Ultra Rare Box"};

local TabAuto = Window:MakeTab({
	Name = "Auto Dupe Compass",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
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
    while wait(0) do
        pcall(function()
            if _G.autofinddf then
local A_1 = "Claim"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
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

local TabAuto = Window:MakeTab({
	Name = "ติดต่อเจ้าของ ! ! !",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabAuto:AddSection({
	Name = "สคริปถูกเปลี่ยน"
})

TabAuto:AddButton({
	Name = "กรุณาติดต่อเจ้าของ",
	Default = false,
	Callback = function()
	end    
})
