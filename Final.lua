local ModuleScreenUI,_ =
(function()
local a={}a["1"]=Instance.new("ScreenGui",game:GetService("CoreGui"))a["1"]["ZIndexBehavior"]=Enum.ZIndexBehavior.Sibling;a["2"]=Instance.new("Frame",a["1"])a["2"]["BorderSizePixel"]=0;a["2"]["BackgroundColor3"]=Color3.fromRGB(255,255,255)a["2"]["BackgroundTransparency"]=1;a["2"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["2"]["Visible"]=false;a["2"]["Name"]=[[Data]]a["3"]=Instance.new("Frame",a["2"])a["3"]["BorderSizePixel"]=0;a["3"]["BackgroundColor3"]=Color3.fromRGB(255,255,255)a["3"]["BackgroundTransparency"]=1;a["3"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["3"]["Visible"]=false;a["3"]["Name"]=[[Templates]]a["4"]=Instance.new("Frame",a["3"])a["4"]["BorderSizePixel"]=0;a["4"]["BackgroundColor3"]=Color3.fromRGB(45,52,96)a["4"]["BackgroundTransparency"]=0.8999999761581421;a["4"]["Size"]=UDim2.new(1,0,0,50)a["4"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["4"]["AutomaticSize"]=Enum.AutomaticSize.Y;a["4"]["Name"]=[[Category]]a["5"]=Instance.new("TextLabel",a["4"])a["5"]["TextWrapped"]=true;a["5"]["BorderSizePixel"]=0;a["5"]["TextScaled"]=true;a["5"]["BackgroundColor3"]=Color3.fromRGB(67,62,122)a["5"]["FontFace"]=Font.new([[rbxasset://fonts/families/FredokaOne.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["5"]["TextSize"]=14;a["5"]["TextColor3"]=Color3.fromRGB(199,207,255)a["5"]["Size"]=UDim2.new(1,0,0,50)a["5"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["5"]["Text"]=[[Main]]a["5"]["Name"]=[[Title]]a["6"]=Instance.new("UICorner",a["5"])a["7"]=Instance.new("UIListLayout",a["4"])a["7"]["HorizontalAlignment"]=Enum.HorizontalAlignment.Center;a["7"]["Padding"]=UDim.new(0,10)a["7"]["SortOrder"]=Enum.SortOrder.LayoutOrder;a["8"]=Instance.new("Frame",a["4"])a["8"]["BorderSizePixel"]=0;a["8"]["BackgroundColor3"]=Color3.fromRGB(0,0,0)a["8"]["AnchorPoint"]=Vector2.new(0.5,1)a["8"]["BackgroundTransparency"]=1;a["8"]["Size"]=UDim2.new(0.8999999761581421,0,0,10)a["8"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["8"]["AutomaticSize"]=Enum.AutomaticSize.Y;a["8"]["Name"]=[[Contents]]a["9"]=Instance.new("UIListLayout",a["8"])a["9"]["HorizontalAlignment"]=Enum.HorizontalAlignment.Center;a["9"]["Padding"]=UDim.new(0,5)a["9"]["SortOrder"]=Enum.SortOrder.LayoutOrder;a["a"]=Instance.new("UICorner",a["4"])a["b"]=Instance.new("TextButton",a["3"])a["b"]["TextWrapped"]=true;a["b"]["BorderSizePixel"]=0;a["b"]["AutoButtonColor"]=false;a["b"]["TextScaled"]=true;a["b"]["BackgroundColor3"]=Color3.fromRGB(90,77,236)a["b"]["TextSize"]=14;a["b"]["FontFace"]=Font.new([[rbxasset://fonts/families/Nunito.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["b"]["TextColor3"]=Color3.fromRGB(0,0,0)a["b"]["Size"]=UDim2.new(1,0,0,50)a["b"]["Name"]=[[Bool]]a["b"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["b"]["BackgroundTransparency"]=0.5;a["c"]=Instance.new("UICorner",a["b"])a["d"]=Instance.new("Frame",a["b"])a["d"]["BorderSizePixel"]=0;a["d"]["BackgroundColor3"]=Color3.fromRGB(61,255,0)a["d"]["BackgroundTransparency"]=0.75;a["d"]["Size"]=UDim2.new(1,0,1,0)a["d"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["d"]["Visible"]=false;a["d"]["Name"]=[[Toggle]]a["e"]=Instance.new("UICorner",a["d"])a["f"]=Instance.new("Frame",a["3"])a["f"]["BorderSizePixel"]=0;a["f"]["BackgroundColor3"]=Color3.fromRGB(0,166,236)a["f"]["BackgroundTransparency"]=0.5;a["f"]["Size"]=UDim2.new(1,0,0,50)a["f"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["f"]["Name"]=[[Input]]a["10"]=Instance.new("TextBox",a["f"])a["10"]["BorderSizePixel"]=0;a["10"]["TextSize"]=14;a["10"]["TextWrapped"]=true;a["10"]["TextScaled"]=true;a["10"]["BackgroundColor3"]=Color3.fromRGB(90,77,236)a["10"]["TextColor3"]=Color3.fromRGB(0,0,0)a["10"]["FontFace"]=Font.new([[rbxasset://fonts/families/Nunito.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["10"]["AnchorPoint"]=Vector2.new(0.5,0.5)a["10"]["BackgroundTransparency"]=0.5;a["10"]["Size"]=UDim2.new(0.9700000286102295,0,0.9700000286102295,0)a["10"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["10"]["Position"]=UDim2.new(0.5,0,0.5,0)a["11"]=Instance.new("UICorner",a["10"])a["12"]=Instance.new("UIAspectRatioConstraint",a["10"])a["12"]["AspectRatio"]=9;a["12"]["AspectType"]=Enum.AspectType.ScaleWithParentSize;a["13"]=Instance.new("UIAspectRatioConstraint",a["f"])a["13"]["AspectRatio"]=7;a["14"]=Instance.new("UICorner",a["f"])a["15"]=Instance.new("TextLabel",a["3"])a["15"]["TextWrapped"]=true;a["15"]["BorderSizePixel"]=0;a["15"]["TextScaled"]=true;a["15"]["BackgroundColor3"]=Color3.fromRGB(42,37,113)a["15"]["FontFace"]=Font.new([[rbxasset://fonts/families/Nunito.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["15"]["TextSize"]=14;a["15"]["TextColor3"]=Color3.fromRGB(200,247,255)a["15"]["Size"]=UDim2.new(1,0,0,50)a["15"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["15"]["Name"]=[[Label]]a["16"]=Instance.new("UICorner",a["15"])a["17"]=Instance.new("BoolValue",a["2"])a["17"]["Name"]=[[UIShown]]a["18"]=Instance.new("Frame",a["1"])a["18"]["BorderSizePixel"]=0;a["18"]["BackgroundColor3"]=Color3.fromRGB(142,113,255)a["18"]["AnchorPoint"]=Vector2.new(0,0.5)a["18"]["Size"]=UDim2.new(0,78,0,78)a["18"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["18"]["Position"]=UDim2.new(0,0,0.5,0)a["18"]["Name"]=[[Button]]a["19"]=Instance.new("UICorner",a["18"])a["1a"]=Instance.new("TextButton",a["18"])a["1a"]["TextWrapped"]=true;a["1a"]["BorderSizePixel"]=0;a["1a"]["AutoButtonColor"]=false;a["1a"]["TextScaled"]=true;a["1a"]["BackgroundColor3"]=Color3.fromRGB(56,239,255)a["1a"]["TextSize"]=14;a["1a"]["FontFace"]=Font.new([[rbxasset://fonts/families/FredokaOne.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["1a"]["TextColor3"]=Color3.fromRGB(0,0,0)a["1a"]["AnchorPoint"]=Vector2.new(0.5,0.5)a["1a"]["Size"]=UDim2.new(0.8999999761581421,0,0.8999999761581421,0)a["1a"]["Name"]=[[Trigger]]a["1a"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["1a"]["Text"]=[[GS]]a["1a"]["Position"]=UDim2.new(0.5,0,0.5,0)a["1b"]=Instance.new("UICorner",a["1a"])a["1c"]=Instance.new("Frame",a["1"])a["1c"]["BorderSizePixel"]=0;a["1c"]["BackgroundColor3"]=Color3.fromRGB(22,23,55)a["1c"]["AnchorPoint"]=Vector2.new(0,0.5)a["1c"]["BackgroundTransparency"]=0.75;a["1c"]["Size"]=UDim2.new(0,400,0,500)a["1c"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["1c"]["Position"]=UDim2.new(0,125,0.5,0)a["1c"]["Name"]=[[Main]]a["1d"]=Instance.new("UICorner",a["1c"])a["1e"]=Instance.new("ScrollingFrame",a["1c"])a["1e"]["Active"]=true;a["1e"]["BorderSizePixel"]=0;a["1e"]["TopImage"]=[[rbxasset://textures/ui/Scroll/scroll-middle.png]]a["1e"]["BackgroundColor3"]=Color3.fromRGB(255,255,255)a["1e"]["AnchorPoint"]=Vector2.new(0.5,1)a["1e"]["BackgroundTransparency"]=1;a["1e"]["Size"]=UDim2.new(0.8999999761581421,0,0.8500000238418579,0)a["1e"]["ScrollBarImageColor3"]=Color3.fromRGB(162,220,255)a["1e"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["1e"]["ScrollBarThickness"]=0;a["1e"]["Position"]=UDim2.new(0.5,0,1,0)a["1e"]["Name"]=[[List]]a["1e"]["BottomImage"]=[[rbxasset://textures/ui/Scroll/scroll-middle.png]]a["1f"]=Instance.new("UIListLayout",a["1e"])a["1f"]["Padding"]=UDim.new(0,40)a["20"]=Instance.new("TextLabel",a["1c"])a["20"]["TextWrapped"]=true;a["20"]["BorderSizePixel"]=0;a["20"]["TextScaled"]=true;a["20"]["BackgroundColor3"]=Color3.fromRGB(255,255,255)a["20"]["FontFace"]=Font.new([[rbxasset://fonts/families/FredokaOne.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["20"]["TextSize"]=14;a["20"]["TextColor3"]=Color3.fromRGB(199,207,255)a["20"]["Size"]=UDim2.new(1,0,0.07199999690055847,0)a["20"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["20"]["Text"]=[[Gusts very Sane scripts]]a["20"]["Name"]=[[Title]]a["20"]["BackgroundTransparency"]=1;a["21"]=Instance.new("TextLabel",a["1c"])a["21"]["TextWrapped"]=true;a["21"]["BorderSizePixel"]=0;a["21"]["TextScaled"]=true;a["21"]["BackgroundColor3"]=Color3.fromRGB(255,255,255)a["21"]["FontFace"]=Font.new([[rbxasset://fonts/families/FredokaOne.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["21"]["TextSize"]=14;a["21"]["TextColor3"]=Color3.fromRGB(134,140,172)a["21"]["Size"]=UDim2.new(1,0,0.02800000086426735,0)a["21"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["21"]["Text"]=[[thought it stood for Gusts Scripts didnt you?]]a["21"]["Name"]=[[Desc]]a["21"]["BackgroundTransparency"]=1;a["21"]["Position"]=UDim2.new(0,0,0.07199999690055847,0)a["22"]=Instance.new("UIStroke",a["1c"])a["22"]["Color"]=Color3.fromRGB(105,88,136)a["22"]["Thickness"]=4;a["22"]["Transparency"]=0.75;a["22"]["ApplyStrokeMode"]=Enum.ApplyStrokeMode.Border;a["23"]=Instance.new("TextLabel",a["1c"])a["23"]["TextWrapped"]=true;a["23"]["BorderSizePixel"]=0;a["23"]["TextScaled"]=true;a["23"]["BackgroundColor3"]=Color3.fromRGB(255,255,255)a["23"]["FontFace"]=Font.new([[rbxasset://fonts/families/FredokaOne.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["23"]["TextSize"]=14;a["23"]["TextColor3"]=Color3.fromRGB(255,0,5)a["23"]["AnchorPoint"]=Vector2.new(0,1)a["23"]["Size"]=UDim2.new(1,0,0.03999999910593033,0)a["23"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["23"]["Text"]=[[**You may need to reset for some of these to work!]]a["23"]["Name"]=[[WarnReset]]a["23"]["BackgroundTransparency"]=1;return a["1"],require
end)();
(function()
local ModuleUI = (function()
local UIModule = {}
local TS = game:GetService("TweenService")
UIModule.UI = ModuleScreenUI
UIModule.UI.ResetOnSpawn = false
local UIShown = UIModule.UI.Data.UIShown


function UIModule.showUI()
	TS:Create(UIModule.UI.Main,TweenInfo.new(0.5,Enum.EasingStyle.Circular,Enum.EasingDirection.Out),{Position = UDim2.new(0, 125,0.5, 0)}):Play()
end

function UIModule.hideUI()
	TS:Create(UIModule.UI.Main,TweenInfo.new(0.5,Enum.EasingStyle.Circular,Enum.EasingDirection.In),{Position = UDim2.new(-1, 0,0.5, 0)}):Play()
end

function UIModule.toggleUI()
	UIShown.Value = not UIShown.Value
	if UIShown.Value then
		UIModule.showUI()
	else
		UIModule.hideUI()
	end
end

return UIModule

end)();
local ModuleButtons = (function()
local Buttons = {}
local UI = ModuleUI
local UI = UI.UI
local templates = UI.Data.Templates

Buttons.Category = {}

function Buttons.Category.new(name)
	local category = {}
	category.instance = templates.Category:Clone()
	
	category.instance.Name = name
	category.instance.Title.Text = name
	category.instance.Parent = UI.Main.List
	
	function category:Destroy()
		category.instance:Destroy()
	end
	
	category.Buttons = {}
	
	function category.Buttons:AddButton(name,callbacks)
		local button = {}
		button.instance = templates.Bool:Clone()

		button.callbacks = callbacks
		button.instance.Name = name
		button.instance.Text = name
		button.instance.LayoutOrder = #category.instance:GetChildren()
		button.instance.MouseButton1Click:Connect(function()
			for _,v in pairs(button.callbacks) do
				spawn(function()
					v(button)
				end)
			end
		end)

		button.instance.Parent = category.instance.Contents
		return button
	end
	
	function category.Buttons:AddLabel(name,text)
		local label = {}
		label.instance = templates.Label:Clone()

		label.instance.Name = name
		label.instance.Text = text
		label.instance.LayoutOrder = #category.instance:GetChildren()

		label.instance.Parent = category.instance.Contents
		function label:SetText(text)
			label.instance.Text = text
		end
		return label
	end
	
	function category.Buttons:AddToggle(name,callbacks)
		local toggle = {}
		toggle.instance = templates.Bool:Clone()

		toggle.active = false

		toggle.callbacks = callbacks
		toggle.instance.Name = name
		toggle.instance.Text = name
		toggle.instance.LayoutOrder = #category.instance:GetChildren()
		toggle.instance.MouseButton1Click:Connect(function()
			toggle.active = not toggle.active
			toggle.instance.Toggle.Visible = toggle.active
			for _,v in pairs(toggle.callbacks) do
				spawn(function()
					v(toggle)
				end)
			end
		end)
		
		toggle.instance.Parent = category.instance.Contents
		return toggle
	end
	
	function category.Buttons:AddInput(name,default,callbacks)
		local input = {}
		input.instance = templates.Input:Clone()

		input.text = default
		input.instance.TextBox.Text = default
		input.instance.TextBox.PlaceholderText = name

		input.callbacks = callbacks
		input.instance.Name = name
		input.instance.LayoutOrder = #category.instance:GetChildren()
		input.instance.TextBox.FocusLost:Connect(function()
			input.text = input.instance.TextBox.Text
			for _,v in pairs(input.callbacks) do
				spawn(function()
					v(input)
				end)
			end
		end)
		
		input.instance.Parent = category.instance.Contents
		return input
	end
	
	return category
end

return Buttons

end)();
local ModuleGvSsMain = (function()
local GS = {}
GS.UI = ModuleUI
GS.Buttons = ModuleButtons

-- most useful script of 2023

return GS
end)();
local GS = ModuleGvSsMain
local UI = GS.UI.UI

UI.Button.Trigger.MouseButton1Click:Connect(GS.UI.toggleUI)
GS.UI.hideUI()

local ModuleCustomScriptFollow = (function()
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
end)();
local ModuleCustomScriptSimpleStuff = (function()
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
end)();
local ModuleCustomScriptVelocityController = (function()
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
end)();
local ModuleCustomScriptAbyssNoFall = (function()
if tostring(game.GameId) == "12151453277" then
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
else
return (function()end)
end
end)();
ModuleCustomScriptFollow(GS)
ModuleCustomScriptSimpleStuff(GS)
ModuleCustomScriptVelocityController(GS)
ModuleCustomScriptAbyssNoFall(GS)

game.Players.LocalPlayer.CharacterAdded:Wait()
UI.Main.WarnReset.Visible = false
end)();