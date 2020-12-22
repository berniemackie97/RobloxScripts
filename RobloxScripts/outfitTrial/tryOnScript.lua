

local trigger = script.Parent
local db = true
local shirtTemp = script.Parent.shirt
local pantsTemp = script.Parent.pants
local originalShirt = nil
local originalPants = nil

trigger.Touched:Connect(function(hit)
	local char = hit.Parent
	local hum = char:FindFirstChild("Humanoid")
	
	if hum and db then
		db = false
		originalShirt = char:FindFirstChild("Shirt").ShirtTemplate
		originalPants = char:FindFirstChild("Pants").PantsTemplate
		
		char.Shirt.ShirtTemplate = shirtTemp.ShirtTemplate
		char.Pants.PantsTemplate = pantsTemp.PantsTemplate
		wait(5)
		char.Shirt.ShirtTemplate = originalShirt
		char.Pants.PantsTemplate = originalPants
		
		db = true
	end
end)
