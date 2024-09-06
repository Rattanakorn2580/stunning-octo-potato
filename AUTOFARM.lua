local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib(" ", "LightTheme")

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
Toggle.Text = "Turn/Off2" 
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248) 
Toggle.TextSize = 28.000 
Toggle.Draggable = true 
Toggle.MouseButton1Click:connect(function() 
Library:ToggleUI() 
end)

--AUTOFARM
local Tab = Window:NewTab(" ")
local Section = Tab:NewSection("Select Mob")
Section:NewToggle("Lv2 Angry Bob", " ", function(statl) 
        _G.AutoFarmL = statl
        end)
MON = "Lv2 Angry Bob"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmLV then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MON].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv22 Angry Bobby", " ", function(stats) 
        _G.AutoFarmS = stats
        end)
MONS = "Lv22 Angry Bobby"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmS then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONS].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv24 Angry Bobbi", " ", function(statr) 
        _G.AutoFarmL = statr
        end)
MOND = "Lv24 Angry Bobbi"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmL then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MOND].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv29 Angry Bobber", " ", function(statu) 
        _G.AutoFarmA = statu
        end)
MONA = "Lv29 Angry Bobber"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmA then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONA].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv35 Angry Bobb", " ", function(statp) 
        _G.AutoFarmB = statp
        end)
MONBB = "Lv35 Angry Bobb"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmB then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONB].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv1 Crab", " ", function(stati) 
        _G.AutoFarmI = stati
        end)
MONI = "Lv1 Crab"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmI then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONI].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv3 Crab", " ", function(statq) 
        _G.AutoFarmQ = statq
        end)
MONQ = "Lv3 Crab"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmQ then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONQ].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv4 Crab", " ", function(statw) 
        _G.AutoFarmW = statw
        end)
MONE = "Lv4 Crab"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmW then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONE].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv5 Crab", " ", function(stato) 
        _G.AutoFarmE = stato
        end)
MONO = "Lv5 Crab"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmE then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONO].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv9 Bandit", " ", function(statx) 
        _G.AutoFarmX = statx
        end)
MONX = "Lv9 Bandit"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmX then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONX].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv14 Bandit", " ", function(statu) 
        _G.AutoFarmU = statu
        end)
MONU = "Lv14 Bandit"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmU then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONU].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv15 Bandit", " ", function(statd) 
        _G.AutoFarmD = statd
        end)
MONZ = "Lv15 Bandit"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmD then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONZ].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv4 Boar", " ", function(statg) 
        _G.AutoFarmG = statg
        end)
MONG = "Lv4 Boar"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmG then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONG].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv11 Boar", " ", function(statj) 
        _G.AutoFarmJ = statj
        end)
MONJ = "Lv11 Boar"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmJ then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONJ].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv12 Boar", " ", function(statc) 
        _G.AutoFarmC = statc
        end)
MONC = "Lv12 Boar"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmC then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONC].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv14 Boar", " ", function(statv) 
        _G.AutoFarmV = statv
        end)
MONV = "Lv14 Boar"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmV then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONV].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv15 Boar", " ", function(statt) 
        _G.AutoFarmT = statt
        end)
MONT = "Lv15 Boar"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmT then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONT].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)

Section:NewToggle("Lv16 Boar", " ", function(statm) 
        _G.AutoFarmM = statm
        end)
MONM = "Lv16 Boar"
 
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.AutoFarmM then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[MONM].HumanoidRootPart.CFrame * CFrame.new(0,0,3)
            end
        end)
       end)
    end)
