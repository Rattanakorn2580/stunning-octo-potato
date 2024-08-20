local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()
local win = Flux:Window("OPL Hub", "Test Script", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)

-- TAP AUTO FARM
local tab = win:Tab("Auto Farm", "http://www.roblox.com/asset/?id=6023426915")
tab:Button("Dupe", "Working", function()
Flux:Notification("duping", "Alright")
end)
