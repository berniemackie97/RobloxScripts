Time = game:service("Lighting")

while true do
	wait(8.00)
	Time:SetMinutesAfterMidnight(Time:GetMinutesAfterMidnight()+8.00)
end
