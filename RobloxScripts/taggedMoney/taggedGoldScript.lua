

local CollectionService = game:GetService("CollectionService")
local taggedMoney = CollectionService:GetTagged("Money")

for _,tp in pairs(taggedMoney)do
	local db = true
	tp.Touched:Connect(function(hit)
		local char = hit.Parent
		local hum = char:FindFirstChild("Humanoid")
		
		if hum and db then
			db =false
			local player = game.Players:FindFirstChild(char.Name)
			local pStats = player:WaitForChild("leaderstats")
			local pGold = pStats:FindFirstChild("Gold")
			
			pGold.Value = pGold.Value + 10
			tp:Destroy()
			wait(2)
			db = true
		end
	end)
	
end
