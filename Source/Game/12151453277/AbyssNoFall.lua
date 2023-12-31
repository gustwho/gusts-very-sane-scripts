function module(GS)
	
	--[[ Init Shit ]]--
	local plr = game.Players.LocalPlayer
    local char = plr.Character
    local enabled = false
	
	--[[ UI Category Init Shit ]]--
	local Category = GS.Buttons.Category.new("Abyss")

	--[[ spaghetti ]]--
    game:GetService("RunService").Heartbeat:Connect(function()
        if enabled then
            local h = char.HumanoidRootPart.Velocity
            if h.Y < -50 then
                char.Humanoid:ChangeState(Enum.HumanoidStateType.Climbing)
                char.HumanoidRootPart.Velocity = Vector3.new(h.X,-5,h.Z)
            end
        end
    end)
	
	--[[ UI Shit ]]--
	Category.Buttons:AddToggle("No Fall",{function(btn)
        char = plr.Character
        enabled = btn.active
	end})
end
return module