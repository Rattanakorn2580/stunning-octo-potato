local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()
local win = Flux:Window("OPL Hub", "Test Script", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)

-- TAP AUTO FARM
local tab = win:Tab("AutoFarm")

-- TAP AUTO HAKI
local tab = win:Tab("Auto Haki")

-- TAP TP ISLAND
local tab = win:Tab("Tp island")

-- TAP PLAYER
local tab = win:Tab("Player")
tab:Button("Dupe", "Working", function()
    workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("UpdateClothing_Extras"):FireServer("A","\255",31)
end)

-- TAP SAM
local tab = win:Tab("Auto Sam")
