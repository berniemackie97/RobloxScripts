local boulder = script.Parent.Boulder
local stopper = script.Parent.Stopper
local catch = script.Parent.CatchPlate

local pos = boulder.Position

local function onTouch(otherPart)
	if otherPart.Name == boulder.Name then
		stopper.CanCollide = true
		stopper.Transparency = 0
		boulder.Position = pos
		boulder.Velocity = Vector3.new(0, 0, 0)
		boulder.RotVelocity = Vector3.new(0, 0, 0)
	end
end

catch.Touched:Connect(onTouch)
