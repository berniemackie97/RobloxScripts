local pickup = script.Parent

local function onTouch(otherPart)
	-- looks for a humanoid if there is one
	local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
	-- ~= is not equals in lua garbage language
	if humanoid ~= nil then
		if humanoid.Health < humanoid.MaxHealth then
			humanoid.Health = humanoid.MaxHealth
			
			--only if you want object to disapear 
			--pickup:Destroy()
		end
	end
end

pickup.Touched:Connect(onTouch)