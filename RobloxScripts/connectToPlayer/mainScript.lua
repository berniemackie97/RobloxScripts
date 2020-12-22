
game.Players.PlayerAdded:Connect(function(player)
	print(player.Name.." player has joined the game")

	player.CharacterAdded:Connect(function(character)
		print(character.Name.." character has joined the game")
		
	end)
end)
