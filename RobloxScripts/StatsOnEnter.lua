game.Players.PlayerAdded:Connect(function(Player)                  -- When A Player Joins
	Player.CharacterAdded:Connect(function(Character)			   -- When The Players Character Joins
		local Stats            = Player:WaitForChild("leaderstats")-- Waits for Their leaderstats
		local Level            = Stats:WaitForChild("Level")	   -- Waits For Their Level
		local Humanoid         = Character:WaitForChild("Humanoid")-- Getting Their Humanoid
 
		Humanoid.MaxHealth     = (Level.Value*10)+100			   -- Making Their Health Match Their Level (10 is what their health goes up by per level, 100 is the default)
		Humanoid.Health 	   = Humanoid.MaxHealth				   -- Giving Them Full Health When They Join
	end)														   --
end)	