local pada = script.Parent.PadA
local padb = script.Parent.PadB
local top = script.Parent.Top
local canTeleport = true
local snd = Instance.new("Sound", pada)
snd.SoundId = "rbxassetid://945522727"

local function fromPadAtoPadB(otherPart)
	local humRootPart = otherPart.Parent:FindFirstChild("HumanoidRootPart")
	
	if humRootPart then
		local player = game.Players:GetPlayerFromCharacter(otherPart.Parent)
		if player and canTeleport then
			canTeleport = false
			snd:Play()
			wait(snd.TimeLength * 0.9)
			humRootPart.CFrame = CFrame.new(padb.Position) + Vector3.new(0, 1, 0)
			pada.Material = Enum.Material.Plastic
			top.Material = Enum.Material.Plastic
			pada.BrickColor = BrickColor.Gray()
			top.BrickColor = BrickColor.Gray()
			wait(10)
			canTeleport = true
			pada.Material = Enum.Material.Neon
			top.Material = Enum.Material.Neon
			pada.BrickColor = BrickColor.new("Lime green")
			top.BrickColor = BrickColor.new("Lime green")
		end
	end
	
end

pada.Touched:Connect(fromPadAtoPadB)