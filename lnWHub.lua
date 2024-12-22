local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))() 
local Player = game.Players.LocalPlayer 
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "InW Hub | For Dupe More Compasses |", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroText = "กรุณาติดต่อเจ้าของ . . . InW Hub"})

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


TabAuto:AddToggle({
	Name = "Auto Finding",
	Default = false,
	Callback = function(ADF)
		_G.autofinddf = ADF
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

TabAuto:AddToggle({
	Name = "Auto Reset Stats",
	Default = false,
	Callback = function(ASET)
		_G.autoreset = ASET
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


TabAuto:AddToggle({
	Name = "Auto Claim Challengs Compasses",
	Default = false,
	Callback = function(ACM)
		_G.autoclaim = ACM
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

TabAuto:AddDropdown({
	Name = "Choose Box",
	Default = "",
	Options = Cache.DevConfig["ListOfBox3"],
	Callback = function(CT)
		getgenv().drop1 = CT
	end    
})

TabAuto:AddToggle({
	Name = "Auto Drop Rare Box",
	Default = false,
	Callback = function(ADP)
		_G.autodrop = ADP
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
