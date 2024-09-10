_G.Fruity = ft
while _G.Fruity do wait()
if not fruit:WaitForChild("Handle", 1) then return end
	local gui = Instance.new("BillboardGui", fruit.Handle)
	gui.AlwaysOnTop = true
	gui.Size = UDim2.new(0, 60, 0, 20)
	gui.Enabled = true
	local text = Instance.new("TextLabel", gui)
	text.Size = UDim2.new(1, 0, 1, 0)
	text.BackgroundColor3 = Color3.new(255, 255, 255)
	text.TextScaled = true
	text.Text = fruit.Name
end
 
function isFruit(tool)
	if string.find(tool.Name, "Fruit") then
		return true
	end
	return false
end
 
for k, v in pairs(workspace:GetChildren()) do
	if v.ClassName == "Tool" and isFruit(v) then
		hook(v)
	end
end
 
workspace.ChildAdded:Connect(function(child)
	if child.ClassName == "Tool" and isFruit(child) then
		hook(child)
	end
end)
