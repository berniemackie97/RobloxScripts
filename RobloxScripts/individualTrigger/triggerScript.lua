

local trigger = script.Parent
local db = true

trigger.Touched:Connect(function(hit)
	local char = hit.Parent
	local hum = char:FindFirstChild("Humanoid")
	
	if hum and db then
		db = false
		print(char.Name.." touched the tile")
		
	end
		wait(2)
		db = true
end)