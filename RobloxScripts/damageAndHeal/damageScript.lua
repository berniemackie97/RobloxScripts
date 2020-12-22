

local lava = script.Parent
local db = true
local damage = 5

lava.Touched:Connect(function(hit)
	local char = hit.Parent
	local hum = char:FindFirstChild("Humanoid")
	
	if hum and db then
		db = false
		hum:TakeDamage(damage)
		wait(1)
		db = true
	end
end)