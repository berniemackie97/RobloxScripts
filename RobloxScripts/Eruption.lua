local lava = script.Parent
local pos = lava.Position
local size = lava.Size

local function eruption()
	for i=1, 80, 1 do 
		lava.Size = lava.Size + Vector3.new(.03, 5, 5)
		wait(.1)
	end
end

local function drain()
	for i=1, 80, 1 do 
		lava.Position = lava.Position + Vector3.new(0, -0.031, 0)
		wait(.1)
	end
	lava.Position = pos
	lava.Size = size
end

while true do
	local rnd = math.random(60, 300)
	print("lava eruption in: ", rnd)
	wait(rnd)
	eruption()
	wait(1)
	drain()
end


