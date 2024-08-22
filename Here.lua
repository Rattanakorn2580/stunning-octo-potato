local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Test X", "DarkTheme")

-- AUTO FIND
local Tab = Window:NewTab("Auto Find")
local Section = Tab:NewSection("Auto Find")
Section:NewToggle("ESP","", function(a)
	BringCp = a
	end
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
