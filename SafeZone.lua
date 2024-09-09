local NovoBloco = Instance.new("Part", workspace) 
local ts = game:GetService("TweenService") 
NovoBloco.Anchored = true 
NovoBloco.CanCollide = true 
NovoBloco.Size = Vector3.new(250.246, 0.771, 250.852) 
_G.e = safe

    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.e then
ts:Create(NovoBloco, TweenInfo.new(0.2), 
		{CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -3.5, 0)}):Play() 
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(4500.5, 10000, 4500, 0, 0, -1, 0, 1, 0, 1, 0, 0))
            end
        end)
       end)
    end)
