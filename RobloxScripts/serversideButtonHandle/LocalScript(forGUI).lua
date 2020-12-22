
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local buttonEvent = ReplicatedStorage:FindFirstChild("buttonEvent")
local myString = "Dogs are cool!"

script.Parent.MouseButton1Click:Connect(function()
	buttonEvent:FireServer(myString)
end)
