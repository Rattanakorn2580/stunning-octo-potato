local SafeZoneUnderSea = Instance.new("Part",game.Workspace)
    SafeZoneUnderSea.Name = "SafeZoneUnderSeaPart"
    SafeZoneUnderSea.Size = Vector3.new(200,3,200)
    SafeZoneUnderSea.Position = Vector3.new((math.random(-5000, 5000)), -491, (math.random(-5000, 5000)))
    SafeZoneUnderSea.Anchored = true

local SafeZoneOuterSpace = Instance.new("Part",game.Workspace)
    SafeZoneOuterSpace.Name = "SafeZoneOuterSpacePart"
    SafeZoneOuterSpace.Size = Vector3.new(200,3,200)
    SafeZoneOuterSpace.Position = Vector3.new((math.random(-1000000, 1000000)), (math.random(10000, 50000)), (math.random(-1000000, 1000000)))
    SafeZoneOuterSpace.Anchored = true

spawn(function() -- autofarm velocity
    while wait(0) do
        pcall(function()
            if AutoFarmM  or KillPlayer or AutoPackage or AutoFish or FarmB then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
            elseif  AutoFarmM == false or KillPlayer == false or AutoPackage == false or AutoFish == false FarmB == false then
                --if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
                wait(1)
                --end
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            end
        end)
    end
end);

        local DarkraiX = loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Kavo-Ui/main/Darkrai%20Ui", true))()

local Library = DarkraiX:Window("lnWZa X","","",Enum.KeyCode.RightControl);

--[[
DarkraiX:Window(
1 = Name Of Your Ui Library (string)
2 = Game Name (You Can Keep This Empty To Get The Current Game Name!) (string)
3 = A Logo If You Have One! (string)
4 = Ui Library Toggle (I'll Not Prefer Touching It) (function)
);
]]

Tab1 = Library:Tab("Autos")

Tab1:Toggle("Auto Fishing",false,function(va)
AutoFish = va
    end)

Tab1:Slider("Slider",1,100,25,function(value)
        print(value)
    end)

--[[
Tab1:Slider(
1 = Name (string)
2 = Minimum (number)
3 = Maximum (number)
4 = Currently How Much (number)
)
]]

Tab1:Dropdown("Dropdown",{"yo","sus","pro"},function(value)
            print(value)
end)

--[[
Tab1:Dropdown(
1 = Name (string)
2 = Options (table)
)
]]

Tab1:Textbox("Textbox","",true,function(value)
print(value)
end)

--[[
Tab1:Textbox(
1 = Name (string)
2 = Current Text (string)
3 = State (bool)
4 = callback (function)
)
]]


Tab1:Seperator("Seperator")

--[[
Tab1:Seperator(
1 = Name (string)
)
--]]
Tab1:Line()
