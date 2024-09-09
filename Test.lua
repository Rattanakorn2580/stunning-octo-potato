local NovoBloco = Instance.new("Part", workspace)
NovoBloco.Anchored = true
NovoBloco.CanCollide = true
NovoBloco.Size = Vector3.new(200, 200, 200)
_G.e = true

while _G.e == true do wait()
	{CFrame = game.Players.LocalPlayer.Character:MoveTo(Vector3.new(88.5, 297.100006, -916, 0, 0, -1, 0, 1, 0, 1, 0, 0))}):Play()
end
