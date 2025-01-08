local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))() 
local Player = game.Players.LocalPlayer 
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "InW Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "กำลังโหลด . . . InW Hub"})

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
if v.Name == "Menu" then
  v.Frame.C.Frame.Nametag.Text = " ".."Protect Name by: InW Hub"
end
end

local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-1000000, 1000000)), (math.random(10000, 50000)), (math.random(-1000000, 1000000)))
    SafeZoneOuterSpace.Anchored = true

local SafeZoneLightFarm = Instance.new("Part",game.Workspace)
    SafeZoneLightFarm.Name = "SafeZoneLightPart2"
    SafeZoneLightFarm.Size = Vector3.new(30,2,30)
    SafeZoneLightFarm.Position = Vector3.new(3750, 3623, -615)
    SafeZoneLightFarm.Anchored = true

local b1 = Instance.new("Part",game.Workspace)
        b1.Name = "SafeZoneLightPart1"
        b1.Position = Vector3.new(-169, 630, -54)
        b1.Size = Vector3.new(5, 0.1, 5)
        b1.Anchored = true

local SafeZoneUnderSea = Instance.new("Part",game.Workspace)
    SafeZoneUnderSea.Name = "SafeZoneUnderSeaPart"
    SafeZoneUnderSea.Size = Vector3.new(200,3,200)
    SafeZoneUnderSea.Position = Vector3.new((math.random(-5000, 5000)), -491, (math.random(-5000, 5000)))
    SafeZoneUnderSea.Anchored = true

spawn(function() -- autofarm velocity
    while wait(0) do
        pcall(function()
            if AutoFish or AutoPack or AutoFarmM or _G.chillykill or _G.bombkill then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
            elseif  AutoFish == false or AutoPack == false or AutoFarmM == false or _G.chillykill == false or _G.bombkill == false then
                --if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                wait(1)
                --end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.autoshave then
	for i,v in pairs(game:GetService("Workspace")[SelectPlayer]:GetChildren()) do
if string.find(v.Name, "ShaveServer") then
v:Destroy()
end
	end
            end
        end)
    end
end);

local Cache = { DevConfig = {} };

Cache.DevConfig["ListOfBox1"] = {"Common Box"};
Cache.DevConfig["ListOfBox2"] = {"Uncommon Box"};
Cache.DevConfig["ListOfDrink"] = {"Cider+", "Lemonade+", "Juice+", "Smoothie+"};
Cache.DevConfig["ListOfSafeZone"] = {"SafeZone Sky", "SafeZone UnderSea", "SafeZone LightFarm1", "SafeZone LightFarm2"};
Cache.DevConfig["ListOfBox3"] = {"Rare Box", "Ultra Rare Box"};
Cache.DevConfig["ListOfIsland"] = {"Grassy","Kaizu","Snow Mountains","Pursuer Boss","Bar",
	                           "Cliffs","Windmill", "Cave","Krizma","Sam","Green","Trees",
	                           "Pyramid","Package","Snowy","Mountain","Marine Ford","Sand Castle",
	                           "Forest","Evil","Crescent","Islands","Town","Rocky","Palm","Sand",
	                           "Sand 2","Small","Tiny","Super Tiny","Grass","Atlar"};
Cache.DevConfig["ListOfMerchant"] = {"Rayleigh", "Better Drink", "Drink", "Flail", "QuestFish", "Krizma", "Sword", "Sniper", "Emote", "Affinity","Fish", "Expertise"};
Cache.DevConfig["ListOfWeapon"] = {"Dagger", "Wakizashi", "Tachi", "Katana", "Flail", "Krizma"}
Cache.DevConfig["ListOfSniper"] = {"Slingshot", "Star", "Crossbow", "Flintlock"}
Cache.DevConfig["ListOfDropCompass"] = {"Compass", "Rare Box"}

local TabUP = Window:MakeTab({
	Name = "UPDATE",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabUP:AddSection({
	Name = "<•> Add Anti Water ( You can swim ) | At 8 / 1 / 2025. |"
})

local Section = TabUP:AddSection({
	Name = "<•> Fix Max Charge Can Be Use With Gravity Skill N Now | At 8 / 1 / 2025. |"
})

local Section = TabUP:AddSection({
	Name = "<•> Add Auto Haki Buso | 8 / 1 / 2025. |"
})

local Section = TabUP:AddSection({
	Name = "<•> Fix Anti Afk ( Is work now ) | At 8 / 1 / 2025. | "
})

local Section = TabUP:AddSection({
	Name = "<•> Coming Soon. . ."
})

local TabAuto = Window:MakeTab({
	Name = "Autos",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabAuto:AddSection({
	Name = "Auto Spawn"
})

TabAuto:AddToggle({
	Name = "Auto Spawn",
	Default = true,
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
	Name = "Function Auto | All |"
})

TabAuto:AddToggle({
	Name = "Auto Fishing",
	Default = false,
	Callback = function(AFH)
		AutoFish = AFH
	end    
})

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

TabAuto:AddToggle({
	Name = "Auto Package",
	Default = false,
	Callback = function(APK)
		AutoPack = APK
	end    
})

spawn(function()
    while wait() do
        pcall(function()
         if AutoPack then
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
                    wait(.5)
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

TabAuto:AddToggle({
	Name = "Auto Haki Buso",
	Default = false,
	Callback = function(AKI)
		_G.autobuso = AKI
	end    
})

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autobuso then
                if not game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end
                if game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end

            end
        end)
    end
end)

TabAuto:AddToggle({
	Name = "Auto Claim Expertise",
	Default = false,
	Callback = function(AMS)
		AutoMission = AMS
	end    
})

spawn(function()
while wait() do 
if AutoMission then 
pcall(function() 
workspace.Merchants.ExpertiseMerchant.Clickable.Retum:FireServer()
end) 
end 
end 
end);

TabAuto:AddToggle({
	Name = "Auto Bring DF",
	Default = false,
	Callback = function(BDF)
		BringDF = BDF
	end    
})

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

TabAuto:AddToggle({
	Name = "Auto Chest",
	Default = false,
	Callback = function(CHT)
		_G.autochest = CHT
	end    
})

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autochest then
for _, v in pairs(game.Workspace:GetDescendants()) do
                            if v.Name == "Touch" and v.Parent.Name == "TreasureChestPart" then
                                v.Parent.CFrame = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame
                            end
						end            end
        end)
    end
end);

TabAuto:AddToggle({
	Name = "Auto Claim Gift | Beri 💸 |",
	Default = false,
	Callback = function(ACG)
		_G.autoclaimgift = ACG
	end    
})

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autoclaimgift then
local A_1 = "RewardMark"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ClaimRewardHourly
    Event:FireServer(A_1)
            end
        end)
    end
end);

TabAuto:AddToggle({
	Name = "Auto Claim Gift | Gams 💎 |",
	Default = false,
	Callback = function(ACG)
		_G.autoclaimgift = ACG
	end    
})

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autoclaimgift then
local A_1 = "RewardMark"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ClaimRewardDaily
    Event:FireServer(A_1)
            end
        end)
    end
end)

TabAuto:AddToggle({
	Name = "Auto Claim Challenge",
	Default = false,
	Callback = function(ACLL)
		_G.autoclaim = ACLL
	end    
})

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Daily1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Daily2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Daily3"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Daily4"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
            end
        end)
    end
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Weekly1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Weekly2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Weekly3"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
            end
        end)
    end
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Monthly1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Monthly2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
            end
        end)
    end
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autoclaim then
local A_1 = "Claim"
local A_2 = "Challenge1"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Challenge2"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Challenge3"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Challenge4"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Challenge5"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Challenge6"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Challenge7"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Challenge8"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Challenge9"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Challenge10"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Challenge11"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Challenge12"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Challenge13"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
wait()
local A_1 = "Claim"
local A_2 = "Challenge14"
    local Event = game:GetService("Workspace").UserData["User_"..game.Players.LocalPlayer.UserId].ChallengesRemote
    Event:FireServer(A_1,A_2)
            end
        end)
    end
end)

local Section = TabAuto:AddSection({
	Name = "Spam Yoru Attack"
})

TabAuto:AddTextbox({
	Name = "Hit Yoru",
	Default = "1",
	TextDisappear = true,
	Callback = function(HYR)
		_G.yoruhit = HYR
	end	  
})

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

function serializeTable(val, name, skipnewlines, depth)
    skipnewlines = skipnewlines or false
    depth = depth or 0
 
    local tmp = string.rep("", depth)
 
    if name then tmp = tmp end
 
    if type(val) == "table" then
        tmp = tmp .. (not skipnewlines and "" or "")
 
        for k, v in pairs(val) do
            tmp =  tmp .. serializeTable(v, k, skipnewlines, depth + 1) .. (not skipnewlines and "" or "")
        end
 
        tmp = tmp .. string.rep("", depth) 
    elseif type(val) == "number" then
        tmp = tmp .. tostring(val)
    elseif type(val) == "string" then
        tmp = tmp .. string.format("%q", val)
    elseif type(val) == "boolean" then
        tmp = tmp .. (val and "true" or "false")
    elseif type(val) == "function" then
        tmp = tmp  .. "func: " .. debug.getinfo(val).name
    else
        tmp = tmp .. tostring(val)
    end
 
    return tmp
 end

TabAuto:AddToggle({
	Name = "Enable",
	Default = false,
	Callback = function(HYF)
		_G.yorufast = HYF
	end    
})

spawn(function() -- yoru
    while wait(0) do
        pcall(function()
            if _G.yorufast then
                if game.Players.LocalPlayer.Character:FindFirstChild("Yoru") and tonumber(serializeTable(attackremote)) ~= nil and tonumber(serializeTable(attackremote)) ~= "" then
                    repeat wait(0.3)
                        for i = 1, _G.yoruhit do
                            local args = {
                                [1] = tonumber(serializeTable(attackremote))
                            }
                            
                            game:GetService("Players").LocalPlayer.Character.Yoru.RequestAnimation:FireServer(unpack(args))
                        end
                    until _G.yorufast == false or game.Players.LocalPlayer.Character.Humanoid.Health == 0 
                end
            end
        end)
    end
end)

local TabFarm = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = TabFarm:AddSection({
	Name = "Auto Farm Mob"
})

TabFarm:AddToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(AFR)
		_G.autofarm = AFR
	end    
})

spawn(function()
    game:GetService('RunService').RenderStepped:connect(function()
pcall(function()
            if _G.autofarm then
	for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Boar")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
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
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
		end
	for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Thug")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
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
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
		end
	for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Gunslinger")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("HumanoidRootPart").CFrame*CFrame.new(0,0,4)
                        if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
                     end
		end
		end
		end)
end)
end)

TabFarm:AddToggle({
	Name = "Auto Bring Mob",
	Default = false,
	Callback = function(AFB)
		AutoFarmB = AFB
	end    
})

spawn(function()
    while wait(0) do
        pcall(function()
            if AutoFarmB then
                for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if string.find(v.Name, "Boar")
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
                    or string.find(v.Name, "Vokun") 
                    or string.find(v.Name, "Buster") 
                    or string.find(v.Name, "Freddy")  
                    or string.find(v.Name, "Bruno") 
                    or string.find(v.Name, "Thug") 
                    or string.find(v.Name, "Gunslinger")
                    or string.find(v.Name, "Gunner") 
                    or string.find(v.Name, "Cave") 
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

local Weaponlist = {}
local Weapon = nil

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    table.insert(Weaponlist,v.Name)
end

TabFarm:AddDropdown({
	Name = "Choose Weapon",
	Default = "",
	Options = Weaponlist,
	Callback = function(WP)
		Weapon = WP
	end    
})

TabFarm:AddToggle({
	Name = "Auto Click",
	Default = false,
	Callback = function(ACK)
		AutoClicking = ACK
	end    
})

spawn(function() 
game:GetService("RunService").RenderStepped:Connect(function() 
pcall(function() 
if AutoClicking then 
game:GetService'VirtualUser':CaptureController() 
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) 
end 
end) 
end) 
end);

TabFarm:AddToggle({
	Name = "Auto Equip",
	Default = false,
	Callback = function(AEI)
		_G.autoequip = AEI
	end    
})

spawn(function() -- auto equip
    while wait(0) do
        pcall(function()
            if _G.autoequip then
                repeat
                    wait(0.05)
                    game:GetService 'Players'.LocalPlayer.Backpack[Weapon].Parent = game:GetService 'Players'.LocalPlayer.Character
                until game.Players.LocalPlayer.Character.Humanoid.Health == 0 or _G.autoequip == false
                if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
                    game:GetService 'Players'.LocalPlayer.Character:FindFirstChildOfClass 'Humanoid':UnequipTools()
                end
            end
        end)
    end
end);

local Section = TabFarm:AddSection({
	Name = "Auto Cannon Ball | For One Piece: Legendary |"
})
	
TabFarm:AddToggle({
	Name = "Auto Farm Cannon",
	Default = false,
	Callback = function(ACNN)
		_G.autocannon = ACNN
	end    
})

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannon or _G.autocannonplr then
                local toolname = "Cannon Ball"
                local Plr = game:GetService("Players").LocalPlayer
                wait(0.75)
                if Plr.Backpack:FindFirstChild(toolname) and not Plr.Character:FindFirstChild(toolname) and not Plr.Character:FindFirstChildOfClass("Tool") then
                    local tool = Plr.Backpack:FindFirstChild(toolname)
                    Plr.Character.Humanoid:EquipTool(tool)
                    wait(0.75)
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                end
            end
        end)
    end
end)


spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannonslow then
                local toolname = "Cannon Ball"
                local Plr = game:GetService("Players").LocalPlayer
                wait(0.5)
                if Plr.Backpack:FindFirstChild(toolname) and not Plr.Character:FindFirstChild(toolname) and not Plr.Character:FindFirstChildOfClass("Tool") then
                    local tool = Plr.Backpack:FindFirstChild(toolname)
                    Plr.Character.Humanoid:EquipTool(tool)
                end
            end
        end)
    end
end)


spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannon or _G.autocannonplr or _G.autocannonslow then
                local args = {
                    [1] = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
                }
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cannon Ball").RemoteEvent:FireServer(unpack(args))
                wait(0)
                local args = {
                    [1] = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
                }
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cannon Ball").RemoteEvent:FireServer(unpack(args))
                wait(0)
                if game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:FindFirstChild("CannonBall") then
                    game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:FindFirstChild("CannonBall").CanCollide = false
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannon or _G.autocannonplr or _G.autocannonslow then
                repeat task.wait(0)
                    for i, v in pairs(game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:GetChildren()) do
                        if v.Name == "CannonBall" then
                            v.CFrame = game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(0, 2, -15)
                            v.CanCollide = false
                            if not v:FindFirstChild("BodyClip") then
                                local Noclip = Instance.new("BodyVelocity")
                                Noclip.Name = "BodyClip"
                                Noclip.Parent = v
                                Noclip.MaxForce = Vector3.new(100000,100000,100000)
                                Noclip.Velocity = Vector3.new(0,20,0)
                            end
                        end
                    end
                until _G.autocannon == false or _G.autocannonplr == false or game.Players.LocalPlayer.Character.Humanoid.Health == 0
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannon and game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") 
            or _G.autocannonplr and game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                task.wait(1)
                for i=1,2 do
                    game:GetService("Players").LocalPlayer.Character.Weapons:FireServer()
                end
            end
        end)
    end
end)


spawn(function()
    while task.wait(15) do
        pcall(function()
            if _G.autocannon or _G.autocannonplr then
                task.wait(0.1)
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name == "Cannon Ball" then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannon  or _G.autocannonplr or _G.autocannonslow then
                task.wait(0.1)
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name ~= "Cannon" and v.Name ~= "Cannon Ball" then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autocannon or  _G.autocannonplr then
                fireclickdetector(workspace.Island11.CentralBuilding.Doors.Button.Button.ClickDetector)
                task.wait(0)
                if not game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end
                if game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end

            end
        end)
    end
end)
spawn(function() -- autofarm cannon
    while wait(0) do
        pcall(function()
            if _G.autocannon or _G.autocannonslow then
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
                    or string.find(v.Name, "Vokun") 
                    or string.find(v.Name, "Bruno") 
                    or string.find(v.Name, "Freddy")  
                    or string.find(v.Name, "Buster") 
                    or string.find(v.Name, "Thug") 
                    or string.find(v.Name, "Gunslinger")
                    or string.find(v.Name, "Gunner") 
                    or string.find(v.Name, "Cave") 
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

local Section = TabFarm:AddSection({
	Name = "Farm Fruit"
})

TabFarm:AddToggle({
	Name = "Spam Farm Light",
	Default = false,
	Callback = function(ASM)
		_G.lightfarm = ASM
	end    
})

spawn(function() -- Light farm npcs
    while wait(0) do
        pcall(function()
            if _G.lightfarm then
                script = game:GetService("Players").LocalPlayer.Character.Powers.Light;
                VTC = script.RemoteEvent.RemoteFunction:InvokeServer();
                local pla = game.Players.LocalPlayer;
                local Mouse = pla:GetMouse();

                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0 then
                        if v.Humanoid.Health > 0 and
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 10000000000000000000000 then
                            if v.Name ~= "SetInstances" then
                                -- v.Humanoid:ChangeState(11)
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                if v.Humanoid.Health == 0 then
                                    v:Destroy()
                                end

                                wait(0.05)

                                local args = {
                                    [1] = VTC,
                                    [2] = "LightPower2",
                                    [3] = "StopCharging",
                                    [4] = v.Head.CFrame * CFrame.new(0, 0, 0),
                                    [5] = Mouse.Target,
                                    [6] = 100
                                }

                                game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))

                            end
                        end
                    end
                end
            end
        end)
    end
end);

TabFarm:AddToggle({
	Name = "Spam Farm Quake ( Very Lag )",
	Default = false,
	Callback = function(QF)
		_G.Quakefarm = QF
	end    
})

spawn(function() -- Quake farm npcs
    while wait(0) do
        pcall(function()
            if _G.Quakefarm then
                script = game:GetService("Players").LocalPlayer.Character.Powers.Quake;
                VTQ = script.RemoteEvent.RemoteFunction:InvokeServer();
                local pla = game.Players.LocalPlayer;
                local Mouse = pla:GetMouse();

                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0 then
                        if v.Humanoid.Health > 0 and
                            (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 10000000000000000000000 then
                            if v.Name ~= "SetInstances" then
                                -- v.Humanoid:ChangeState(11)
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                if v.Humanoid.Health == 0 then
                                    v:Destroy()
                                end

                                wait(0.05)

            local args = {
                [1] = VTQ,
                [2] = "QuakePower4",
                [3] = "StopCharging",
                [4] = Mouse.Target,
                [5] = v.Head.CFrame * CFrame.new(0, 0, 0),
                [6] = 100,
                [7] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position)
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

                            end
                        end
                    end
                end
            end
        end)
    end
end);

local Section = TabFarm:AddSection({
	Name = "Auto Fruity"
})

TabFarm:AddToggle({
	Name = "Auto Farm Stats",
	Default = false,
	Callback = function(AMX)
		AutoStats = AMX
	end    
})

spawn(function() -- auto mixer
    while wait() do
        pcall(function()
            if AutoStats then
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

local Section = TabFarm:AddSection({
	Name = "Auto Haki"
})

TabFarm:AddToggle({
	Name = "Auto Farm Haki ( Slow )",
	Default = false,
	Callback = function(AHK)
		AutoHaki1 = AHK
	end    
})

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

TabFarm:AddToggle({
	Name = "Auto Haki ( Fast Very Ping )",
	Default = false,
	Callback = function(AHKK)
		AutoHaki2 = AHKK
	end    
})

game:GetService('RunService').RenderStepped:connect(function()
    if AutoHaki2 then
        for i = 1, 5 do
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

local TabNPC = Window:MakeTab({
	Name = "Npc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabNPC:AddSection({
	Name = "Teleport Npc"
})

TabNPC:AddDropdown({
	Name = "Choose Npc",
	Default = "",
	Options = Cache.DevConfig["ListOfMerchant"],
	Callback = function(CT)
		getgenv().tpmerchant = CT
	end    
})

TabNPC:AddButton({
	Name = "Click to Tp",
	Callback = function()
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
  	end    
})

TabNPC:AddButton({
	Name = "Talk to Npc",
	Callback = function()
	    if getgenv().tpmerchant == "Better Drink" then
            for i, v in pairs(game:GetService("Workspace").Merchants.BetterDrinkMerchant.Clickable:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
	end    
	end
        elseif getgenv().tpmerchant == "Drink" then
            for i, v in pairs(game:GetService("Workspace").Merchants.DrinkMerchant.Clickable:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
	end    
	end
        elseif getgenv().tpmerchant == "Flail" then
            for i, v in pairs(game:GetService("Workspace").Merchants.FlailMerchant.Clickable:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
	end    
	end
        elseif getgenv().tpmerchant == "QuestFish" then
            for i, v in pairs(game:GetService("Workspace").Merchants.MerlinMerchant.Clickable:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
	end    
	end
        elseif getgenv().tpmerchant == "Krizma" then
           for i, v in pairs(game:GetService("Workspace").Merchants.KrizmaMerch.Clickable:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
	end    
	end
        elseif getgenv().tpmerchant == "Sword" then
            for i, v in pairs(game:GetService("Workspace").Merchants.SwordMerchant.Clickable:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
	end    
	end
        elseif getgenv().tpmerchant == "Sniper" then
            for i, v in pairs(game:GetService("Workspace").Merchants.SniperMerchant.Clickable:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
	end    
	end
        elseif getgenv().tpmerchant == "Emote" then
            for i, v in pairs(game:GetService("Workspace").Merchants.EmoteMerchant.Clickable:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
	end    
	end
        elseif getgenv().tpmerchant == "Affinity" then
            for i, v in pairs(game:GetService("Workspace").Merchants.AffinityMerchant.Clickable:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
	end    
	end
        elseif getgenv().tpmerchant == "Expertise" then
           for i, v in pairs(game:GetService("Workspace").Merchants.ExpertiseMerchant.Clickable:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
	end    
	end
			end
  	end    
})

local Section = TabNPC:AddSection({
	Name = "Dupe | For OPL: Anarchy |"
})

TabNPC:AddButton({
	Name = "No Save Data!!!",
	Callback = function()
        workspace.UserData["User_"..game.Players.LocalPlayer.UserId].UpdateClothing_Extras:FireServer("A", "\255", 34)
        game:GetService("Players").LocalPlayer.Character.CharacterTrait.ClothingTrigger:FireServer() 
  	end    
})

local Section = TabNPC:AddSection({
	Name = "Quest Sam"
})

TabNPC:AddToggle({
	Name = "Auto Claim Compass",
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

TabNPC:AddToggle({
	Name = "Auto Find ( Fast )",
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
                if table.find(Cache.DevConfig["ListOfDropCompass"], Value.Name) then
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools();
                    Value.Parent = game.Players.LocalPlayer.Character;
                    Value.Parent = game.Workspace;
                end
            end
        end)
    end
end);

TabNPC:AddToggle({
	Name = "Auto Bring Compass",
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

local Section = TabNPC:AddSection({
	Name = "Mpc Buyer"
})

TabNPC:AddDropdown({
	Name = "Choose buy Sword",
	Default = "",
	Options = Cache.DevConfig["ListOfWeapon"],
	Callback = function(LBN)
		getgenv().buyweapon = LBN
	end    
})

TabNPC:AddButton({
	Name = "Click to Buy",
	Callback = function()
        if getgenv().buyweapon == "Dagger" then
workspace.Merchants.SwordMerchant.Clickable.Retum:FireServer("Dagger",1000)
	elseif getgenv().buyweapon == "Wakizashi" then
workspace.Merchants.SwordMerchant.Clickable.Retum:FireServer("Wakizashi",5000)
	elseif getgenv().buyweapon == "Tachi" then
workspace.Merchants.SwordMerchant.Clickable.Retum:FireServer("Tachi",7500)
	elseif getgenv().buyweapon == "Katana" then
workspace.Merchants.SwordMerchant.Clickable.Retum:FireServer("Katana",10000)
	elseif getgenv().buyweapon "Fail" then
workspace.Merchants.FlailMerchant.Clickable.Retum:FireServer("Flail",50000)
	elseif getgenv().buyweapon == "Krizma" then
workspace.Merchants.KrizmaMerch.Clickable.Retum:FireServer("Krizma",80000)
	end
  	end    
})

TabNPC:AddDropdown({
	Name = "Choose Buy Sniper",
	Default = "",
	Options = Cache.DevConfig["ListOfSniper"],
	Callback = function(SD)
		getgenv().buysniper = LBS
	end    
})

TabNPC:AddButton({
	Name = "Click to Buy",
	Callback = function()
        if getgenv().buysniper == "Slinger" then
local args = {
    [1] = "Slingshot",
    [2] = 1000
}

workspace:WaitForChild("Merchants"):WaitForChild("SniperMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
	elseif getgenv().buysniper == "Star" then
local args = {
    [1] = "Stars",
    [2] = 5000
}

workspace:WaitForChild("Merchants"):WaitForChild("SniperMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
	elseif getgenv().buysniper == "Crossbow" then
local args = {
    [1] = "Crossbow",
    [2] = 7500
}

workspace:WaitForChild("Merchants"):WaitForChild("SniperMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
	elseif getgenv().buysniper == "Flintlock" then
local args = {
    [1] = "Flintlock",
    [2] = 10000
}

workspace:WaitForChild("Merchants"):WaitForChild("SniperMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer(unpack(args))
	end
  	end    
})

local Section = TabNPC:AddSection({
	Name = "Buyer Drink"
})

TabNPC:AddDropdown({
	Name = "Choose Drink",
	Default = "",
	Options = Cache.DevConfig["ListOfDrink"],
	Callback = function(SD)
		SelectDrink = SD
	end    
})

TabNPC:AddTextbox({
	Name = "Amount",
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
	Name = "Auto Bring Drink",
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

local TabSPM = Window:MakeTab({
	Name = "Spam Skill",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabSPM:AddSection({
	Name = "Spam Skill"
})

TabSPM:AddToggle({
	Name = "Max Charge 100%",
	Default = false,
	Callback = function(SKM)
		skillmax = SKM
	end    
})

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

aaxc = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        if self.Name == "RemoteEvent" and args[3] == "StopCharging" and skillmax then
            args[6] = 100
	if self.Name == "RemoteEvent" and args[3] == "StopCharging" and skillmax then
            args[6] = 200
	if self.Name == "RemoteEvent" and args[3] == "StopCharging" and skillmax then
            args[6] = 400
            return aaxc(self, unpack(args))
	end
        end
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
    end)

function serializeTable(val, name, skipnewlines, depth)
    skipnewlines = skipnewlines or false
    depth = depth or 0
 
    local tmp = string.rep("", depth)
 
    if name then tmp = tmp end
 
    if type(val) == "table" then
        tmp = tmp .. (not skipnewlines and "" or "")
 
        for k, v in pairs(val) do
            tmp =  tmp .. serializeTable(v, k, skipnewlines, depth + 1) .. (not skipnewlines and "" or "")
        end
 
        tmp = tmp .. string.rep("", depth) 
    elseif type(val) == "number" then
        tmp = tmp .. tostring(val)
    elseif type(val) == "string" then
        tmp = tmp .. string.format("%q", val)
    elseif type(val) == "boolean" then
        tmp = tmp .. (val and "true" or "false")
    elseif type(val) == "function" then
        tmp = tmp  .. "func: " .. debug.getinfo(val).name
    else
        tmp = tmp .. tostring(val)
    end
 
    return tmp
 end

local Section = TabSPM:AddSection({
	Name = "Spam Bomb"
})

TabSPM:AddToggle({
	Name = "Auto Bomb Punch ( On Fix )",
	Default = false,
	Callback = function(MBB)
		_G.bomb1 = MBB
	end    
})

spawn(function()--bomb punch
    while wait(getgenv().spamtime) do
        pcall(function()
        if _G.bomb1 then
            local l__LocalPlayer__1 = game.Players.LocalPlayer;
            local l__mouse__38 = l__LocalPlayer__1:GetMouse();
            
            script.RemoteEvent:FireServer(tonumber(serializeTable(remotes)), "BombPower1", "StartCharging", "Left");
            script.RemoteEvent:FireServer(tonumber(serializeTable(remotes)), "BombPower1", "StopCharging", l__mouse__38.Hit, l__mouse__38, 100);
          
        end
        end)
    end
end)

TabSPM:AddToggle({
	Name = "Auto Bomb Wave",
	Default = false,
	Callback = function(BBM)
		_G.bomb2 = BBM
	end    
})

spawn(function()--bomb wave
    while wait(getgenv().spamtime) do
        pcall(function()
        if _G.bomb2 then 
            local pla = game.Players.LocalPlayer;
            local Mouse = pla:GetMouse();
            
            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "BombPower5",
                [3] = "StopCharging",
                [4] = Mouse.Hit,
                [5] = Mouse.Target,
                [6] = 100
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Bomb.RemoteEvent:FireServer(unpack(args))
            
            
            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "BombPower5",
                [3] = "StartCharging",
                [4] = CFrame.new(Vector3.new(-3.3828134536743164, 213, -366.8262939453125), Vector3.new(0.05879887938499451, -0.29103368520736694, -0.9549042582511902)),
                [5] = workspace.IslandWindmill.Dock.Boards.Board,
                [6] = "Right"
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Bomb.RemoteEvent:FireServer(unpack(args))
            
        end
        end)
    end
end)

local Section = TabSPM:AddSection({
	Name = "Spam Quake"
})

TabSPM:AddToggle({
	Name = "Auto Quake Wave",
	Default = false,
	Callback = function(ASQ)
		_G.quake1 = ASQ
	end    
})

spawn(function()
    while wait(getgenv().spamtime) do
        pcall(function()
        if _G.quake1 then 
            local pla = game.Players.LocalPlayer;
            local Mouse = pla:GetMouse();

            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "QuakePower4",
                [3] = "StartCharging",
                [5] = "Right"
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
   
            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "QuakePower4",
                [3] = "StopCharging",
                [4] = Mouse.Target,
                [5] = Mouse.Hit,
                [6] = 100,
                [7] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position)
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
        end
        end)
    end
end);

TabSPM:AddToggle({
	Name = "Auto Quake Stomp",
	Default = false,
	Callback = function(ASQK)
		_G.quake2 = ASQK
	end    
})

spawn(function() -- quake stomp
    while wait(getgenv().spamtime) do
        pcall(function()
        if _G.quake2 then
            local pla = game.Players.LocalPlayer;
            local Mouse = pla:GetMouse();
            function round(num, numDecimalPlaces)
                local mult = 10 ^ (numDecimalPlaces or 0)
                return math.floor(num * mult + 0.6) / mult
            end

            local humanoid = game.Players.LocalPlayer.Character.HumanoidRootPart

            Xx = humanoid.Position.x-- round(humanoid.Position.x, 0)
            Yy = humanoid.Position.y--round(humanoid.Position.y, 0)
            Zz = humanoid.Position.z--round(humanoid.Position.z, 0)

            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "QuakePower3",
                [3] = "StopCharging",
                [4] = Mouse.Target,
                [5] = Mouse.Hit,
                [6] = 100,
                [7] = Vector3.new(Xx, Yy, Zz)
            }

            game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "QuakePower3",
                [3] = "StartCharging",
                [5] = "Right"
            }

            game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))

        end
        end)
    end
end)

local Section = TabSPM:AddSection({
	Name = "Spam Light"
})
TabSPM:AddToggle({
	Name = "Auto Light Blast",
	Default = false,
	Callback = function(ASL)
		_G.lightbeam = ASL
	end    
})

spawn(function() 
    while wait(getgenv().spamtime) do
        pcall(function()
            if _G.lightbeam then
                local pla = game.Players.LocalPlayer;
                local Mouse = pla:GetMouse();
                local humanoidl = game.Players.LocalPlayer.Character.HumanoidRootPart

                Xxl = humanoidl.Position.x -- round(humanoid.Position.x, 0)
                Yyl = humanoidl.Position.y -- round(humanoid.Position.y, 0)
                Zzl = humanoidl.Position.z -- round(humanoid.Position.z, 0)

                local args = {
                    [1] = tonumber(serializeTable(remotes)),
                    [2] = "LightPower2",
                    [3] = "StartCharging",
                    [4] = CFrame.new(Xxl, Yyl, Zzl),
                    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
                    [9] = "Left"
                }
                
                game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
                
                wait(0.05)
                local args = {
                    [1] = tonumber(serializeTable(remotes)),
                    [2] = "LightPower2",
                    [3] = "StopCharging",
                    [4] = Mouse.Hit,
                    [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("Beach"):WaitForChild("Beach"),
                    [6] = 100
                }
                
                game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
            end
        end)
    end
end);

local Section = TabSPM:AddSection({
	Name = "Spam Plasma"
})

TabSPM:AddToggle({
	Name = "Auto Plasma",
	Default = false,
	Callback = function(PMS)
		_G.plasma1 = PMS
	end    
})

spawn(function()
    while wait(getgenv().spamtime) do
        pcall(function()
            if _G.plasma1 then
                local pla = game.Players.LocalPlayer;
                local Mouse = pla:GetMouse();
                    local args = {
                        [1] = tonumber(serializeTable(remotes)),
                        [2] = "PlasmaPower4",
                        [3] = "StartCharging",
                        [4] = Vector3.new(Mouse.Hit.X, Mouse.Hit.Y, Mouse.Hit.Z)
                    }
                    game:GetService("Players").LocalPlayer.Character.Powers.Plasma.RemoteEvent:FireServer(unpack(args))
                    wait(0)
                    local args = {
                        [1] = tonumber(serializeTable(remotes)),
                        [2] = "PlasmaPower4",
                        [3] = "Attack",
                        [4] = Vector3.new(Mouse.Hit.X, Mouse.Hit.Y, Mouse.Hit.Z),
                        [5] = Mouse.Hit,
                        [6] = 100
                    }
                    game:GetService("Players").LocalPlayer.Character.Powers.Plasma.RemoteEvent:FireServer(unpack(args))

                    local args = {
                        [1] = tonumber(serializeTable(remotes)),
                        [2] = "PlasmaPower4",
                        [3] = "Attack",
                        [4] = Vector3.new(Mouse.Hit.X, Mouse.Hit.Y, Mouse.Hit.Z),
                        [5] = Mouse.Hit,
                        [6] = 100
                    }
                    game:GetService("Players").LocalPlayer.Character.Powers.Plasma.RemoteEvent:FireServer(unpack(args))

                    local args = {
                        [1] = tonumber(serializeTable(remotes)),
                        [2] = "PlasmaPower4",
                        [3] = "Attack",
                        [4] = Vector3.new(Mouse.Hit.X, Mouse.Hit.Y, Mouse.Hit.Z),
                        [5] = Mouse.Hit,
                        [6] = 100
                    }
                    game:GetService("Players").LocalPlayer.Character.Powers.Plasma.RemoteEvent:FireServer(unpack(args))
            end
        end)
    end
end)

local Section = TabSPM:AddSection({
	Name = "Spam Flare"
})

TabSPM:AddToggle({
	Name = "Auto Flare Puch Fire",
	Default = false,
	Callback = function(FLA)
		_G.flare1 = FLA
	end    
})

spawn(function()
    while wait(getgenv().spamtime) do
        if _G.flare1 then
            local pla = game.Players.LocalPlayer;
            local Mouse = pla:GetMouse();
        
            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "FlarePower2",
                [3] = "StopCharging",
                [4] = CFrame.new(Vector3.new(Mouse.Hit.X, Mouse.Hit.Y, Mouse.Hit.Z)),
                [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("OutterDune"):WaitForChild("Beach"),
                [6] = 100
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Flare.RemoteEvent:FireServer(unpack(args))
            
            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "FlarePower2",
                [3] = "StartCharging",
                [4] = CFrame.new(-550.802795, 244, 26.3580341, -0.63954407, 0.15401715, -0.753168106, -0, 0.979725122, 0.200346366, 0.768754423, 0.128130332, -0.626577377),
                [5] = workspace:WaitForChild("IslandWindmill"):WaitForChild("OutterDune"):WaitForChild("Beach"),
                [7] = "Left"
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Flare.RemoteEvent:FireServer(unpack(args))
            
        end
    end
end);

TabSPM:AddToggle({
	Name = "Auto Flare Pillar of Fire",
	Default = false,
	Callback = function(FLAA)
		_G.flare2 = FLAA
	end    
})

spawn(function()
    while wait(getgenv().spamtime) do
        if _G.flare2 then
            local pla = game.Players.LocalPlayer;
            local Mouse = pla:GetMouse();
            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "FlarePower5",
                [3] = "StopCharging",
                [4] = CFrame.new(Vector3.new(Mouse.Hit.X, Mouse.Hit.Y, Mouse.Hit.Z)),
                [5] = workspace:WaitForChild("IslandTown"):WaitForChild("Grass"):WaitForChild("Grass"),
                [6] = 100
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Flare.RemoteEvent:FireServer(unpack(args))
            
            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "FlarePower5",
                [3] = "StartCharging",
                [4] = CFrame.new(-87.2900391, 213.999969, -985.91748, -0.656417644, 0.341256171, -0.757590711, 1.49011612e-08, 0.911768198, 0.410705268, 0.830902815, 0.228523642, -0.607323861),
                [5] = workspace:WaitForChild("IslandTown"):WaitForChild("Grass"):WaitForChild("Grass"),
                [7] = "Right"
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Flare.RemoteEvent:FireServer(unpack(args))
            
        end
    end
end);

local Section = TabSPM:AddSection({
	Name = "Spam Chilly"
})

TabSPM:AddToggle({
	Name = "Auto Chilly Wave",
	Default = false,
	Callback = function(CIL)
		_G.chilly = CIL
	end    
})

spawn(function()
    while wait() do
        pcall(function()
        if _G.chilly then
            local pla = game.Players.LocalPlayer;
            local Mouse = pla:GetMouse();
            
            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "ChillyPower11",
                [3] = "StopCharging",
                [4] = Mouse.Hit,
                [5] = workspace.IslandWindmill.Dock.Boards.Board,
                [6] = 100
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Chilly.RemoteEvent:FireServer(unpack(args))
            
            
            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "ChillyPower11",
                [3] = "StartCharging",
                [4] = CFrame.new(Vector3.new(-3.3828134536743164, 213, -366.8262939453125), Vector3.new(0.05879887938499451, -0.29103368520736694, -0.9549042582511902)),
                [5] = workspace.IslandWindmill.Dock.Boards.Board,
                [6] = "Right"
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Chilly.RemoteEvent:FireServer(unpack(args))
            
        end
        end)
    end
end)

local Section = TabSPM:AddSection({
	Name = "Spam Dark"
})

TabSPM:AddToggle({
	Name = "Auto Dark Star",
	Default = false,
	Callback = function(DKS)
		_G.darkstar = DKS
	end    
})

spawn(function()
    while wait(getgenv().spamtime) do
        pcall(function()
            if _G.darkstar then
                local pla = game.Players.LocalPlayer;
                local Mouse = pla:GetMouse();
                local humanoid = game.Players.LocalPlayer.Character.HumanoidRootPart

                Xx = humanoid.Position.x -- round(humanoid.Position.x, 0)
                Yy = humanoid.Position.y -- round(humanoid.Position.y, 0)
                Zz = humanoid.Position.z -- round(humanoid.Position.z, 0)
                local args = {
                    [1] = tonumber(serializeTable(remotes)),
                    [2] = "DarkPower10",
                    [3] = "StartCharging",
                    [4] = CFrame.new(Xxd, Yyd, Zzd),
                    [5] = workspace:WaitForChild("IslandTown"):WaitForChild("GrassUplift"):WaitForChild("Wedge"),
                    [7] = "Right"
                }
                game:GetService("Players").LocalPlayer.Character.Powers.Dark.RemoteEvent:FireServer(unpack(args))

                wait(0.01)
                local args = {
                    [1] = tonumber(serializeTable(remotes)),
                    [2] = "DarkPower10",
                    [3] = "StopCharging",
                    [4] = Mouse.Hit,
                    [5] = workspace:WaitForChild("IslandTown"):WaitForChild("Beach"):WaitForChild("Beach"),
                    [6] = 100
                }
                game:GetService("Players").LocalPlayer.Character.Powers.Dark.RemoteEvent:FireServer(unpack(args))
            end
        end)
    end
end);


local TabPlayer = Window:MakeTab({
	Name = "Player & Mob",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabPlayer:AddSection({
	Name = "Mob"
})

TabPlayer:AddToggle({
	Name = "Kill Aura Mob",
	Default = false,
	Callback = function(DTH)
		_G.deathmob = DTH
	end    
})

spawn(function()
    while wait() do
        if _G.deathmob then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.ClassName == "Model" then
			v.Humanoid.Health = die
		end
		end
            end)
        end
    end
end)

TabPlayer:AddToggle({
	Name = "Kill Aura Kaizu",
	Default = false,
	Callback = function(DTH)
		_G.deathkai = DTH
	end    
})

spawn(function()
    while wait() do
        if _G.deathkai then
            pcall(function()
                for i,v in pairs(game.Workspace.IslandKai:GetChildren()) do
                    if string.find(v.Name, "Kaizu") then
			v.Humanoid.Health = die
		end
		end
            end)
        end
    end
end)

TabPlayer:AddToggle({
	Name = "Godly Mob ( Only Mob Not complete )",
	Default = false,
	Callback = function(GOD)
		_G.mobs = GOD
	end    
})

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.mobs then
		 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if string.find(v.Name, "Angry Bob") 
or string.find(v.Name, "Bandit") 
or string.find(v.Name, "Thief")
or string.find(v.Name, "Crab") 
or string.find(v.Name, "Freddy")  
or string.find(v.Name, "Cave") 
or string.find(v.Name, "Thug") 	then
v.Torso.TouchInterest:Destroy()
end
end
 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if string.find(v.Name, "Vokun") then
v.Killer.TouchInterest:Destroy()
end
end
            end
        end)
    end
end);


local Section = TabPlayer:AddSection({
	Name = "Players"
})

local Plr = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Plr,v.Name)
end

TabPlayer:AddDropdown({
	Name = "Choose Player",
	Default = "",
	Options = Plr,
	Callback = function(PP)
		SelectPlayer = PP
	end    
})

TabPlayer:AddButton({
	Name = "Click to tp",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[SelectPlayer].Character.HumanoidRootPart.CFrame
  	end    
})

TabPlayer:AddToggle({
	Name = "View Player",
	Default = false,
	Callback = function(VPL)
		_G.viewplr = VPL
if not _G.viewplr then
            workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
			end
	end    
})

local function spectate(targetPlayer)
    if targetPlayer and targetPlayer.Character then
        local humanoid = targetPlayer.Character:FindFirstChild("Humanoid")
        if humanoid then
            workspace.CurrentCamera.CameraSubject = humanoid
            print("Now spectating:", targetPlayer.Name)
        end
    end
end

spawn(function()
    while task.wait(0.5) do
        if _G.viewplr and SelectPlayer then
            local targetPlayer = game.Players:FindFirstChild(SelectPlayer)
            if targetPlayer then
                spectate(targetPlayer)
            else
                print("Player not found or unavailable:", SelectPlayer)
            end
        end
    end
end)
TabPlayer:AddToggle({
	Name = "Auto Bring Player",
	Default = false,
	Callback = function(BPR)
		BringPlr = BPR
	end    
})

spawn(function()
    while wait() do
        if BringPlr then
            pcall(function()
                game.Players[SelectPlayer].Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-2.5)
            end)
        end
    end
end)

TabPlayer:AddToggle({
	Name = "Aim Player",
	Default = false,
	Callback = function(ASL)
		aimsilent = ASL
	end    
})

spawn(function()
    pcall(function()
        while true do wait()
            pcall(function()
                local plr1 = game.Players.LocalPlayer.Character
                local plr2 = game.Players:FindFirstChild(SelectPlayer)
                if aimsilent then
                    cacacac = plr2.Character.HumanoidRootPart.CFrame
                end
            end)
        end
    end)
end)

local index = mta.__index
cf = CFrame.new(1, 2, 3)
setreadonly(mta, false)
mta.__index = newcclosure(function(a, b, c)
    if tostring(b):lower() == 'hit' and aimsilent then
        return cacacac
    end
    return index(a, b, c)
end)

TabPlayer:AddButton({
	Name = "ESP Player",
	Callback = function()
        -- ESP Script (Chams, Name, Box, Tracers)

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- Settings
local ESPSettings = {
    NameColor = Color3.fromRGB(255, 255, 255), -- White name
    ChamColor = BrickColor.new("Bright yellow"), -- Yellow chams
    ChamTransparency = 0.7, -- Chams transparency (0 = opaque, 1 = invisible)
    TextSize = 10, -- ESP Name Text Size
}

-- Function to create Chams (highlight players through walls)
local function createChams(character)
    for _, part in pairs(character:GetChildren()) do
        if part:IsA("BasePart") then
            local cham = Instance.new("BoxHandleAdornment")
            cham.Size = part.Size
            cham.Adornee = part
            cham.Color = ESPSettings.ChamColor
            cham.Transparency = ESPSettings.ChamTransparency
            cham.ZIndex = 0
            cham.AlwaysOnTop = true
            cham.Parent = part
        end
    end
end

-- Function to create ESP (Names, Boxes, Tracers)
local function createESP(player)
    local name = Drawing.new("Text")

    RunService.RenderStepped:Connect(function()
        if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player ~= LocalPlayer then
            local rootPart = player.Character.HumanoidRootPart
            local pos, onScreen = Camera:WorldToViewportPoint(rootPart.Position)
            
            if onScreen then
                -- Name ESP
                name.Visible = true
                name.Text = player.Name
                name.Size = ESPSettings.TextSize
                name.Color = ESPSettings.NameColor
                name.Position = Vector2.new(pos.X, pos.Y - 25)

            else
                name.Visible = false
            end
        else
            name.Visible = false
        end
    end)
end

-- Apply ESP to all players
for _, player in pairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        createESP(player)
        player.CharacterAdded:Connect(function(character)
            createChams(character)
        end)
    end
end

-- Update ESP when a new player joins
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        createChams(character)
        createESP(player)
    end)
end)
  	end })

local Section = TabPlayer:AddSection({
	Name = "Player Kill"
})

TabPlayer:AddToggle({
	Name = "Auto Cannon Player Kill ( For One Piece: Legendary )",
	Default = false,
	Callback = function(ACN)
		_G.autocannonplr = ACN
	end    
})

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannonplr then
                local toolname = "Cannon Ball"
                local Plr = game:GetService("Players").LocalPlayer
                wait(0.75)
                if Plr.Backpack:FindFirstChild(toolname) and not Plr.Character:FindFirstChild(toolname) and not Plr.Character:FindFirstChildOfClass("Tool") then
                    local tool = Plr.Backpack:FindFirstChild(toolname)
                    Plr.Character.Humanoid:EquipTool(tool)
                    wait(0.75)
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannonplr then
                local args = {
                    [1] = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
                }
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cannon Ball").RemoteEvent:FireServer(unpack(args))
                wait(0)
                local args = {
                    [1] = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
                }
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cannon Ball").RemoteEvent:FireServer(unpack(args))
                wait(0)
                if game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:FindFirstChild("CannonBall") then
                    game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:FindFirstChild("CannonBall").CanCollide = false
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannonplr then
                repeat task.wait(0)
                    for i, v in pairs(game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:GetChildren()) do
                        if v.Name == "CannonBall" then
                            v.CFrame = game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(0, 2, -15)
                            v.CanCollide = false
                            if not v:FindFirstChild("BodyClip") then
                                local Noclip = Instance.new("BodyVelocity")
                                Noclip.Name = "BodyClip"
                                Noclip.Parent = v
                                Noclip.MaxForce = Vector3.new(100000,100000,100000)
                                Noclip.Velocity = Vector3.new(0,20,0)
                            end
                        end
                    end
                until _G.autocannon == false or _G.autocannonplr == false or game.Players.LocalPlayer.Character.Humanoid.Health == 0
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannonplr and game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                task.wait(1)
                for i=1,2 do
                    game:GetService("Players").LocalPlayer.Character.Weapons:FireServer()
                end
            end
        end)
    end
end)


spawn(function()
    while task.wait(15) do
        pcall(function()
            if _G.autocannonplr then
                task.wait(0.1)
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name == "Cannon Ball" then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.autocannonplr then
                task.wait(0.1)
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name ~= "Cannon" and v.Name ~= "Cannon Ball" then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function() -- autofarm teleport cannon
    while wait(0) do
        pcall(function()
            if _G.autocannonplr then
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        v.Character.HumanoidRootPart.Transparency = 0.9
                    	v.Character.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.Character.HumanoidRootPart.CanCollide = false
                        v.Character.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,5,-15)
                        if v.Character.Humanoid.Health == 0 then
                            v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                            v.Character.HumanoidRootPart.Transparency = 1
                        end
                    end
                end
            end
        end)
    end
end);

TabPlayer:AddToggle({
	Name = "Chilly Spam Kill",
	Default = false,
	Callback = function(CHKL)
		_G.chillykill = CHKL
	end    
})

spawn(function() 
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.chillykill then
            pcall(function()
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame*CFrame.new(0,15,0)
                        if v.Character.Humanoid.Health == 0 then
                        	v.Character.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end)
        end
    end)
end)

spawn(function()
    while wait() do
        pcall(function()
        if _G.chillykill then
            local pla = game.Players.LocalPlayer;
            local Mouse = pla:GetMouse();
            
            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "ChillyPower11",
                [3] = "StopCharging",
                [4] = Mouse.Hit,
                [5] = workspace.IslandWindmill.Dock.Boards.Board,
                [6] = 100
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Chilly.RemoteEvent:FireServer(unpack(args))
            
            
            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "ChillyPower11",
                [3] = "StartCharging",
                [4] = CFrame.new(Vector3.new(-3.3828134536743164, 213, -366.8262939453125), Vector3.new(0.05879887938499451, -0.29103368520736694, -0.9549042582511902)),
                [5] = workspace.IslandWindmill.Dock.Boards.Board,
                [6] = "Right"
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Chilly.RemoteEvent:FireServer(unpack(args))
            
        end
        end)
    end
end)

TabPlayer:AddToggle({
	Name = "Bomb Spam Kill",
	Default = false,
	Callback = function(BMB)
		_G.bombkill = BMB
	end    
})

spawn(function() 
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.bombkill then
            pcall(function()
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame*CFrame.new(0,15,0)
                        if v.Character.Humanoid.Health == 0 then
                        	v.Character.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end)
        end
    end)
end)

spawn(function()
    while wait() do
        pcall(function()
        if _G.bombkill then 
            local pla = game.Players.LocalPlayer;
            local Mouse = pla:GetMouse();
            
            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "BombPower5",
                [3] = "StopCharging",
                [4] = Mouse.Hit,
                [5] = Mouse.Target,
                [6] = 100
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Bomb.RemoteEvent:FireServer(unpack(args))
            
            
            local args = {
                [1] = tonumber(serializeTable(remotes)),
                [2] = "BombPower5",
                [3] = "StartCharging",
                [4] = CFrame.new(Vector3.new(-3.3828134536743164, 213, -366.8262939453125), Vector3.new(0.05879887938499451, -0.29103368520736694, -0.9549042582511902)),
                [5] = workspace.IslandWindmill.Dock.Boards.Board,
                [6] = "Right"
            }
            
            game:GetService("Players").LocalPlayer.Character.Powers.Bomb.RemoteEvent:FireServer(unpack(args))
            
        end
        end)
    end
end)

local Section = TabPlayer:AddSection({
	Name = "Bug Dash Death ( Only when standing still ) | For OPL: Anarchy |"
})

TabPlayer:AddToggle({
	Name = "Spam Dash ( Choose Player )",
	Default = false,
	Callback = function(ADSH)
		_G.autodash = ADSH
	end    
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.autodash then
	for i,v in pairs(game:GetService("Workspace")[SelectPlayer]:GetChildren()) do
if string.find(v.Name, "Dash") then
v:FireServer(CFrame.new(game.Players[SelectPlayer].Character.HumanoidRootPart.Position),workspace.Water)
end
end
            end
        end)
    end
end);

TabPlayer:AddToggle({
	Name = "Press to use first, Spam Dash",
	Default = false,
	Callback = function(ASAV)
		_G.autoshave = ASAV
	end    
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.autoshave then
	for i,v in pairs(game:GetService("Workspace")[SelectPlayer]:GetChildren()) do
if string.find(v.Name, "Shave") then
v:FireServer(CFrame.new(game.Players[SelectPlayer].Character.HumanoidRootPart.Position),workspace.Water)
end
end
            end
        end)
    end
end);

local TabLD = Window:MakeTab({
	Name = "Island",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TabLD:AddSection({
	Name = "SafeZone"
})

TabLD:AddDropdown({
	Name = "Choose SafeZone",
	Default = "",
	Options = Cache.DevConfig["ListOfSafeZone"],
	Callback = function(CSF)
		getgenv().tpsafezone = CSF
	end    
})
	
TabLD:AddButton({
	Name = "Click to Tp",
	Callback = function()
        if getgenv().tpsafezone == "SafeZone Sky" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneOuterSpacePart"].CFrame * CFrame.new(0, 5, 0)
	 elseif getgenv().tpsafezone == "SafeZone UnderSea" then
       game.Players.LocalPlayer.Character.Humanoid.Sit = true
        wait(0.15)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneUnderSeaPart"].CFrame * CFrame.new(0, 5, 0)
	elseif getgenv().tpsafezone == "SafeZone LightFarm1" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneLightPart1"].CFrame * CFrame.new(0, 5, 0)
	elseif getgenv().tpsafezone == "SafeZone LightFarm2" then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["SafeZoneLightPart2"].CFrame * CFrame.new(0, 5, 0)
			end
			end    
})
	
local Section = TabLD:AddSection({
	Name = "Teleport Island"
})

TabLD:AddDropdown({
	Name = "Choose Island",
	Default = "",
	Options = Cache.DevConfig["ListOfIsland"],
	Callback = function(GIS)
		getgenv().tpisland = GIS
	end    
})

TabLD:AddButton({
	Name = "Click to Tp",
	Callback = function()
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
  	end    
})

local Section = TabLD:AddSection({
	Name = "Warp kill Boss Pursuer"
})

TabLD:AddToggle({
	Name = "Auto Kill Boss Pursuer ( Have Yoru to Spam )",
	Default = false,
	Callback = function(AFP)
		_G.autopursuer = AFP
	end    
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.autopursuer then
	for _,v in pairs(game.Workspace.Island14:GetChildren()) do
                    if string.find(v.Name, "Lv5000 Pursuer")
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
end);

local Section = TabLD:AddSection({
	Name = "For Event Halloween ( Farm earns a lot of beri )"
})

TabLD:AddToggle({
	Name = "Auto Bring Zombie",
	Default = false,
	Callback = function(AFZ)
		FarmZom = AFZ
	end    
})

spawn(function()
    while wait(0) do
        pcall(function()
            if FarmZom then
                if not game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end
                if game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end

            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if FarmZom then
                for _,v in pairs(game.Workspace.WorldEvent.Halloween.Zombies:GetChildren()) do
                    if string.find(v.Name, "Zombie")
                    and v:FindFirstChild("HumanoidRootPart") then
                        v.HumanoidRootPart.CanCollide = false
                    	v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
			v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-5)
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

TabLD:AddButton({
	Name = "Tp to Pumpkin",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.WorldEvent.Halloween.Pumpkin.CFrame
  	end    
})

TabLD:AddToggle({
	Name = "Auto Click Pumpkin",
	Default = false,
	Callback = function(ACP)
		AutoClickP = ACP
	end    
})

spawn(function()--autofruit
    while wait() do
        pcall(function()
            if AutoClickP then
                wait(.5)
                for i,v in pairs(game.Workspace.WorldEvent.Halloween.Pumpkin:GetChildren()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)
    end
end);
	
local TabMS = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = TabMS:AddSection({
	Name = "Server"
})

TabMS:AddButton({
	Name = "Rejoin",
	Callback = function()
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId) 
  	end    
})

TabMS:AddButton({
	Name = "Hop Server",
	Callback = function()
        local PlaceID = game.PlaceId
          local AllIDs = {}
          local foundAnything = ""
          local actualHour = os.date("!*t").hour
          local Deleted = false
          --[[
          local File = pcall(function()
              AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
          end)
          if not File then
              table.insert(AllIDs, actualHour)
              writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
          end
          ]]
          function TPReturner()
              local Site;
              if foundAnything == "" then
                  Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
              else
                  Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
              end
              local ID = ""
              if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                  foundAnything = Site.nextPageCursor
              end
              local num = 0;
              for i,v in pairs(Site.data) do
                  local Possible = true
                  ID = tostring(v.id)
                  if tonumber(v.maxPlayers) > tonumber(v.playing) then
                      for _,Existing in pairs(AllIDs) do
                          if num ~= 0 then
                              if ID == tostring(Existing) then
                                  Possible = false
                              end
                          else
                              if tonumber(actualHour) ~= tonumber(Existing) then
                                  local delFile = pcall(function()
                                      -- delfile("NotSameServers.json")
                                      AllIDs = {}
                                      table.insert(AllIDs, actualHour)
                                  end)
                              end
                          end
                          num = num + 1
                      end
                      if Possible == true then
                          table.insert(AllIDs, ID)
                          wait()
                          pcall(function()
                              -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                              wait()
                              game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                          end)
                          wait(4)
                      end
                  end
              end
          end

          function Teleport()
              while wait() do
                  pcall(function()
                      TPReturner()
                      if foundAnything ~= "" then
                          TPReturner()
                      end
                  end)
              end
          end

          Teleport()

  	end    
})

local Section = TabMS:AddSection({
	Name = "Auto Unbox"
})

TabMS:AddToggle({
	Name = "Unbox ( Common )",
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

TabMS:AddToggle({
	Name = "Unbox ( Uncom )",
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

TabMS:AddToggle({
	Name = "Unbox ( Rare & Ultra Rare )",
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

local Section = TabMS:AddSection({
	Name = "Auto Delete Boxs ( Reduce lag )"
})

TabMS:AddToggle({
	Name = "Delete Common",
	Default = false,
	Callback = function(ADC)
		_G.autodelete1 = ADC
	end    
})


spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autodelete1 then
local Event = game:GetService("Players").LocalPlayer.Backpack["Common Box"]
        Event:Destroy()
	end
        end)
    end
end)

TabMS:AddToggle({
	Name = "Delete Uncom",
	Default = false,
	Callback = function(ADU)
		_G.autodelete2 = ADU
	end    
})

spawn(function()
    while wait(0) do
        pcall(function()
            if _G.autodelete2 then
local Event = game:GetService("Players").LocalPlayer.Backpack["Uncommon Box"]
        Event:Destroy()
	end
        end)
    end
end)

local Section = TabMS:AddSection({
	Name = "Anti"
})

TabMS:AddToggle({
	Name = "Anti Dark Pool",
	Default = false,
	Callback = function(ATS)
		_G.autistun = ATS
	end    
})

spawn(function()
while wait() do
       pcall(function()
	if _G.antistun then
       for i, v in pairs(game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId].MagmaPool:GetChildren()) do
	v.TouchInterest:Destroy()
end
end)
end 
end)

TabMS:AddToggle({
	Name = "Anti Water",
	Default = false,
	Callback = function(NODM)
		_G.nowaterdamage = NODM
	end    
})

spawn(function()
    while wait() do
        if _G.nowaterdamage then
            pcall(function()
                local args = {
    [1] = "NOPLS"
}

game:GetService("Players").LocalPlayer.Character.Drown:FireServer(unpack(args))
if self.Name == 'Drown' and _G.nowaterdamage then
            if args[1] then
                return nil
            end
        end
            end)
        end
    end
end)

TabMS:AddButton({
	Name = "Anti Lag",
	Callback = function()
	if not gethui then
    warn("Incompatible executor: gethui is unavailable")
    return
end

local runService = game:GetService("RunService")
local lighting = game:GetService("Lighting")

local fpsCounterGui = Instance.new("ScreenGui", gethui())
local fpsLabel = Instance.new("TextLabel", fpsCounterGui)

fpsCounterGui.Name = "FpsCounterGui"
fpsCounterGui.IgnoreGuiInset = true
fpsLabel.Name = "FpsLabel"
fpsLabel.BackgroundTransparency = 1
fpsLabel.Position = UDim2.new(1, -100, 0, 0)
fpsLabel.Size = UDim2.new(0, 100, 0, 30)
fpsLabel.Text = ""
fpsLabel.TextSize = 16
fpsLabel.TextStrokeTransparency = 0.6
fpsLabel.Draggable = true

local function GetFPS(delay)
    local startTime = tick()
    local frames = 0
    local heartbeatConnection = runService.Heartbeat:Connect(function()
        frames = frames + 1
    end)
    task.wait(delay)
    heartbeatConnection:Disconnect()
    local elapsedTime = tick() - startTime
    local fps = frames / elapsedTime
    return math.ceil(fps)
end

task.spawn(function()
    while true do
        local fps = GetFPS(0.5)
        if fps >= 60 then
            fpsLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
        elseif fps <= 59 and fps > 50 then
            fpsLabel.TextColor3 = Color3.fromRGB(255, 170, 0)
        elseif fps <= 49 and fps > 30 then
            fpsLabel.TextColor3 = Color3.fromRGB(255, 85, 0)
        elseif fps <= 29 then
            fpsLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
        end
        fpsLabel.Text = tostring(fps) .. " FPS"
    end
end)

lighting.GlobalShadows = false
lighting.FogEnd = 9e9
lighting.EnvironmentDiffuseScale = 0.5
lighting.EnvironmentSpecularScale = 0.5

for _, descendant in ipairs(game:GetDescendants()) do
    if descendant:IsA("BasePart") then
        descendant.CastShadow = false
        descendant.Material = Enum.Material.SmoothPlastic
        descendant.Reflectance = 0
        if descendant:IsA("MeshPart") then
            descendant.CollisionFidelity = Enum.CollisionFidelity.Box
        end
    end
    if descendant:IsA("Decal") or descendant:IsA("Texture") then
        if descendant.Transparency > 0.25 then
            descendant.Transparency = 0.25
        end
    end
    if descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
        descendant.Lifetime = NumberRange.new(0)
    end
end
  	end    
})

TabMS:AddToggle({
	Name = "Anti Afk",
	Default = false,
	Callback = function(AFK)
		_G.antiafk = AFK
	end    
})

if _G.antiafk then
local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:Connect(function()
                vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
            end)
end

OrionLib:Init()
