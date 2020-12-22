

game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder",player)
	leaderstats.Name = "leaderstats"
	
	local playerGold = Instance.new("IntValue",leaderstats)
	playerGold.Name = "Gold"
	playerGold.Value = 0
	
	local newStat1 = Instance.new("IntValue",leaderstats)
	newStat1.Name = "Stat1"
	newStat1.Value = 0
	
	local newStat2 = Instance.new("IntValue",leaderstats)
	newStat2.Name = "Stat2"
	newStat2.Value = 0
	
	local newStat3 = Instance.new("IntValue",leaderstats)
	newStat3.Name = "Stat3"
	newStat3.Value = 0
	
	local newStat4 = Instance.new("IntValue",leaderstats)
	newStat4.Name = "Stat4"
	newStat4.Value = 0
	
	local newStat5 = Instance.new("IntValue",leaderstats)
	newStat5.Name = "Stat5"
	newStat5.Value = 0

end)
