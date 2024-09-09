_G.Fruity = ft

local plr=game:GetService'Players'.LocalPlayer 

	local dftofind='Apple'
	while _G.Fruity do wait()
	if _G.Fruity then
	local char=plr.Character or plr.CharacterAdded:Wait() 
	local HRP=char:WaitForChild'HumanoidRootPart' 
	for i,v in next, workspace:GetChildren() do 
	local Handle=v:FindFirstChild'Handle' 
	if v:IsA'Tool' and string.find(v.Name:lower(), dftofind:lower()) and Handle then 
	Handle.CFrame=HRP.CFrame 
	end 
	end
	end 
