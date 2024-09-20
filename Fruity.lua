-- RYWARE HUB KEY SYSTEM ORION LIBRARY --
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer

-- Test Main Window
local MainWindow = OrionLib:MakeWindow({
    Name = "Key System",
    HidePremium = false,
    SaveConfig = true,
    IntroEnabled = false
})

OrionLib:MakeNotification({
    Name = "Welcome To OPlium Hub!",
    Content = "You Are Logged In As "..Player.Name..".",
    Image = "rbxassetid://4483345998",
    Time = 5
})

-- Test Global Variables
_G.Key = "KEY_7090wert5759ops123"
_G.KeyInput = ""

local function LoadTestHub()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Rattanakorn2580/stunning-octo-potato/refs/heads/main/OpliumHubOfficial%20.lua"))()
end

-- Notifications
local function ShowCorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "Loading OPlium Hub...",
        Image = "rbxassetid://4483345998",
        Time = 2
    })
end

local function ShowIncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "Enter The Correct Key.",
        Image = "rbxassetid://4483345998",
        Time = 2
    })
end

-- Key System
local KeySystemTab = MainWindow:MakeTab({
    Name = "Key System",
    Icon = "rbxassetid://2790551206",
    PremiumOnly = false
})

KeySystemTab:AddTextbox({
    Name = "Enter Key Here!",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        _G.KeyInput = Value
    end    
})

KeySystemTab:AddButton({
    Name = "Check Key!",
    Callback = function()
        if _G.KeyInput == _G.Key then
            ShowCorrectKeyNotification()
            wait(2)
            LoadTestHub()
        else
            ShowIncorrectKeyNotification()
        end
    end    
})
