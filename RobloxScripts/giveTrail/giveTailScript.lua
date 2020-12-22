
local ServerStorage = game:GetService("ServerStorage")
local trail = ServerStorage:FindFirstChild("Trail")

game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)

		local trailCopy = trail:Clone()
		trail.Parent = character.Head -- or HumanoidRootPart
		local attachment0 = Instance.new("Attachment",character.Head)
		attachment0.Name = "trailAttachment0"
		local attachment1 = Instance.new("Attachment",character.HumanoidRootPart)
		attachment1.Name = "trailAttachment1"
		
		trail.Attachment0 = attachment0
		trail.Attachment1 = attachment1
		
		trail.Enabled = true
	end)	
end)
