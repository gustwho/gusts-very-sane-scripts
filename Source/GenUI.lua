local a={}a["1"]=Instance.new("ScreenGui",game:GetService("RunService"):IsStudio() and game.Players.LocalPlayer.PlayerGui or game:GetService("CoreGui"))a["1"]["ZIndexBehavior"]=Enum.ZIndexBehavior.Sibling;a["2"]=Instance.new("Frame",a["1"])a["2"]["BorderSizePixel"]=0;a["2"]["BackgroundColor3"]=Color3.fromRGB(255,255,255)a["2"]["BackgroundTransparency"]=1;a["2"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["2"]["Visible"]=false;a["2"]["Name"]=[[Data]]a["3"]=Instance.new("Frame",a["2"])a["3"]["BorderSizePixel"]=0;a["3"]["BackgroundColor3"]=Color3.fromRGB(255,255,255)a["3"]["BackgroundTransparency"]=1;a["3"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["3"]["Visible"]=false;a["3"]["Name"]=[[Templates]]a["4"]=Instance.new("Frame",a["3"])a["4"]["BorderSizePixel"]=0;a["4"]["BackgroundColor3"]=Color3.fromRGB(45,52,96)a["4"]["BackgroundTransparency"]=0.8999999761581421;a["4"]["Size"]=UDim2.new(1,0,0,50)a["4"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["4"]["AutomaticSize"]=Enum.AutomaticSize.Y;a["4"]["Name"]=[[Category]]a["5"]=Instance.new("TextLabel",a["4"])a["5"]["TextWrapped"]=true;a["5"]["BorderSizePixel"]=0;a["5"]["TextScaled"]=true;a["5"]["BackgroundColor3"]=Color3.fromRGB(67,62,122)a["5"]["FontFace"]=Font.new([[rbxasset://fonts/families/FredokaOne.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["5"]["TextSize"]=14;a["5"]["TextColor3"]=Color3.fromRGB(199,207,255)a["5"]["Size"]=UDim2.new(1,0,0,50)a["5"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["5"]["Text"]=[[Main]]a["5"]["Name"]=[[Title]]a["6"]=Instance.new("UICorner",a["5"])a["7"]=Instance.new("UIListLayout",a["4"])a["7"]["HorizontalAlignment"]=Enum.HorizontalAlignment.Center;a["7"]["Padding"]=UDim.new(0,10)a["7"]["SortOrder"]=Enum.SortOrder.LayoutOrder;a["8"]=Instance.new("Frame",a["4"])a["8"]["BorderSizePixel"]=0;a["8"]["BackgroundColor3"]=Color3.fromRGB(0,0,0)a["8"]["AnchorPoint"]=Vector2.new(0.5,1)a["8"]["BackgroundTransparency"]=1;a["8"]["Size"]=UDim2.new(0.8999999761581421,0,0,10)a["8"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["8"]["AutomaticSize"]=Enum.AutomaticSize.Y;a["8"]["Name"]=[[Contents]]a["9"]=Instance.new("UIListLayout",a["8"])a["9"]["HorizontalAlignment"]=Enum.HorizontalAlignment.Center;a["9"]["Padding"]=UDim.new(0,5)a["9"]["SortOrder"]=Enum.SortOrder.LayoutOrder;a["a"]=Instance.new("UICorner",a["4"])a["b"]=Instance.new("TextButton",a["3"])a["b"]["TextWrapped"]=true;a["b"]["BorderSizePixel"]=0;a["b"]["AutoButtonColor"]=false;a["b"]["TextScaled"]=true;a["b"]["BackgroundColor3"]=Color3.fromRGB(90,77,236)a["b"]["TextSize"]=14;a["b"]["FontFace"]=Font.new([[rbxasset://fonts/families/Nunito.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["b"]["TextColor3"]=Color3.fromRGB(0,0,0)a["b"]["Size"]=UDim2.new(1,0,0,50)a["b"]["Name"]=[[Bool]]a["b"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["b"]["BackgroundTransparency"]=0.5;a["c"]=Instance.new("UICorner",a["b"])a["d"]=Instance.new("Frame",a["b"])a["d"]["BorderSizePixel"]=0;a["d"]["BackgroundColor3"]=Color3.fromRGB(61,255,0)a["d"]["BackgroundTransparency"]=0.75;a["d"]["Size"]=UDim2.new(1,0,1,0)a["d"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["d"]["Visible"]=false;a["d"]["Name"]=[[Toggle]]a["e"]=Instance.new("UICorner",a["d"])a["f"]=Instance.new("Frame",a["3"])a["f"]["BorderSizePixel"]=0;a["f"]["BackgroundColor3"]=Color3.fromRGB(0,166,236)a["f"]["BackgroundTransparency"]=0.5;a["f"]["Size"]=UDim2.new(1,0,0,50)a["f"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["f"]["Name"]=[[Input]]a["10"]=Instance.new("TextBox",a["f"])a["10"]["BorderSizePixel"]=0;a["10"]["TextSize"]=14;a["10"]["TextWrapped"]=true;a["10"]["TextScaled"]=true;a["10"]["BackgroundColor3"]=Color3.fromRGB(90,77,236)a["10"]["TextColor3"]=Color3.fromRGB(0,0,0)a["10"]["FontFace"]=Font.new([[rbxasset://fonts/families/Nunito.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["10"]["AnchorPoint"]=Vector2.new(0.5,0.5)a["10"]["BackgroundTransparency"]=0.5;a["10"]["Size"]=UDim2.new(0.9700000286102295,0,0.9700000286102295,0)a["10"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["10"]["Position"]=UDim2.new(0.5,0,0.5,0)a["11"]=Instance.new("UICorner",a["10"])a["12"]=Instance.new("UIAspectRatioConstraint",a["10"])a["12"]["AspectRatio"]=9;a["12"]["AspectType"]=Enum.AspectType.ScaleWithParentSize;a["13"]=Instance.new("UIAspectRatioConstraint",a["f"])a["13"]["AspectRatio"]=7;a["14"]=Instance.new("UICorner",a["f"])a["15"]=Instance.new("TextLabel",a["3"])a["15"]["TextWrapped"]=true;a["15"]["BorderSizePixel"]=0;a["15"]["TextScaled"]=true;a["15"]["BackgroundColor3"]=Color3.fromRGB(42,37,113)a["15"]["FontFace"]=Font.new([[rbxasset://fonts/families/Nunito.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["15"]["TextSize"]=14;a["15"]["TextColor3"]=Color3.fromRGB(200,247,255)a["15"]["Size"]=UDim2.new(1,0,0,50)a["15"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["15"]["Name"]=[[Label]]a["16"]=Instance.new("UICorner",a["15"])a["17"]=Instance.new("BoolValue",a["2"])a["17"]["Name"]=[[UIShown]]a["18"]=Instance.new("Frame",a["1"])a["18"]["BorderSizePixel"]=0;a["18"]["BackgroundColor3"]=Color3.fromRGB(142,113,255)a["18"]["AnchorPoint"]=Vector2.new(0,0.5)a["18"]["Size"]=UDim2.new(0,78,0,78)a["18"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["18"]["Position"]=UDim2.new(0,0,0.5,0)a["18"]["Name"]=[[Button]]a["19"]=Instance.new("UICorner",a["18"])a["1a"]=Instance.new("TextButton",a["18"])a["1a"]["TextWrapped"]=true;a["1a"]["BorderSizePixel"]=0;a["1a"]["AutoButtonColor"]=false;a["1a"]["TextScaled"]=true;a["1a"]["BackgroundColor3"]=Color3.fromRGB(56,239,255)a["1a"]["TextSize"]=14;a["1a"]["FontFace"]=Font.new([[rbxasset://fonts/families/FredokaOne.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["1a"]["TextColor3"]=Color3.fromRGB(0,0,0)a["1a"]["AnchorPoint"]=Vector2.new(0.5,0.5)a["1a"]["Size"]=UDim2.new(0.8999999761581421,0,0.8999999761581421,0)a["1a"]["Name"]=[[Trigger]]a["1a"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["1a"]["Text"]=[[GS]]a["1a"]["Position"]=UDim2.new(0.5,0,0.5,0)a["1b"]=Instance.new("UICorner",a["1a"])a["1c"]=Instance.new("Frame",a["1"])a["1c"]["BorderSizePixel"]=0;a["1c"]["BackgroundColor3"]=Color3.fromRGB(22,23,55)a["1c"]["AnchorPoint"]=Vector2.new(0,0.5)a["1c"]["BackgroundTransparency"]=0.75;a["1c"]["Size"]=UDim2.new(0,400,0,500)a["1c"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["1c"]["Position"]=UDim2.new(0,125,0.5,0)a["1c"]["Name"]=[[Main]]a["1d"]=Instance.new("UICorner",a["1c"])a["1e"]=Instance.new("ScrollingFrame",a["1c"])a["1e"]["Active"]=true;a["1e"]["BorderSizePixel"]=0;a["1e"]["TopImage"]=[[rbxasset://textures/ui/Scroll/scroll-middle.png]]a["1e"]["BackgroundColor3"]=Color3.fromRGB(255,255,255)a["1e"]["AnchorPoint"]=Vector2.new(0.5,1)a["1e"]["BackgroundTransparency"]=1;a["1e"]["Size"]=UDim2.new(0.8999999761581421,0,0.8500000238418579,0)a["1e"]["ScrollBarImageColor3"]=Color3.fromRGB(162,220,255)a["1e"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["1e"]["ScrollBarThickness"]=0;a["1e"]["Position"]=UDim2.new(0.5,0,1,0)a["1e"]["Name"]=[[List]]a["1e"]["AutomaticCanvasSize"]=[[Y]]a["1e"]["BottomImage"]=[[rbxasset://textures/ui/Scroll/scroll-middle.png]]a["1f"]=Instance.new("UIListLayout",a["1e"])a["1f"]["Padding"]=UDim.new(0,40)a["20"]=Instance.new("TextLabel",a["1c"])a["20"]["TextWrapped"]=true;a["20"]["BorderSizePixel"]=0;a["20"]["TextScaled"]=true;a["20"]["BackgroundColor3"]=Color3.fromRGB(255,255,255)a["20"]["FontFace"]=Font.new([[rbxasset://fonts/families/FredokaOne.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["20"]["TextSize"]=14;a["20"]["TextColor3"]=Color3.fromRGB(199,207,255)a["20"]["Size"]=UDim2.new(1,0,0.07199999690055847,0)a["20"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["20"]["Text"]=[[Gusts very Sane scripts]]a["20"]["Name"]=[[Title]]a["20"]["BackgroundTransparency"]=1;a["21"]=Instance.new("TextLabel",a["1c"])a["21"]["TextWrapped"]=true;a["21"]["BorderSizePixel"]=0;a["21"]["TextScaled"]=true;a["21"]["BackgroundColor3"]=Color3.fromRGB(255,255,255)a["21"]["FontFace"]=Font.new([[rbxasset://fonts/families/FredokaOne.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["21"]["TextSize"]=14;a["21"]["TextColor3"]=Color3.fromRGB(134,140,172)a["21"]["Size"]=UDim2.new(1,0,0.02800000086426735,0)a["21"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["21"]["Text"]=[[thought it stood for Gusts Scripts didnt you?]]a["21"]["Name"]=[[Desc]]a["21"]["BackgroundTransparency"]=1;a["21"]["Position"]=UDim2.new(0,0,0.07199999690055847,0)a["22"]=Instance.new("UIStroke",a["1c"])a["22"]["Color"]=Color3.fromRGB(105,88,136)a["22"]["Thickness"]=4;a["22"]["Transparency"]=0.75;a["22"]["ApplyStrokeMode"]=Enum.ApplyStrokeMode.Border;a["23"]=Instance.new("TextLabel",a["1c"])a["23"]["TextWrapped"]=true;a["23"]["BorderSizePixel"]=0;a["23"]["TextScaled"]=true;a["23"]["BackgroundColor3"]=Color3.fromRGB(255,255,255)a["23"]["FontFace"]=Font.new([[rbxasset://fonts/families/FredokaOne.json]],Enum.FontWeight.Regular,Enum.FontStyle.Normal)a["23"]["TextSize"]=14;a["23"]["TextColor3"]=Color3.fromRGB(255,0,5)a["23"]["AnchorPoint"]=Vector2.new(0,1)a["23"]["Size"]=UDim2.new(1,0,0.03999999910593033,0)a["23"]["BorderColor3"]=Color3.fromRGB(0,0,0)a["23"]["Text"]=[[**You may need to reset for some of these to work!]]a["23"]["Name"]=[[WarnReset]]a["23"]["BackgroundTransparency"]=1;return a["1"],require