local att0 = game.Workspace.beamModel.part1.Attachment0
local att1 = game.Workspace.beamModel.part2.Attachment1

local beam = Instance.new("Beam")

beam.Attachment0 = att0
beam.Attachment1 = att1

beam.Parent = att0
beam.Enabled = true
