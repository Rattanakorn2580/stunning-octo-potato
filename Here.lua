local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("OPL Hub", "DarkTheme")

local UserInputService = game:GetService("UserInputService") 
local TweenService = game:GetService("TweenService") 
local RunService = game:GetService("RunService") 
local LocalPlayer = game:GetService("Players").LocalPlayer 
local Mouse = LocalPlayer:GetMouse() 
local CloseBind = Enum.KeyCode.RightControl
