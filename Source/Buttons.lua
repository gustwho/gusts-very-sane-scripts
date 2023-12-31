local Buttons = {}
local UI = require(script.Parent.UI)
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
