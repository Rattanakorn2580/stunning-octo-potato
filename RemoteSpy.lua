--[[ SimpleSpy v2.2 SOURCE SimpleSpy is a lightweight penetration testing tool that logs remote calls. 
Credits: exx - basically everything Frosty 
- GUI to Lua ]] --[[ Modification Made By
- REDz ]] -- shuts down the previous instance of SimpleSpy
if _G.SimpleSpyExecuted and type(_G.SimpleSpyShutdown) == "function" then 	
print(pcall(_G.SimpleSpyShutdown)) end 

local Players = game:GetService("Players") 
local CoreGui = game:GetService("CoreGui") 
local Highlight = 	
loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/highlight.lua"))() 
---- GENERATED (kinda sorta mostly) BY GUI to LUA 
---- -- Instances: 
local SimpleSpy2 = Instance.new("ScreenGui") 
local Background = Instance.new("Frame") 
local LeftPanel = Instance.new("Frame") 
local LogList = Instance.new("ScrollingFrame") 
local UIListLayout = Instance.new("UIListLayout") 
local RemoteTemplate = Instance.new("Frame") 
local ColorBar = Instance.new("Frame") 
local Text = Instance.new("TextLabel") 
local Button = Instance.new("TextButton") 
local RightPanel = Instance.new("Frame") 
local CodeBox = Instance.new("Frame") 
local ScrollingFrame = Instance.new("ScrollingFrame") 
local UIGridLayout = Instance.new("UIGridLayout") 
local FunctionTemplate = Instance.new("Frame") 
local ColorBar_2 = Instance.new("Frame") 
local Text_2 = Instance.new("TextLabel") 
local Button_2 = Instance.new("TextButton") 
local TopBar = Instance.new("Frame") 
local Simple = Instance.new("TextButton") 
local CloseButton = Instance.new("TextButton") 
local ImageLabel = Instance.new("ImageLabel") 
local MaximizeButton = Instance.new("TextButton") 
local ImageLabel_2 = Instance.new("ImageLabel") 
local MinimizeButton = Instance.new("TextButton") 
local ImageLabel_3 = Instance.new("ImageLabel") 
local ToolTip = Instance.new("Frame") 
local TextLabel = Instance.new("TextLabel") 
local gui = Instance.new("ScreenGui",Background) 
local nextb = Instance.new("ImageButton", gui) 
local gui = Instance.new("UICorner", nextb) 

--Properties: 
SimpleSpy2.Name = "SimpleSpy2" 
SimpleSpy2.ResetOnSpawn = false 
local SpyFin
end 
end)
