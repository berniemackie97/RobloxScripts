local led = script.Parent.LED
local mine = script.Parent.Mine
local canExplode = true

local function onTouch(otherPart)
	local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
	if humanoid and canExplode then
		canExplode = false
		local boom = Instance.new("Explosion", mine)
		boom.Position = mine.Position
		boom.BlastPressure = 500000
		boom.BlastRadius = 4
		boom.ExplosionType = Enum.ExplosionType.NoCraters
		mine.Transparency = 1
		mine.CanCollide = false
		led.Transparency = 1
		led.CanCollide = false
	end
end

mine.Touched:Connect(onTouch)