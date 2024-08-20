local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()
local win = Flux:Window("OPL Hub", "Test Script", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)

-- TAP AUTO FARM
local tab = win:Tab("Auto Farm", "Auto Farm")
tab:Button("Auto Farm", "not Working", function()
    print("")
end)

-- TAP AUTO HAKI
local tab = win:Tab("Haki Farm, "Haki Farm")
tab:Button("Auto Haki", "not Working", function()
    print("")
end)

-- TAP TP ISLAND
local tab = win:Tab("TP island", "TP island")
tab:Button("Kai Island", "Tp to Kai Island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

-- TAP PLAYER
local tab = win:Tab("Player", "Player")
tab:Button("View Player", "not Working", function()
    print("")
end)

-- TAP SAM
local tab = win:Tab("Sam Question", "Sam Question")
tab:Button("Auto Sam", "Not Working", function()
    print("")
end)
