local minsAfter = 12 * 60

while wait(.01)do
	game.Lighting:SetMinutesAfterMidnight(minsAfter)
	minsAfter = minsAfter + 1
end
