function module(GS)
	
	--[[ Init Shit ]]--
	local plr = game.Players.LocalPlayer
    local mouse = plr:GetMouse()
    local targetObject = nil
    local enabled = false
	local mult = 1
	local ymult = 1

	--[[ UI Category Init Shit ]]--
	local Category = GS.Buttons.Category.new("Network Owner Mover")
	
	--[[ spaghetti ]]--
	game:GetService("RunService").Heartbeat:Connect(function()
        if enabled and targetObject and not targetObject.Anchored then
            local char = plr.Character
            local v = char:WaitForChild("Humanoid").MoveDirection*char.Humanoid.WalkSpeed
            targetObject.Velocity = Vector3.new(v.X*mult,char.HumanoidRootPart.Velocity.Y*ymult,v.Z*mult)
        end
    end)
	
	--[[ UI Shit ]]--
    local selectedlabel = Category.Buttons:AddLabel("Selected Part","No selected")
	Category.Buttons:AddToggle("Enable",plr.Name,{function(btn)
		enabled = btn.active
	end})
	Category.Buttons:AddButton("Select Part",{function(btn)
		mouse.Button1Down:Wait()
        targetObject = mouse.Target
        selectedlabel:SetText(targetObject.Name)
	end})
	Category.Buttons:AddInput("Multiplier","1",function(btn)
		mult = tonumber(btn.text)
	end)
	Category.Buttons:AddInput("Y Multiplier","1",function(btn)
		ymult = tonumber(btn.text)
	end)
end
return module