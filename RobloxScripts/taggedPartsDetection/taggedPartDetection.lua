
local collectionService = game:GetService("CollectionService")
local taggedParts = collectionService:GetTagged("steps")

for _, tp in pairs(taggedParts)do
	local tile = tp
	local db = true
	
	tile.Touched:Connect(function(hit)
		local char = hit.Parent
		local hum = char:FindFirstChild("Humanoid")
		
		if hum and db then
			db = false
			print("Tile was touched")
			
		end
		wait(2)
		db = true
	end)
end
