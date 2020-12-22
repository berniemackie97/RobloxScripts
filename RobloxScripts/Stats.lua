local datastore = game:GetService("DataStoreService"):GetDataStore("Divine")

game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Parent = player
	leaderstats.Name = "leaderstats"

	local cash = Instance.new("NumberValue")
	cash.Parent = leaderstats
	cash.Name = "Cash"
	cash.Value = 0

	local rebirth = Instance.new("NumberValue")
	rebirth.Parent = leaderstats
	rebirth.Name = "Rebirths"
	rebirth.Value = 0

	local level = Instance.new("NumberValue")
	level.Parent = leaderstats
	level.Name = "Level"
	level.Value = 1

	local debounce = Instance.new("BoolValue")
	debounce.Value = false
	debounce.Parent = player
	debounce.Name = "Debounce"

	local key = "user-"..player.UserId

	local storeditems = datastore:GetAsync(key)

	if storeditems then
		cash.Value = storeditems[1]
		rebirth.Value = storeditems[2]
		level.Value = storeditems[3]
	else
		local items = {cash.Value, rebirth.Value, level.Value}

		datastore:SetAsync(key, items)
	end
end)

game.Players.PlayerRemoving:Connect(function(player)
	local items = {player.leaderstats.Cash.Value, player.leaderstats.Rebirth.Value, player.leaderstats.Level.Value}
end)