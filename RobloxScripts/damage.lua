local boulder = script.Parent

local function onTouch(otherPart)
	local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
	
	if humanoid then
		humanoid:TakeDamage(20)
	end
end

boulder.Touched:Connect(onTouch)
