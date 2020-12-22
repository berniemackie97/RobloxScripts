local funMod = {}

	function funMod.changeColor(triggerPart)
		triggerPart.BrickColor = BrickColor.new("Really red")
	end

	function funMod.myTouchFunction(triggerPart)
		print("funMod is working!")
		funMod.changeColor(triggerPart)
	end
	
	
return funMod
