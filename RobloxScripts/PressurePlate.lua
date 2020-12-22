local plate = script.Parent.PressurePlate
local stopper = script.Parent.Stopper

local function onTouch(otherPart)
	if otherPart.Name ~= "Terrain" then
		stopper.Transparency = 1
		stopper.CanCollide = false
	end
end

plate.Touched:Connect(onTouch)