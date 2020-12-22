

game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		local leaderstats = Instance.new("Folder",player)
		leaderstats.Name = "leaderstats"

		local playerMoney = Instance.new("IntValue",leaderstats)
		playerMoney.Name = "Money"
		playerMoney.Value = 0

		local playerLevel = Instance.new("IntValue",leaderstats)
		playerLevel.Name = "Level"
		playerLevel.Value = 1

		local playerExp = Instance.new("IntValue",leaderstats)
		playerExp.Name = "PlayerXP"
		playerExp.Value = 0

		local playerHealth = Instance.new("IntValue",leaderstats)
		playerHealth.Name = "Health"
		playerHealth.Value = character.Humanoid.Health

		character.Humanoid.HealthChanged:Connect(function()
			playerHealth.Value = math.floor(character.Humanoid.Health)
		end)
	end)
	
end)


-- how to access the leaderstats from another function

--player.CharacterAdded:Connect(function(character)
--local player = game.Players:FindFirstChild(character.Name)
--local pStats = player:WaitForChild("leaderstats")
--local pMoney = pStats:FindFirstChild("Money")
--local pXP = pStats:FindFirstChild("PlayerXP")

--pMoney.Value = pMoney.Value + 100
--pXP.Value = pXP.Value + 50

--end)