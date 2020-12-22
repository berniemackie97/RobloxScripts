local gMgr = {}
local debris = game:GetService("Debris")

function gMgr:placeHealth()
	local pickup = workspace.Health:GetChildren()
	if #pickup < 5 then
		local tHealth = game:GetService("ServerStorage")["HealthPickup"]
		local xRnd = math.random(-250, 250)
		local zRnd = math.random(-250, 250)
		local pos = Vector3.new(xRnd, 6, zRnd)
		local health = tHealth:Clone()
		health.Parent = workspace.Health
		health.Position = pos
		debris:AddItem(health, 300)
	end
end

function gMgr:countZombies()
	local zombieTbl = workspace.Zombies:GetChildren()
	local cnt = #zombieTbl
	for i=1, cnt, 1 do
		local zom = zombieTbl[i]
		local parts = zom:GetChildren()
		local partsExpected = zom.numOfParts.Value
		if parts < partsExpected then
			zom:Destroy()
		end
	end
	return cnt
end


function gMgr:placeMines()
	local tMine = game:GetService("ServerStorage")["Landmine"]
	local centerPos = workspace.Sign.Post.Position
	for i=1, 20, 1 do
		local xRnd = math.random(-50, 50)
		local zRnd = math.random(-50, 50)
		local pos = Vector3.new(centerPos.X + xRnd, 3, centerPos.Z + zRnd)
		local mine = tMine:Clone()
		mine.Parent = workspace.Mines
		mine:MoveTo(pos)
		debris:AddItem(mine, 300)
	end
end

local function waveIncrement()
	local players = game:GetService("Players"):GetPlayers()
	for i=1, #players, 1 do
		local waves = players[i].leaderstats("Waves")
		waves.Value = waves.Value +1
	end
end

function gMgr:startWave()
	print("Wave Starting")
end

function gMgr:spawnZombies(numOfZombies)
	local tZom = game:GetService("ServerStorage")["Drooling Zombie"]
	local spawnArr = workspace.SpawnLocs:GetChildren()
	for i=1, numOfZombies, 1 do
		local zombie = tZom:Clone()
		zombie.Parent = workspace.Zombie
		local loc = math.random(1, #spawnArr)
		zombie.HumanoidRootPart.CFrame = spawnArr[loc].CFrame
		local numOfParts = Instance.new("IntValue", zombie)
		numOfParts.Name = "numOfParts"
		numOfParts.Value = #zombie:GetChildren()
		wait(.5)
	end
end

return gMgr
