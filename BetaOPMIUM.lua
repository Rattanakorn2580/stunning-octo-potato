local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("[BETA] OPMIUM HUB        ONE PIECE : LEGENDARY", "DarkTheme")

local ScreenGui = Instance.new("ScreenGui") 
ScreenGui.Name = "ScreenGui" 
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") 
ScreenGui.ResetOnSpawn = false 

local Toggle = Instance.new("TextButton") 
Toggle.Name = "Toggle" 
Toggle.Parent = ScreenGui 
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0) 
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0) 
Toggle.Size = UDim2.new(0, 90, 0, 38) 
Toggle.Font = Enum.Font.SourceSans 
Toggle.Text = "Turn/Off" 
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248) 
Toggle.TextSize = 28.000 
Toggle.Draggable = true 
Toggle.MouseButton1Click:connect(function() 
Library:ToggleUI() 
end)

-- UPDATE
local Tab = Window:NewTab("Update")
local Section = Tab:NewSection("อัพ New!! 'Auto Bring Fruits, Auto Fishing' ")
local Section = Tab:NewSection("อยู่ในช่วงพัฒนานะจ้ะ")

--AUTO
local Tab = Window:NewTab("Autos")
local Section = Tab:NewSection("Auto function")

Section:NewToggle("Auto Package", "Click To Frame", function(ap) 
_G.AutoPack = ap
while _G.AutoPack do wait()
      if _G.AutoPack then
        workspace.Merchants.QuestFishMerchant.Clickable.Retum:FireServer()
wait(.5)
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
wait(.1)
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
wait()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1306.5208740234375, 217.9999542236328, -1353.1082763671875))
wait(.2)
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1281.2869873046875, 218.199951171875, -1370.6693115234375))
wait(.2)
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1489.942626953125, 260.38623046875, 2170.9462890625))
wait(.2)
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(998.5682373046875, 223.9999542236328, -3338.46728515625))
wait(.2)
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1067.3900146484375, 360.9999084472656, 1664.3414306640625))
wait(.2)
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1109.985595703125, 216.99998474121094, 3369.404296875))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(113.17005920410156, 277.9999084472656, 4952.20849609375))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1702.6612548828125, 215.9999542236328, -324.8488464355469))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1983.1905517578125, 217.9999542236328, 562.5492553710938))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(907.1943359375, 269.9999084472656, 1219.1839599609375))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(622.53271484375, 215.9999542236328, 1217.61962890625))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1252.408935546875, 217.41062927246094, -1175.2938232421875))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1.477496862411499, 215.9999542236328, -412.4173278808594))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-132.97918701171875, 215.9999542236328, -671.41650390625))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2055.6240234375, 215.9999542236328, -387.2252502441406))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1523.36669921875, 260.3719177246094, 2165.560791015625))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1550.79248046875, 263.898681640625, 2132.965087890625))
wait(.2)
end
end
end)

Section:NewToggle("Auto Mission Expert", " ", function(m)
        AutoAdd = m
    end)

spawn(function()
while wait() do 
if AutoAdd then 
pcall(function() 
workspace.Merchants.ExpertiseMerchant.Clickable.Retum:FireServer()
end) 
end 
end 
end)

Section:NewToggle("Auto Bring Compass", " ", function()
local plr=game:GetService'Players'.LocalPlayer 

	local dftofind='Compass'
	while true do 
	local char=plr.Character or plr.CharacterAdded:Wait() 
	local HRP=char:WaitForChild'HumanoidRootPart' 
	for i,v in next, workspace:GetChildren() do 
	local Handle=v:FindFirstChild'Handle' 
	if v:IsA'Tool' and string.find(v.Name:lower(), dftofind:lower()) and Handle then 
	Handle.CFrame=HRP.CFrame 
	end 
	end 
	wait(1) 
	end 


end)

Section:NewButton("TP Chest", "", function()
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2001.57654, 231.100006, 574.679382, -0.316045165, 0, 0.948744476, 0, 1, 0, -0.948744476, 0, -0.316045165))
wait(.2)
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1861.69946, 215.300018, 838.104797, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247))
wait(.2)
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1793.90454, 234.100006, 844.402405, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247))
wait(.2)
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1864.5282, 215.300018, 842.347229, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998))
wait(.2)
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1857.45728, 215.300018, 835.276245, -0.906296611, 0, 0.422642082, 0, 1, 0, -0.422642082, 0, -0.906296611))
wait(.2)
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1855.42297, 234.100006, 905.920776, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-251.260406, 272.099976, 353.275208, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-212, 221.099991, 20.5, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(108, 221.099991, -36.5, 0, 0, 1, 0, 1, -0, -1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(16.5, 217.100006, 139, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-246.776093, 272.099976, 350.08075, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-246.851013, 272.099976, 355.632568, -0.906296611, 0, -0.422642082, 0, 1, 0, 0.422642082, 0, -0.906296611))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-310.5, 219.099991, -325, -0.707134247, 0, -0.707079291, 0, 1, 0, 0.707079291, 0, -0.707134247))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(114.5, 217.099991, -247, 1, 0, 0, 0, 1, 0, 0, 0, 1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1886, 221.099991, 3312.5, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1894, 221.099991, 3277.5, 0.766061246, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, 0.766061246))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1910, 221.099991, 3295.5, 0.173624337, 0, 0.984811902, 0, 1, 0, -0.984811902, 0, 0.173624337))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1161, 216.100006, 3316.5, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1156, 216.100006, 3316.5, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1166, 216.100006, 3316.5, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-4001, 213.100006, -2187.5, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-5260.00049, 300.100006, -7772.5, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(948, 213.099991, 1210.5, 0, 0, 1, 0, 1, -0, -1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(767, 213.099991, -1370.5, 0, 0, 1, 0, 1, -0, -1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2026, 445.099976, -753.500061, 0, 0, -1, 0, 1, 0, 1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2203, 213.099991, -630.499939, 0, 0, -1, 0, 1, 0, 1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240, 215.099991, 621.500061, 0, 0, -1, 0, 1, 0, 1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1384.99988, 221.099991, -3491.5, 0, 0, 1, 0, 1, -0, -1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1263.00012, 213.099991, -3103.5, 0, 0, 1, 0, 1, -0, -1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-35.25, 226.099991, 2155.75, 0, 0, 1, 0, 1, -0, -1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-37.5, 254.099991, -1223.00012, 0, 0, 1, 0, 1, -0, -1, 0, 0))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-272.621338, 252.099991, -943.378845, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1110.5, 221.099991, -3449, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(119.5, 245.099991, -1231.00012, -1, 0, 0, 0, 1, 0, 0, 0, -1))
wait(.2)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(88.5, 297.100006, -916, 0, 0, -1, 0, 1, 0, 1, 0, 0))
wait(.2)
	end)

-- AUTO FARM
local Tab = Window:NewTab("Auto Farm")
local Section = Tab:NewSection("Mob Farm") 
Section:NewButton("Taget List", " ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Rattanakorn2580/stunning-octo-potato/main/AUTOFARM.lua"))()
end)

Section:NewButton("Taget Bring", " ", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Rattanakorn2580/stunning-octo-potato/main/Hub.lua"))()
end)


local Weaponlist = {} 
local Weapon = nil

for i,v in 
pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do 
    table.insert(Weaponlist,v.Name) 
end 

Section:NewDropdown("Taget Weapon", " ", Weaponlist, function(currentOption) 
        Weapon = currentOption 
    end)

Section:NewToggle("Auto Click", " ", function(a) 
        AutoClicked = a 
    end)

spawn(function()
while wait() do 
if AutoClicked then 
pcall(function() 
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) 
end) 
end 
end 
end)

Section:NewToggle("Auto Equip", " ", function(a) 
        AutoEquiped = a 
    end)

spawn(function() 
while wait() do 
if AutoEquiped then 
pcall(function() 						
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Weapon))
end) 
end 
end 
end)

local Section = Tab:NewSection("Auto Fishing")
Section:NewToggle("Auto Fishing", " ", function(fs)
        Fishing = fs
    end)

spawn(function() 
while wait() do
if Fishing then 
pcall(function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-4000.639404296875, 215.99998474121094, -2187.36767578125))
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Wood Rod"))
wait(.1)
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Study Rod"))
wait(.1)
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Super Rod"))
wait(.1)
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
wait(34)
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
wait(35)
end) 
end 
end 
end)

local Section = Tab:NewSection("Auto Sam")
Section:NewToggle("Auto Claim10", " ", function(a) 
        AutoClaim = a 
    end)

spawn(function() 
while wait() do 
if AutoClaim then 
pcall(function() 
workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10") 
end) 
end 
end 
end)

Section:NewButton("Dupe","", function()
  workspace:WaitForChild("UserData"):WaitForChild("User_"..game.Players.LocalPlayer.UserId):WaitForChild("UpdateClothing_Extras"):FireServer("A","\255",31)
	end)

local Tab = Window:NewTab("Auto Stats")
local Section = Tab:NewSection("Fruit Farm")
Section:NewToggle("Auto Bring Fruits", "", function(ft)
	_G.Fruity = ft
loadstring(game:HttpGet("https://raw.githubusercontent.com/Rattanakorn2580/stunning-octo-potato/main/Fruity.lua"))()
		end)
	
-- TP ISLAND
local Tab = Window:NewTab("TP Island")                       
local Section = Tab:NewSection("TP Island")

Section:NewButton("Boss", "", function()
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(4890.38916, 411.091553, -7178.46777, 0, 1, -0, -1, 0, 0, 0, 0, 1))
    end)
Section:NewButton("Crab", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-6.5, 202, -240.5, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Cave", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(77, 202, -975, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Windbill", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(92.5, 220.5, -31, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Sam", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1281.5, 214.5, -1352.5, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Gassy", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(723.5, 238.100006, 1205.5, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Bar", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1491.40002, 259.798401, 2170.90015, 0, 0, 1, 0, 1, -0, -1, 0, 0))
    end)
Section:NewButton("Krizma", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1066, 282.5, 1624.5, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Flail", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1110.40015, 216.498383, 3367.90015, -1, 0, 0, 0, 1, 0, 0, 0, -1))
    end)
Section:NewButton("Castle", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1000.40002, 223.500046, -3338.09985, 0, 0, 1, 0, 1, -0, -1, 0, 0))
    end)
Section:NewButton("Pyramid", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(114.335197, 277.835052, 4950.93066, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247))
    end)
Section:NewButton("Fishing", "", function()
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1700.47021, 215.498383, -325.746338, -0.258864403, 0, 0.965913713, 0, 1, 0, -0.965913713, 0, -0.258864403))
    end)
Section:NewButton("FishSell", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1982.74561, 217.998383, 564.403625, 0.965929627, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, 0.965929627))
    end)
Section:NewButton("Chiff", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(4603, 203, 4913, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Mountain", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2054, 487, -608.5, 0, 0, -1, 0, 1, 0, 1, 0, 0))
    end)
Section:NewButton("Forest", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-6033, 398.5, -7, 0, -1, 0, 1, 0, -0, 0, 0, 1))
    end)
Section:NewButton("Crescent", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(3198, 352.5, 1680, 0, 0, 1, 0, 1, -0, -1, 0, 0))
    end)
Section:NewButton("Purple", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-5078.5, 354.5, -7788, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
Section:NewButton("Snow", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1895.75, 221, 3299.25, 0, 0, 1, 0, 1, -0, -1, 0, 0))
    end)
Section:NewButton("Snow Mountain", "", function()
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(6741.09521, 394.982117, -1716.47095, 0.603998184, -0.0751705617, 0.793432772, 0.219797119, 0.972645164, -0.0751705617, -0.766077936, 0.219797119, 0.603998184))
    end)
Section:NewButton("Kai", "", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1240.9720458984375, 412.9999084472656, 11083.3154296875))
end)


local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Safe Zone")
local NovoBloco = Instance.new("Part", workspace) 
local ts = game:GetService("TweenService") 
NovoBloco.Anchored = true 
NovoBloco.CanCollide = true 
NovoBloco.Size = Vector3.new(200.246, 0.771, 200.852) 
_G.e = se

    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.e then
ts:Create(NovoBloco, TweenInfo.new(0.2), 
		{CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -3.5, 0)}):Play() 
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(5000.5, 45000, 5000, 0, 0, -1, 0, 1, 0, 1, 0, 0))
            end
        end)
       end)
    end)

Section:NewToggle("Auto Tp Safezone", " ", function(se)
	_G.e = se
	end)
Section:NewButton("TP Safezone", "", function()
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(5000.5, 45003, 5000, 0, 0, -1, 0, 1, 0, 1, 0, 0))
	end)

local Section = Tab:NewSection("Players")
Plr = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Plr,v.Name) 
end
local drop = Section:NewDropdown("Player List", "Click To Select", Plr, function(t)
   PlayerTP = t
end)

Section:NewButton("Click To TP", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end)

Section:NewToggle("Auto Tp", "", function(t)
_G.TPPlayer = t
while _G.TPPlayer do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end
end)

Section:NewToggle("Bring Player", "", function(state)
_G.BringPlr = state
while _G.BringPlr do wait()
game.Players[PlayerTP].Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-3)
end
end)

-- SEVER
local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("[Misc]")
Section:NewButton("Rejoin","", function()
  game.Players.LocalPlayer:Kick()
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)

Section:NewButton("RemoteSpy","", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RS/main/SimpleSpyMobile"))()
	end)
Section:NewButton("Noclip","", function()
  local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end
noclip() -- to toggle noclip() and clip()
end)
			
Section:NewButton("BoostFPS","BoostFPS", function()
loadstring(game:HttpGet("https://pastebin.com/raw/8YZ2cc6V"))()
end)
