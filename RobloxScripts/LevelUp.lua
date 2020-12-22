local DS        = game:GetService("DataStoreService")-- Creating DataStores To Save Your Data
local LevelSave = DS:GetDataStore("LevelSaveSystem") --
local XPSave    = DS:GetDataStore("XPSaveSystem")    --
local GoldSave  = DS:GetDataStore("GoldSaveSystem")  --

game.Players.PlayerAdded:Connect(function(Player)				  -- When A Player Joins
	local Folder   = Instance.new("Folder",Player)				  -- New Folder Inside Player Called  "leaderstats"
	Folder.Name    = "leaderstats"                				  -- 

	local Level    = Instance.new("DoubleConstrainedValue",Folder)-- Making A Value Inside The Player Named "Level"
	Level.Name     = "Level"                                      --file:///C:/Users/19415/Documents/robloxgames/assets/Stats.lua
	Level.MaxValue = 100										  -- Max Level
	Level.MinValue = 1											  --
	Level.Value    = LevelSave:GetAsync(Player.UserId) or 1 	  --
	Level.Changed:Connect(function()							  -- If The Player Levels Up, This Saves Their Level
		LevelSave:SetAsync(Player.UserId, Level.Value)			  -- 
	end)														  --	

	local XP       = Instance.new("IntValue",Folder)              -- Making A Value Inside The Player Named "XP"
	XP.Name        = "XP"										  --
	XP.Value       = XPSave:GetAsync(Player.UserId) or 0          --
	XP.Changed:Connect(function()								  -- Saves Their XP If They Earn Any
		XPSave:SetAsync(Player.UserId, XP.Value)				  --
	end)														  --

	local Gold     = Instance.new("IntValue",Folder)			  -- Making A Value Inside The Player Named "Gold"
	Gold.Name      = "Gold"										  --
	Gold.Value     = GoldSave:GetAsync(Player.UserId) or 0		  --
	Gold.Changed:Connect(function()								  -- Saves Their Gold If They Earn Any			
		GoldSave:SetAsync(Player.UserId, Gold.Value)			  --
	end)														  --

	local function LevelUP()											  -- Level Up Function
		if Level.Value == Level.MaxValue then return end				  -- If the Player Is Already At Max Level Then It Will Ignore		
		if XP.Value >= Level.Value*10 then								  -- If The Player Gains Enough XP To Level Up Then (Change 10 to how much you want the XP needed to go up by)

			local Humanoid     = Player.Character:WaitForChild("Humanoid")-- Getting The Players Humanoid
			-- What Happens When The Player Levels Up
			XP.Value 		   = XP.Value - Level.Value*10				  -- Making The XP Rollover To The Next Level	
			Level.Value 	   = Level.Value + 1						  -- Making The Player Actually Gain A Level
			Humanoid.MaxHealth = Humanoid.MaxHealth + 10				  -- Giving the Player Health
			Humanoid.Health    = Humanoid.MaxHealth						  -- Healing The Player		
		end
	end
	Level.Changed:Connect(function()wait() LevelUP()end)-- If The Level Changes It Will Call The LevelUp Function
	XP.Changed:Connect(function()wait() LevelUP()end)   -- If The XP Changes It Will Call The LevelUp Function
end)

game.Players.PlayerRemoving:Connect(function(Player)				 -- When A Player Leaves
	LevelSave:SetAsync(Player.UserId, Player.leaderstats.Level.Value)-- Saving Their Level Value
	XPSave:SetAsync(Player.UserId, Player.leaderstats.XP.Value)      -- Saving Their XP Value
	GoldSave:SetAsync(Player.UserId, Player.leaderstats.Gold.Value)  -- Saving Their Gold Value
end)									