local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()
local win = Flux:Window("OPL Hub", "Test Script", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)

-- TAP PLAYER
local tab = win:Tab("Player", "Player")
tab:Button("Dupe", "Working", function()
    workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("UpdateClothing_Extras"):FireServer("A","\255",31)
end)
