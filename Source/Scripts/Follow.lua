function module(GS)
	
	--[[ Init Shit ]]--
	local plr = game.Players.LocalPlayer
	local char = plr.Character
	local follow = game.Players:GetChildren()[1].Character.HumanoidRootPart
	local followpoints = {follow.Position}
	local hb
	local createpointdistance = 3
	local following = false

	local function newFollow()
		follow = nil
		repeat follow = game.Players:GetChildren()[math.random(1,#game.Players:GetChildren())].Character wait(0.1) until follow ~= nil and follow.Name ~= char.Name
		follow = follow.HumanoidRootPart
		follow.AncestryChanged:Connect(newFollow)
	end

	--follow.AncestryChanged:Connect(newFollow)
	
	
	--[[ UI Category Init Shit ]]--
	local FollowCategory = GS.Buttons.Category.new("Follow")
	
	--[[ spaghetti ]]--
	game:GetService("RunService").Heartbeat:Connect(function()
		if following then
			if followpoints[#followpoints] == nil or (followpoints[#followpoints]-follow.Position).Magnitude > createpointdistance then
				table.insert(followpoints,follow.Position)
				print("create")
			end
			if (char.HumanoidRootPart.Position-follow.Position).Magnitude > 10 then
				char.Humanoid.WalkToPoint = followpoints[1]
			end
			if (char.HumanoidRootPart.Position-follow.Position).Magnitude > 20 then
				char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.Position,follow.Position)
				char.HumanoidRootPart.CFrame = CFrame.new(follow.Position,follow.Position+char.HumanoidRootPart.CFrame.LookVector)
				followpoints = {follow.Position}
			end
			if (char.HumanoidRootPart.Position-followpoints[1]).Magnitude < createpointdistance*2 then
				if followpoints[1] and followpoints[2] and followpoints[1].Y-2 < followpoints[2].Y then
					char.Humanoid.Jump = true
				end
				table.remove(followpoints,1)
			end
		end
	end)
	
	--[[ UI Shit ]]--
	FollowCategory.Buttons:AddInput("Username",plr.Name,{function(btn)
		follow = game.Players[btn.text].Character.HumanoidRootPart
	end})
	FollowCategory.Buttons:AddToggle("Follow",{function(btn)
		following = btn.active
		local followpoints = {follow.Position}
	end})
end
return module