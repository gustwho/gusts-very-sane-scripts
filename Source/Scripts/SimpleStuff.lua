function module(GS)
	
	--[[ Init Shit ]]--
	local plr = game.Players.LocalPlayer
	
	--[[ UI Category Init Shit ]]--
	local Category = GS.Buttons.Category.new("Simple")
	
	--[[ spaghetti ]]--

	
	--[[ UI Shit ]]--
	Category.Buttons:AddButton("Platform Stand",{function(btn)
		plr.Character.Humanoid.PlatformStand = not plr.Character.Humanoid.PlatformStand
	end})
	Category.Buttons:AddButton("Sit",{function(btn)
		plr.Character.Humanoid.Sit = not plr.Character.Humanoid.Sit
	end})
	Category.Buttons:AddButton("Freeze",{function(btn)
		plr.Character.HumanoidRootPart.Anchored = not plr.Character.Humanoid.Anchored
	end})
end
return module