_G.loop true;
While _G.loop do wait()
for i,v in pairs(game:GetService("Workspace").Worlds.Starterworld.Compass:GetDescendants()) 
If v.Name "Compass" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame wait(-1) v.Parent.CFrame
wait(.1)
end
end
and
