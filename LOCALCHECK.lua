local Pl = game.PlaceId
if Pl == 8569358381 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Rattanakorn2580/stunning-octo-potato/main/BetaOPMIUM.lua"))();
else
        game.Players.LocalPlayer:Kick("Script Not Support")
        wait(1)
	    game:GetService("TeleportService"):Teleport(game.Pl, 
		game:GetService("Players").LocalPlayer)
end
