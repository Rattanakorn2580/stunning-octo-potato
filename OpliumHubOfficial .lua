 local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "InW Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "By Bank Kesee"})

local Tab999 = Window:MakeTab({
	Name = "Rejoin Sever",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = TabFarm:AddSection({
	Name = "Rejoin Sever"
})

TabFarm:AddToggle({
	Name = "Auto Pursuer",
	Default = false,
	Callback = function(APS)
		_G.autopursuer = APS
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

TabFarm:AddToggle({
	Name = "Auto Lay Pedestal",
	Default = false,
	Callback = function(PDT)
		_G.pedestal = PDT
	end    
})

spawn(function()
    while task.wait(0) do
        pcall(function()
            if _G.pedestal then
                local toolname = "Fruit"
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
