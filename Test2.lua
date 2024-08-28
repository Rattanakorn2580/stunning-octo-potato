local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
getgenv().KillAura = nil
getgenv().ChestFarm = nil
local X = Material.Load({
	Title = "Project XXL | Lazzy Exploits",
	Style = 2,
	SizeX = 250,
	SizeY = 150,
	Theme = "Light",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(235,235,235)
	}
})

local Y = X.New({
	Title = "Roblox Main Scripts"
})



local B = Y.Toggle({
	Text = "Roblox | Kill Aura",
	Callback = function(Value)
		getgenv().KillAura = Value
	end,
	Enabled = false
})




while wait() do
    if getgenv().KillAura == true then

local ohVector32 = Vector3.new(-9653.310546875, 47.48046112060547, -4440.38330078125)
local ohCFrame3 = CFrame.new(-9653.31055, 47.4804611, -4440.3833, 0.345474839, -0.00910704955, 0.938383877, -0, 0.999953032, 0.00970457867, -0.938428104, -0.00335268769, 0.345458567)

game:GetService("ReplicatedStorage").RemoteEvents.BladeCombatRemote:FireServer(false, ohVector32, ohCFrame3)
  end
  end
