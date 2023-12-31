local UIModule = {}
local TS = game:GetService("TweenService")
UIModule.UI = script.Parent
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
