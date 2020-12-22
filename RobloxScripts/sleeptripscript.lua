--- A script made by micolord.
--- Instructions: Copy and Paste this Script into the bed foam or what ever like for example brick you wan't
--- Instruction continuation: People to trip/sleep.
--- Note: If you putted this script in a for an example Brick, when you touched it, you'll get auto sleep/Trip.
--- Jump to wake up or to get up.


function onTouch(part) 
	local humanoid = part.Parent:FindFirstChild("Humanoid") 
	if (humanoid ~= nil) then	
		humanoid.Sit = true	
	end 
end

script.Parent.Touched:connect(onTouch)
