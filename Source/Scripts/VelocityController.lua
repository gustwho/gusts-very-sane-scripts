function module(GS)
	
	--[[ Init Shit ]]--
	local plr = game.Players.LocalPlayer
	local UIS = game:GetService("UserInputService")
	local mode = 1
	local spac = false

	local MODES = {
		[0] = "Off",
		[1] = "Legit",
		[2] = "Can't Move This",
		[3] = "Idle Anchor",
		[4] = "Y Controller"
	}
	local newestthing = nil
	
	
	--[[ UI Category Init Shit ]]--
	local Category = GS.Buttons.Category.new("Velocity Controller")
	
	--[[ spaghetti ]]--
	plr.CharacterAdded:Connect(function(char)
		if newestthing ~= nil then
			newestthing:Disconnect()
		end
		newestthing = game:GetService("RunService").Heartbeat:Connect(function()
			if mode == 1 then 
				wait(0.01)
				local target = char:WaitForChild("Humanoid").MoveDirection*char.Humanoid.WalkSpeed
				local old = char:WaitForChild("HumanoidRootPart").Velocity
				char:WaitForChild("HumanoidRootPart").Velocity = Vector3.new(target.X, old.Y, target.Z) 
			elseif mode == 2 then
				local target = char:WaitForChild("Humanoid").MoveDirection*char.Humanoid.WalkSpeed
				local old = char:WaitForChild("HumanoidRootPart").Velocity
				char:WaitForChild("HumanoidRootPart").Velocity = Vector3.new(target.X, old.Y, target.Z) 
			elseif mode == 3 then
				local rmd = Vector3.new(math.round(char:WaitForChild("Humanoid").MoveDirection.X),math.round(char:WaitForChild("Humanoid").MoveDirection.Y),math.round(char:WaitForChild("Humanoid").MoveDirection.Z))
				if rmd*char.Humanoid.WalkSpeed == Vector3.new(0,0,0) then
					char.HumanoidRootPart.Anchored = true
				else
					char.HumanoidRootPart.Anchored = false
				end
				local target = char:WaitForChild("Humanoid").MoveDirection*char.Humanoid.WalkSpeed
				local old = char:WaitForChild("HumanoidRootPart").Velocity
				char:WaitForChild("HumanoidRootPart").Velocity = Vector3.new(target.X, old.Y, target.Z) 
			elseif mode == 4 then

			end
			if spac == true and char:WaitForChild("Humanoid").PlatformStand then
				spac = false
				local eeaa = char:WaitForChild("HumanoidRootPart").Velocity
				char:WaitForChild("HumanoidRootPart").Velocity = Vector3.new(eeaa.X, char.Humanoid.JumpPower, eeaa.Z)
			end
		end)
		
		UIS.JumpRequest:Connect(function()
			print("g")
			spac = true
		end)
	end)
	
	--[[ UI Shit ]]--
	local label = Category.Buttons:AddLabel("Mode","Mode: Dunno")
	Category.Buttons:AddButton("Change Mode",{function(btn)
		mode = mode + 1
		if mode >= #MODES then
			mode = 0
		end
		
		label:SetText("Mode: "..MODES[mode])
	end})
end
return module