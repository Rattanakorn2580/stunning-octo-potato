local OrionLib = loadstring(game:HttpGet(('https://[Log in to view URL]')))()
local Window = OrionLib:MakeWindow({Name = "key system Ultron", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

loadstring(game:HttpGet("https://[Log in to view URL]"))()

getgenv().KeyInput = "string"

function Destroy()
    game:GetService("CoreGui").Orion:Destroy()
end

function CheckKey()
    if sf_key == KeyInput then
        Destroy()
       local OrionLib = loadstring(game:HttpGet(('https://[Log in to view URL]')))()
       local Window = OrionLib:MakeWindow({Name = "key system Ultron", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
    end
end

local Tab = Window:MakeTab({
    Name, = "Key",
    Icon = "rbxassetid://4483345998"
    PremiumOnly = flase
    })

Tab:AddTextbox({
    Name = "Enter Text"
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        KeyInput = Value
        end
})

Tab:AddButton({ 	
    Name = "Enable", 	
    Callback = function() 		
        CheckKey()	
        end 
})
