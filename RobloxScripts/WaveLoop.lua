local mgr = require(game.ServerScriptService.GameManager)
local numOfZombies = 5
local zombieCnt = 0

while true do
	mgr:placeCoins()
	mgr:placeHealth()
	if zombieCnt == 0 then
		wait(1)
		mgr:placeMines()
		mgr:startWave()
		wait(1)
		mgr:spawnZombies(numOfZombies)
	end	
	zombieCnt = mgr:countZombies()
	wait(1)
end