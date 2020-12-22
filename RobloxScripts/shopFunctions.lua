local buybtn = script.Parent.BuyBtn
local closeBtn = script.Parent.CloseBtn
local itemBtn = script.Parent.itemBtn
local shopFrm = script.Parent
local item = nil
local price = nil
local rs = game:GetService("ReplicatedStorage")
local re = rs:WaitForChild("Equip")

local function clearSelection()
	itemBtn.BackgroundColor3 = Color3.new(1, 1, 1)
end

local function selectItem()
	clearSelection()
	item = "Name of item from workspace"
	price = 100
	itemBtn.BackgroundColor3 = Color3.new(.5, .5, 1)
end

local function buyItem()
	if item and price then
		local player = game:GetService("Players").LocalPlayer
		local points = player.leaderstats["Points"]
		if points.Value >= price then
			--remote to buy and equip
			re:FireServer(item, price)
			item = nil
			price = nil
			clearSelection()
		end
	end
end

local function CloseShop()
	shopFrm:TweenPosition(UDim2.new(.5, 0, -.5, 0), "Out", "Linear", 1, true)
end

itemBtn.Activated:Conect(selectItem)
buybtn.Activated.Connect(buyItem)
closeBtn.Activated:Connect(CloseShop)