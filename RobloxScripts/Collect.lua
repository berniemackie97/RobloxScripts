local coin = script.Parent

local function onCollect(otherPart)
	local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
	
	if humanoid then
		local player = game.Players:GetPlayerFromCharacter(otherPart.Parent)
		if player then
			local points = player.Leaderstats("Points")
			points.Value = points.Value + 1
			humanoid.JumpPower = 100
			humanoid.WalkSpeed = 50
			coin:Destroy()
		end
	end
end

coin.Touched:Connect(onCollect)