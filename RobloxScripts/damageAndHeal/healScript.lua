local heal = script.Parent
local db = true
local healAmount = 20

heal.Touched:Connect(function(hit)
	local char = hit.Parent
	local hum = char:FindFirstChild("Humanoid")
	
	if hum and db then
		db = false
		hum.Health = hum.Health + healAmount
		wait(1)
		db = true
	end
end)
