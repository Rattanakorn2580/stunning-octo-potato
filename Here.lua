local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()
local win = Flux:Window("OPL Hub", "Test Script", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)

-- TAB TP ISLAND
local tab = win:Tab("TP island", "http://www.roblox.com/asset/?id=6023426915")
tab:Button("Kai Island", "Tp to Kai Island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)

tab:Button("Dupe", "Working", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1066, 282.5, 1624.5, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)

-- TAB SAM
local tab = win:Tab("Sam Question", "http://www.roblox.com/asset/?id=6023426915")
tab:Button("Dupe", "Working", function()
    workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("UpdateClothing_Extras"):FireServer("A","\255",31)
    end)
tab:Button("Claim Compass", "Claim 10 Compass", function()
    workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")
    end)
