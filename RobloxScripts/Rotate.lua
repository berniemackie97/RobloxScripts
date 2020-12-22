local coin = script.Parent

local function rotate()
	while true do
		coin.Orientation = coin.Orientation + Vector3.new(0, 10, 0)
		wait(0.03)
	end
end

rotate()