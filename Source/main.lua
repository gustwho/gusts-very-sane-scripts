local GS = require(script.Parent.GvSsMain)
local UI = GS.UI.UI

UI.Button.Trigger.MouseButton1Click:Connect(GS.UI.toggleUI)
GS.UI.hideUI()

--[[ insert fuckery fuck here ]]--

game.Players.LocalPlayer.CharacterAdded:Wait()
UI.Main.WarnReset.Visible = false