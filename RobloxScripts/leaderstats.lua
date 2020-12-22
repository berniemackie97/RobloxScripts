local function addLeaderBoard(player)
	local brd = Instance.new("Model", player)
	brd.Name = "leaderstats"

	local points = instance.new("IntValue", brd)
	points.Name = "Points"
	points.Value = 0

	local waves = instance.new("IntValue", brd)
	waves.Name = "Waves"
	waves.Value = 0
end

game.Players.PlayerAdded:Connect(addLeaderBoard)