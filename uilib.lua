-- i made this today 4/12/25

		-- default: Udim2(0.74931, 0, 0.84858, 0)

		local plrs = game:GetService("Players")
		local ts = game:GetService("TweenService")
		local rs = game:GetService("RunService")
		local cg = game:GetService("CoreGui")

		local vp = workspace.CurrentCamera.ViewportSize

		local lib = {}
		lib.Tree = {}

		function lib:new(Name, Size)
			lib.Tree["1"] = Instance.new("ScreenGui");
			if rs:IsStudio() then
				lib.Tree["1"]["Parent"] = plrs.LocalPlayer.PlayerGui
			else
				lib.Tree['1']['Parent'] = cg		
			end
			lib.Tree["1"]["Name"] = [[LUNIX (5LETTERS)]];
			lib.Tree["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
			lib.Tree['1'].IgnoreGuiInset = true

			-- StarterGui.LUNIX (5LETTERS).Main
			lib.Tree["2"] = Instance.new("Frame", lib.Tree["1"]);
			lib.Tree["2"]["BorderSizePixel"] = 0;
			lib.Tree["2"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 32);
			lib.Tree["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
			lib.Tree["2"]["Size"] = Size;
			lib.Tree["2"]["Position"] = UDim2.new(0.5,0,.5,0);
			lib.Tree["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			lib.Tree["2"]["Name"] = [[Main]];


			-- StarterGui.LUNIX (5LETTERS).Main.UICorner
			lib.Tree["3"] = Instance.new("UICorner", lib.Tree["2"]);
			lib.Tree["3"]["CornerRadius"] = UDim.new(0, 3);


			-- StarterGui.LUNIX (5LETTERS).Main.StringRandomer
			lib.Tree["4"] = Instance.new("LocalScript", lib.Tree["2"]);
			lib.Tree["4"]["Name"] = [[StringRandomer]];


			-- StarterGui.LUNIX (5LETTERS).Main.UIDrag
			lib.Tree["5"] = Instance.new("LocalScript", lib.Tree["2"]);
			lib.Tree["5"]["Name"] = [[UIDrag]];


			-- StarterGui.LUNIX (5LETTERS).Main.DropShadowHolder
			lib.Tree["6"] = Instance.new("Frame", lib.Tree["2"]);
			lib.Tree["6"]["ZIndex"] = 0;
			lib.Tree["6"]["BorderSizePixel"] = 0;
			lib.Tree["6"]["Size"] = UDim2.new(0.99846, 0, 1, 0);
			lib.Tree["6"]["Name"] = [[DropShadowHolder]];
			lib.Tree["6"]["BackgroundTransparency"] = 1;


			-- StarterGui.LUNIX (5LETTERS).Main.DropShadowHolder.DropShadow
			lib.Tree["7"] = Instance.new("ImageLabel", lib.Tree["6"]);
			lib.Tree["7"]["ZIndex"] = 0;
			lib.Tree["7"]["BorderSizePixel"] = 0;
			lib.Tree["7"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
			lib.Tree["7"]["ScaleType"] = Enum.ScaleType.Slice;
			lib.Tree["7"]["ImageTransparency"] = 0.5;
			lib.Tree["7"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
			lib.Tree["7"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
			lib.Tree["7"]["Image"] = [[rbxassetid://6014261993]];
			lib.Tree["7"]["Size"] = UDim2.new(1.07231, 0, 1.09381, 0);
			lib.Tree["7"]["BackgroundTransparency"] = 1;
			lib.Tree["7"]["Name"] = [[DropShadow]];
			lib.Tree["7"]["Position"] = UDim2.new(0.5, 0, 0.499, 0);
		
		lib.Tree["8"] = Instance.new("Frame", lib.Tree["2"]);
		lib.Tree["8"]["BorderSizePixel"] = 0;
		lib.Tree["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		lib.Tree["8"]["ClipsDescendants"] = true;
		lib.Tree["8"]["Size"] = UDim2.new(0.76651, 0, 0.81238, 0);
		lib.Tree["8"]["Position"] = UDim2.new(0.21659, 0, 0.1497, 0);
		lib.Tree["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["8"]["Name"] = [[ContentContainer]];
		lib.Tree["8"]["BackgroundTransparency"] = 1;


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab
		lib.Tree["9"] = Instance.new("ScrollingFrame", lib.Tree["8"]);
		lib.Tree["9"]["Active"] = true;
		lib.Tree["9"]["BorderSizePixel"] = 0;
		lib.Tree["9"]["CanvasSize"] = UDim2.new(1, 0, 1, 0);
		lib.Tree["9"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
		lib.Tree["9"]["Name"] = [[AssetTab]];
		lib.Tree["9"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
		lib.Tree["9"]["Size"] = UDim2.new(1, 0, 1, 0);
		lib.Tree["9"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["9"]["ScrollBarThickness"] = 2;
		lib.Tree["9"]["Visible"] = false;


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.UIListLayout
		lib.Tree["67"] = Instance.new("UIListLayout", lib.Tree["9"]);
		lib.Tree["67"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
		lib.Tree["67"]["Padding"] = UDim.new(0, 15);
		lib.Tree["67"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.UIPadding
		lib.Tree["41"] = Instance.new("UIPadding", lib.Tree["9"]);
		lib.Tree["41"]["PaddingTop"] = UDim.new(0, 5);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Button
		lib.Tree["61"] = Instance.new("TextButton", lib.Tree["9"]);
		lib.Tree["61"]["TextWrapped"] = true;
		lib.Tree["61"]["BorderSizePixel"] = 0;
		lib.Tree["61"]["TextColor3"] = Color3.fromRGB(196, 196, 196);
		lib.Tree["61"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		lib.Tree["61"]["TextSize"] = 25;
		lib.Tree["61"]["TextScaled"] = true;
		lib.Tree["61"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
		lib.Tree["61"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		lib.Tree["61"]["ZIndex"] = 5;
		lib.Tree["61"]["Size"] = UDim2.new(0, 450, 0, 50);
		lib.Tree["61"]["Name"] = [[Button]];
		lib.Tree["61"]["ClipsDescendants"] = true;
		lib.Tree["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Button.UIPadding
		lib.Tree["21"] = Instance.new("UIPadding", lib.Tree["c"]);
		lib.Tree["21"]["PaddingLeft"] = UDim.new(0, 15);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Button.ImageButton
		lib.Tree["e"] = Instance.new("ImageButton", lib.Tree["c"]);
		lib.Tree["e"]["BorderSizePixel"] = 0;
		lib.Tree["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		lib.Tree["e"]["ImageColor3"] = Color3.fromRGB(246, 246, 246);
		lib.Tree["e"]["Image"] = [[rbxassetid://10734898355]];
		lib.Tree["e"]["Size"] = UDim2.new(0.09452, 0, 0.88, 0);
		lib.Tree["e"]["BackgroundTransparency"] = 1;
		lib.Tree["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["e"]["Position"] = UDim2.new(0.87906, 0, 0.05, 0);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Button.UITextSizeConstraint
		lib.Tree["f"] = Instance.new("UITextSizeConstraint", lib.Tree["c"]);
		lib.Tree["f"]["MaxTextSize"] = 25;


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Button.UIStroke
		lib.Tree["10"] = Instance.new("UIStroke", lib.Tree["c"]);
		lib.Tree["10"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
		lib.Tree["10"]["Thickness"] = 3;
		lib.Tree["10"]["Color"] = Color3.fromRGB(31, 31, 31);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Label
		lib.Tree["11"] = Instance.new("TextLabel", lib.Tree["9"]);
		lib.Tree["11"]["BorderSizePixel"] = 0;
		lib.Tree["11"]["TextSize"] = 25;
		lib.Tree["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		lib.Tree["11"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
		lib.Tree["11"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		lib.Tree["11"]["TextColor3"] = Color3.fromRGB(196, 196, 196);
		lib.Tree["11"]["Size"] = UDim2.new(0, 450, 0, 50);
		lib.Tree["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["11"]["Name"] = [[Label]];
		lib.Tree["11"]["Position"] = UDim2.new(0, 0, 0.17327, 0);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Label.UIPadding
		lib.Tree["12"] = Instance.new("UIPadding", lib.Tree["11"]);
		lib.Tree["12"]["PaddingLeft"] = UDim.new(0, 50);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Label.UITextSizeConstraint
		lib.Tree["13"] = Instance.new("UITextSizeConstraint", lib.Tree["11"]);
		lib.Tree["13"]["MaxTextSize"] = 25;


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Label.UIStroke
		lib.Tree["14"] = Instance.new("UIStroke", lib.Tree["11"]);
		lib.Tree["14"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
		lib.Tree["14"]["Thickness"] = 3;
		lib.Tree["14"]["Color"] = Color3.fromRGB(31, 31, 31);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Label.ImageLabel
		lib.Tree["15"] = Instance.new("ImageLabel", lib.Tree["11"]);
		lib.Tree["15"]["BorderSizePixel"] = 0;
		lib.Tree["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		lib.Tree["15"]["ImageColor3"] = Color3.fromRGB(31, 31, 31);
		lib.Tree["15"]["Image"] = [[rbxassetid://10734888000]];
		lib.Tree["15"]["Size"] = UDim2.new(0.08691, 0, 0.88, 0);
		lib.Tree["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["15"]["BackgroundTransparency"] = 1;
		lib.Tree["15"]["Position"] = UDim2.new(-0.125, 0, 0.12, 0);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Infomation
		lib.Tree["16"] = Instance.new("TextLabel", lib.Tree["9"]);
		lib.Tree["16"]["BorderSizePixel"] = 0;
		lib.Tree["16"]["TextSize"] = 25;
		lib.Tree["16"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		lib.Tree["16"]["BackgroundColor3"] = Color3.fromRGB(10, 100, 219);
		lib.Tree["16"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		lib.Tree["16"]["TextColor3"] = Color3.fromRGB(196, 196, 196);
		lib.Tree["16"]["Size"] = UDim2.new(0, 450, 0, 50);
		lib.Tree["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["16"]["Text"] = [[Info]];
		lib.Tree["16"]["Name"] = [[Infomation]];
		lib.Tree["16"]["Position"] = UDim2.new(0, 0, 0.17327, 0);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Infomation.UIPadding
		lib.Tree["17"] = Instance.new("UIPadding", lib.Tree["16"]);
		lib.Tree["17"]["PaddingLeft"] = UDim.new(0, 50);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Infomation.UITextSizeConstraint
		lib.Tree["18"] = Instance.new("UITextSizeConstraint", lib.Tree["16"]);
		lib.Tree["18"]["MaxTextSize"] = 25;


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Infomation.UIStroke
		lib.Tree["19"] = Instance.new("UIStroke", lib.Tree["16"]);
		lib.Tree["19"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
		lib.Tree["19"]["Thickness"] = 3;
		lib.Tree["19"]["Color"] = Color3.fromRGB(11, 117, 255);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Infomation.ImageLabel
		lib.Tree["1a"] = Instance.new("ImageLabel", lib.Tree["16"]);
		lib.Tree["1a"]["BorderSizePixel"] = 0;
		lib.Tree["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		lib.Tree["1a"]["ImageColor3"] = Color3.fromRGB(11, 117, 255);
		lib.Tree["1a"]["Image"] = [[rbxassetid://10723415903]];
		lib.Tree["1a"]["Size"] = UDim2.new(0.08691, 0, 0.88, 0);
		lib.Tree["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["1a"]["BackgroundTransparency"] = 1;
		lib.Tree["1a"]["Position"] = UDim2.new(-0.125, 0, 0.06, 0);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Warning
		lib.Tree["1b"] = Instance.new("TextLabel", lib.Tree["9"]);
		lib.Tree["1b"]["BorderSizePixel"] = 0;
		lib.Tree["1b"]["TextSize"] = 25;
		lib.Tree["1b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		lib.Tree["1b"]["BackgroundColor3"] = Color3.fromRGB(128, 128, 0);
		lib.Tree["1b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		lib.Tree["1b"]["TextColor3"] = Color3.fromRGB(196, 196, 196);
		lib.Tree["1b"]["Size"] = UDim2.new(0, 450, 0, 50);
		lib.Tree["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["1b"]["Text"] = [[Warning]];
		lib.Tree["1b"]["Name"] = [[Warning]];
		lib.Tree["1b"]["Position"] = UDim2.new(0, 0, 0.17327, 0);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Warning.UIPadding
		lib.Tree["1c"] = Instance.new("UIPadding", lib.Tree["1b"]);
		lib.Tree["1c"]["PaddingLeft"] = UDim.new(0, 50);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Warning.UITextSizeConstraint
		lib.Tree["1d"] = Instance.new("UITextSizeConstraint", lib.Tree["1b"]);
		lib.Tree["1d"]["MaxTextSize"] = 25;


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Warning.UIStroke
		lib.Tree["1e"] = Instance.new("UIStroke", lib.Tree["1b"]);
		lib.Tree["1e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
		lib.Tree["1e"]["Thickness"] = 3;
		lib.Tree["1e"]["Color"] = Color3.fromRGB(215, 219, 0);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Warning.ImageLabel
		lib.Tree["1f"] = Instance.new("ImageLabel", lib.Tree["1b"]);
		lib.Tree["1f"]["BorderSizePixel"] = 0;
		lib.Tree["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		lib.Tree["1f"]["ImageColor3"] = Color3.fromRGB(215, 219, 0);
		lib.Tree["1f"]["Image"] = [[rbxassetid://10723374276]];
		lib.Tree["1f"]["Size"] = UDim2.new(0.08691, 0, 0.88, 0);
		lib.Tree["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["1f"]["BackgroundTransparency"] = 1;
		lib.Tree["1f"]["Position"] = UDim2.new(-0.125, 0, 0.06, 0);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Slider
		lib.Tree["20"] = Instance.new("TextLabel", lib.Tree["9"]);
		lib.Tree["20"]["BorderSizePixel"] = 0;
		lib.Tree["20"]["TextSize"] = 30;
		lib.Tree["20"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		lib.Tree["20"]["TextYAlignment"] = Enum.TextYAlignment.Top;
		lib.Tree["20"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
		lib.Tree["20"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		lib.Tree["20"]["TextColor3"] = Color3.fromRGB(196, 196, 196);
		lib.Tree["20"]["Size"] = UDim2.new(0, 450, 0, 76);
		lib.Tree["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["20"]["Text"] = [[Slider]];
		lib.Tree["20"]["Name"] = [[Slider]];
		lib.Tree["20"]["Position"] = UDim2.new(0.0491, 0, 0.64677, 0);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Slider.UIPadding
		lib.Tree["21"] = Instance.new("UIPadding", lib.Tree["20"]);
		lib.Tree["21"]["PaddingLeft"] = UDim.new(0, 15);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Slider.UITextSizeConstraint
		lib.Tree["22"] = Instance.new("UITextSizeConstraint", lib.Tree["20"]);
		lib.Tree["22"]["MaxTextSize"] = 25;


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Slider.UIStroke
		lib.Tree["23"] = Instance.new("UIStroke", lib.Tree["20"]);
		lib.Tree["23"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
		lib.Tree["23"]["Thickness"] = 3;
		lib.Tree["23"]["Color"] = Color3.fromRGB(31, 31, 31);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Slider.Value
		lib.Tree["24"] = Instance.new("TextLabel", lib.Tree["20"]);
		lib.Tree["24"]["BorderSizePixel"] = 0;
		lib.Tree["24"]["TextSize"] = 14;
		lib.Tree["24"]["TextXAlignment"] = Enum.TextXAlignment.Right;
		lib.Tree["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		lib.Tree["24"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		lib.Tree["24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		lib.Tree["24"]["BackgroundTransparency"] = 1;
		lib.Tree["24"]["Size"] = UDim2.new(0.24, 0, 0.39474, 0);
		lib.Tree["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["24"]["Text"] = [[0]];
		lib.Tree["24"]["Name"] = [[Value]];
		lib.Tree["24"]["Position"] = UDim2.new(0.72444, 0, 0, 0);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Slider.Value.UIPadding
		lib.Tree["25"] = Instance.new("UIPadding", lib.Tree["24"]);
		lib.Tree["25"]["PaddingRight"] = UDim.new(0, 15);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Slider.Slider
		lib.Tree["26"] = Instance.new("Frame", lib.Tree["20"]);
		lib.Tree["26"]["BorderSizePixel"] = 0;
		lib.Tree["26"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
		lib.Tree["26"]["Size"] = UDim2.new(0.89788, 0, 0.13158, 0);
		lib.Tree["26"]["Position"] = UDim2.new(0.0023, 0, 0.61842, 0);
		lib.Tree["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["26"]["Name"] = [[Slider]];


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Slider.Slider.UICorner
		lib.Tree["27"] = Instance.new("UICorner", lib.Tree["26"]);



		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Slider.Slider.UIStroke
		lib.Tree["28"] = Instance.new("UIStroke", lib.Tree["26"]);
		lib.Tree["28"]["Thickness"] = 3;
		lib.Tree["28"]["Color"] = Color3.fromRGB(31, 31, 31);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Slider.Slider.Draggable
		lib.Tree["29"] = Instance.new("Frame", lib.Tree["26"]);
		lib.Tree["29"]["BorderSizePixel"] = 0;
		lib.Tree["29"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
		lib.Tree["29"]["Size"] = UDim2.new(0.37125, 0, 1, 0);
		lib.Tree["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["29"]["Name"] = [[Draggable]];


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Slider.Slider.Draggable.UICorner
		lib.Tree["2a"] = Instance.new("UICorner", lib.Tree["29"]);



		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Toggle
		lib.Tree["2b"] = Instance.new("TextLabel", lib.Tree["9"]);
		lib.Tree["2b"]["BorderSizePixel"] = 0;
		lib.Tree["2b"]["TextSize"] = 30;
		lib.Tree["2b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		lib.Tree["2b"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
		lib.Tree["2b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		lib.Tree["2b"]["TextColor3"] = Color3.fromRGB(196, 196, 196);
		lib.Tree["2b"]["Size"] = UDim2.new(0, 450, 0, 50);
		lib.Tree["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["2b"]["Text"] = [[Toggle]];
		lib.Tree["2b"]["Name"] = [[Toggle]];
		lib.Tree["2b"]["Position"] = UDim2.new(-0.08116, 0, 0.87562, 0);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Toggle.UIPadding
		lib.Tree["2c"] = Instance.new("UIPadding", lib.Tree["2b"]);
		lib.Tree["2c"]["PaddingLeft"] = UDim.new(0, 15);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Toggle.UITextSizeConstraint
		lib.Tree["2d"] = Instance.new("UITextSizeConstraint", lib.Tree["2b"]);
		lib.Tree["2d"]["MaxTextSize"] = 25;


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Toggle.UIStroke
		lib.Tree["2e"] = Instance.new("UIStroke", lib.Tree["2b"]);
		lib.Tree["2e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
		lib.Tree["2e"]["Thickness"] = 3;
		lib.Tree["2e"]["Color"] = Color3.fromRGB(31, 31, 31);


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Toggle.Toggle
		lib.Tree["2f"] = Instance.new("Frame", lib.Tree["2b"]);
		lib.Tree["2f"]["BorderSizePixel"] = 0;
		lib.Tree["2f"]["BackgroundColor3"] = Color3.fromRGB(40, 40, 40);
		lib.Tree["2f"]["Size"] = UDim2.new(0.05402, 0, 0.46, 0);
		lib.Tree["2f"]["Position"] = UDim2.new(0.89885, 0, 0.25316, 0);
		lib.Tree["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["2f"]["Name"] = [[Toggle]];


		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Toggle.Toggle.UICorner
		lib.Tree["30"] = Instance.new("UICorner", lib.Tree["2f"]);



		-- StarterGui.LUNIX (5LETTERS).Main.ContentContainer.AssetTab.Toggle.Toggle.UIStroke
		lib.Tree["31"] = Instance.new("UIStroke", lib.Tree["2f"]);
		lib.Tree["31"]["Thickness"] = 4;
		lib.Tree["31"]["Color"] = Color3.fromRGB(31, 31, 31);


		-- StarterGui.LUNIX (5LETTERS).Main.Navigation
		lib.Tree["32"] = Instance.new("Frame", lib.Tree["2"]);
		lib.Tree["32"]["BorderSizePixel"] = 0;
		lib.Tree["32"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11);
		lib.Tree["32"]["Size"] = UDim2.new(0.20276, 0, 0.87625, 0);
		lib.Tree["32"]["Position"] = UDim2.new(0, 0, 0.12176, 0);
		lib.Tree["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["32"]["Name"] = [[Navigation]];


		-- StarterGui.LUNIX (5LETTERS).Main.Navigation.Tabholder
		lib.Tree["33"] = Instance.new("Frame", lib.Tree["32"]);
		lib.Tree["33"]["BorderSizePixel"] = 0;
		lib.Tree["33"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11);
		lib.Tree["33"]["Size"] = UDim2.new(1, 0, 1, 0);
		lib.Tree["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["33"]["Name"] = [[Tabholder]];
		lib.Tree["33"]["BackgroundTransparency"] = 1;


		-- StarterGui.LUNIX (5LETTERS).Main.Navigation.Tabholder.UIPadding
		lib.Tree["34"] = Instance.new("UIPadding", lib.Tree["33"]);
		lib.Tree["34"]["PaddingTop"] = UDim.new(0, 10);


		-- StarterGui.LUNIX (5LETTERS).Main.Navigation.Tabholder.Tab[A]
		lib.Tree["35"] = Instance.new("Frame", lib.Tree["33"]);
		lib.Tree["35"]["BorderSizePixel"] = 0;
		lib.Tree["35"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
		lib.Tree["35"]["Size"] = UDim2.new(1, 0, 0.08014, 0);
		lib.Tree["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["35"]["Name"] = "Tab[A]";
		lib.Tree["35"]["Visible"] = false;



		-- StarterGui.LUNIX (5LETTERS).Main.Navigation.Tabholder.Tab[A].Icon
		lib.Tree["36"] = Instance.new("ImageLabel", lib.Tree["35"]);
		lib.Tree["36"]["BorderSizePixel"] = 0;
		lib.Tree["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		lib.Tree["36"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
		lib.Tree["36"]["Size"] = UDim2.new(0.25, 0, 1.02331, 0);
		lib.Tree["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["36"]["Name"] = [[Icon]];
		lib.Tree["36"]["Position"] = UDim2.new(0.63636, 0, 0, 0);


		-- StarterGui.LUNIX (5LETTERS).Main.Navigation.Tabholder.Tab[A].Title
		lib.Tree["37"] = Instance.new("TextLabel", lib.Tree["35"]);
		lib.Tree["37"]["TextWrapped"] = true;
		lib.Tree["37"]["BorderSizePixel"] = 0;
		lib.Tree["37"]["TextSize"] = 14;
		lib.Tree["37"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		lib.Tree["37"]["TextScaled"] = true;
		lib.Tree["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		lib.Tree["37"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		lib.Tree["37"]["TextColor3"] = Color3.fromRGB(176, 176, 176);
		lib.Tree["37"]["BackgroundTransparency"] = 1;
		lib.Tree["37"]["Size"] = UDim2.new(0.56061, 0, 1.02331, 0);
		lib.Tree["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["37"]["Name"] = [[Title]];


		-- StarterGui.LUNIX (5LETTERS).Main.Navigation.Tabholder.Tab[A].Title.UIPadding
		lib.Tree["38"] = Instance.new("UIPadding", lib.Tree["37"]);
		lib.Tree["38"]["PaddingLeft"] = UDim.new(0, 25);


		-- StarterGui.LUNIX (5LETTERS).Main.Navigation.Tabholder.Tab[A].Title.UITextSizeConstraint
		lib.Tree["39"] = Instance.new("UITextSizeConstraint", lib.Tree["37"]);
		lib.Tree["39"]["MaxTextSize"] = 14;


		-- StarterGui.LUNIX (5LETTERS).Main.Navigation.Tabholder.UIListLayout
		lib.Tree["3a"] = Instance.new("UIListLayout", lib.Tree["33"]);
		lib.Tree["3a"]["Padding"] = UDim.new(0, 5);
		lib.Tree["3a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


		-- StarterGui.LUNIX (5LETTERS).Main.Sep
		lib.Tree["3b"] = Instance.new("Frame", lib.Tree["2"]);
		lib.Tree["3b"]["BorderSizePixel"] = 0;
		lib.Tree["3b"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
		lib.Tree["3b"]["Size"] = UDim2.new(1, 0, 0.002, 0);
		lib.Tree["3b"]["Position"] = UDim2.new(0, 0, 0.11976, 0);
		lib.Tree["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["3b"]["Name"] = [[Sep]];


		-- StarterGui.LUNIX (5LETTERS).Main.Topbar
		lib.Tree["3c"] = Instance.new("Frame", lib.Tree["2"]);
		lib.Tree["3c"]["BorderSizePixel"] = 0;
		lib.Tree["3c"]["BackgroundColor3"] = Color3.fromRGB(11, 11, 11);
		lib.Tree["3c"]["Size"] = UDim2.new(1, 0, 0.11976, 0);
		lib.Tree["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["3c"]["Name"] = [[Topbar]];


		-- StarterGui.LUNIX (5LETTERS).Main.Topbar.Close
		lib.Tree["3d"] = Instance.new("TextButton", lib.Tree["3c"]);
		lib.Tree["3d"]["TextWrapped"] = true;
		lib.Tree["3d"]["BorderSizePixel"] = 0;
		lib.Tree["3d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		lib.Tree["3d"]["TextXAlignment"] = Enum.TextXAlignment.Right;
		lib.Tree["3d"]["TextSize"] = 25;
		lib.Tree["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 113, 113);
		lib.Tree["3d"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		lib.Tree["3d"]["Size"] = UDim2.new(0.22427, 0, 0.7, 0);
		lib.Tree["3d"]["Name"] = [[Close]];
		lib.Tree["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["3d"]["Text"] = [[Close]];
		lib.Tree["3d"]["Position"] = UDim2.new(0.76805, 0, 0.11667, 0);


		-- StarterGui.LUNIX (5LETTERS).Main.Topbar.Close.UICorner
		lib.Tree["3e"] = Instance.new("UICorner", lib.Tree["3d"]);
		lib.Tree["3e"]["CornerRadius"] = UDim.new(0, 4);


		-- StarterGui.LUNIX (5LETTERS).Main.Topbar.Close.UIPadding
		lib.Tree["3f"] = Instance.new("UIPadding", lib.Tree["3d"]);
		lib.Tree["3f"]["PaddingRight"] = UDim.new(0, 35);


		-- StarterGui.LUNIX (5LETTERS).Main.Topbar.Close.LocalScript
		lib.Tree["40"] = Instance.new("LocalScript", lib.Tree["3d"]);



		-- StarterGui.LUNIX (5LETTERS).Main.Topbar.Close.ImageLabel
		lib.Tree["41"] = Instance.new("ImageLabel", lib.Tree["3d"]);
		lib.Tree["41"]["BorderSizePixel"] = 0;
		lib.Tree["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		lib.Tree["41"]["Image"] = [[rbxassetid://10747383819]];
		lib.Tree["41"]["Size"] = UDim2.new(0.29797, 0, 0.78571, 0);
		lib.Tree["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["41"]["BackgroundTransparency"] = 1;
		lib.Tree["41"]["Position"] = UDim2.new(0.06164, 0, 0.09524, 0);


		-- StarterGui.LUNIX (5LETTERS).Main.Topbar.Title
		lib.Tree["42"] = Instance.new("TextLabel", lib.Tree["3c"]);
		lib.Tree["42"]["BorderSizePixel"] = 0;
		lib.Tree["42"]["TextSize"] = 25;
		lib.Tree["42"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		lib.Tree["42"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		lib.Tree["42"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		lib.Tree["42"]["TextColor3"] = Color3.fromRGB(176, 176, 176);
		lib.Tree["42"]["BackgroundTransparency"] = 1;
		lib.Tree["42"]["Size"] = UDim2.new(0.44854, 0, 1, 0);
		lib.Tree["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["42"]["Name"] = [[Title]];
		lib.Tree["42"]["Text"] = Name



		-- StarterGui.LUNIX (5LETTERS).Main.Topbar.Title.UIPadding
		lib.Tree["43"] = Instance.new("UIPadding", lib.Tree["42"]);
		lib.Tree["43"]["PaddingLeft"] = UDim.new(0, 35);


		-- StarterGui.LUNIX (5LETTERS).Main.StringRandomer
		local function C_4()
			local script = lib.Tree["4"];
			-- Won't stop detection but like who cares

			local array = {"a","b","c","d","e","f","g","A","T","@","S","K","2","6"}

			function stringrandomizer()
				local result = ""
				for i = 1, 5 do
					local v = math.random(1, 14)
					local character = array[v]
					result = result..character
				end
				return result
			end

			script.Parent.Parent.Name = string.format("LUNIX (%s)", stringrandomizer())
		end;
		task.spawn(C_4);
		-- StarterGui.LUNIX (5LETTERS).Main.UIDrag
	local function C_5()
		-- Topbar-only drag that moves the whole Main frame

		local UIS        = game:GetService("UserInputService")
		local TweenService = game:GetService("TweenService")

		local mainFrame  = lib.Tree["2"]   -- the big window you want to move
		local topbar     = lib.Tree["3c"]  -- the bar you drag

		local dragging   = false
		local dragStart  = nil
		local startPos   = nil
		local dragSpeed  = 0.25

		local function updateInput(input)
			local delta = input.Position - dragStart
			local newPos = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)

			TweenService:Create(
				mainFrame,
				TweenInfo.new(dragSpeed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ Position = newPos }
			):Play()
		end

		topbar.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1
				or input.UserInputType == Enum.UserInputType.Touch then

				dragging  = true
				dragStart = input.Position
				startPos  = mainFrame.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		UIS.InputChanged:Connect(function(input)
			if not dragging then
				return
			end

			if input.UserInputType == Enum.UserInputType.MouseMovement
				or input.UserInputType == Enum.UserInputType.Touch then
				updateInput(input)
			end
		end)
		end;
		task.spawn(C_5);
		-- StarterGui.LUNIX (5LETTERS).Main.Topbar.Close.LocalScript
		local function C_40()
			local script = lib.Tree["40"];
			script.Parent.MouseButton1Click:Connect(function()
				script.Parent.Parent.Parent.Parent:Destroy()
			end)
		end;
		task.spawn(C_40);
		
	function lib.Tree:CreateTab(Name2: string, Icon)
		local tabFrame = Instance.new("Frame", lib.Tree["33"])
		tabFrame.BorderSizePixel = 0
		tabFrame.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
		tabFrame.Size = UDim2.new(1, 0, 0.08014, 0)
		tabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		tabFrame.Name = Name2

		local icon = Instance.new("ImageLabel", tabFrame)
		icon.BorderSizePixel = 0
		icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		icon.Image = Icon
		icon.Size = UDim2.new(0.25, 0, 1.02331, 0)
		icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
		icon.Name = "Icon"
		icon.Position = UDim2.new(0.63636, 0, 0, 0)

		local titleButton = Instance.new("TextButton", tabFrame)
		titleButton.TextWrapped = true
		titleButton.BorderSizePixel = 0
		titleButton.TextSize = 14
		titleButton.TextXAlignment = Enum.TextXAlignment.Left
		titleButton.TextScaled = true
		titleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		titleButton.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		titleButton.TextColor3 = Color3.fromRGB(176, 176, 176)
		titleButton.BackgroundTransparency = 1
		titleButton.Size = UDim2.new(0.56061, 0, 1.02331, 0)
		titleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		titleButton.Name = "Title"
		titleButton.Text = Name2

		local padding = Instance.new("UIPadding", titleButton)
		padding.PaddingLeft = UDim.new(0, 25)

		local textConstraint = Instance.new("UITextSizeConstraint", titleButton)
		textConstraint.MaxTextSize = 14

		local tabContent = Instance.new("ScrollingFrame", lib.Tree["8"])
		tabContent.Active = true
		tabContent.BorderSizePixel = 0
		tabContent.CanvasSize = UDim2.new(1, 0, 1, 0)
		tabContent.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
		tabContent.Name = Name2
		tabContent.AutomaticCanvasSize = Enum.AutomaticSize.Y
		tabContent.Size = UDim2.new(1, 0, 1, 0)
		tabContent.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
		tabContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
		tabContent.ScrollBarThickness = 2
		tabContent.Visible = false

		local contentLayout = Instance.new("UIListLayout", tabContent)
		contentLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		contentLayout.Padding = UDim.new(0, 15)
		contentLayout.SortOrder = Enum.SortOrder.LayoutOrder

		local contentPadding = Instance.new("UIPadding", tabContent)
		contentPadding.PaddingTop = UDim.new(0, 5)

		titleButton.MouseButton1Click:Connect(function()
			for _, content in pairs(lib.Tree["8"]:GetChildren()) do
				if content:IsA("ScrollingFrame") then
					content.Visible = false
				end
			end
			for _, frame in pairs(lib.Tree["33"]:GetChildren()) do
				if frame:IsA("Frame") then
					frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
				end
			end
			tabContent.Visible = true
			tabFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		end)
	end
	
	function lib.Tree:Button(Tab, Name, callback)
		lib.Tree["Button"] = Instance.new("TextButton", lib.Tree["8"][Tab]);
		lib.Tree["Button"]["TextWrapped"] = true;
		lib.Tree["Button"]["BorderSizePixel"] = 0;
		lib.Tree["Button"]["TextColor3"] = Color3.fromRGB(196, 196, 196);
		lib.Tree["Button"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		lib.Tree["Button"]["TextSize"] = 25;
		lib.Tree["Button"]["TextScaled"] = false;
		lib.Tree["Button"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
		lib.Tree["Button"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		lib.Tree["Button"]["ZIndex"] = 5;
		lib.Tree["Button"]["Size"] = UDim2.new(0, 450, 0, 50);
		lib.Tree["Button"]["Name"] = Name;
		lib.Tree["Button"]["ClipsDescendants"] = true;
		lib.Tree["Button"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["Button"]['Text'] = Name
		lib.Tree['Button'].MouseButton1Click:Connect(function()
			callback()
		end)
		
		lib.Tree["UIPADDINGFORBUTTOn"] = Instance.new("UIPadding", lib.Tree["Button"]);
		lib.Tree["UIPADDINGFORBUTTOn"]["PaddingLeft"] = UDim.new(0, 15);


		lib.Tree["ImagebuttonForbutton"] = Instance.new("ImageButton", lib.Tree["Button"]);
		lib.Tree["ImagebuttonForbutton"]["BorderSizePixel"] = 0;
		lib.Tree["ImagebuttonForbutton"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		lib.Tree["ImagebuttonForbutton"]["ImageColor3"] = Color3.fromRGB(246, 246, 246);
		lib.Tree["ImagebuttonForbutton"]["Image"] = [[rbxassetid://10734898355]];
		lib.Tree["ImagebuttonForbutton"]["Size"] = UDim2.new(0.09452, 0, 0.88, 0);
		lib.Tree["ImagebuttonForbutton"]["BackgroundTransparency"] = 1;
		lib.Tree["ImagebuttonForbuttonBorderColor3"] = Color3.fromRGB(0, 0, 0);
		lib.Tree["ImagebuttonForbutton"]["Position"] = UDim2.new(0.87906, 0, 0.05, 0);


		lib.Tree["UITEXTSIZECONSTARINT"] = Instance.new("UITextSizeConstraint", lib.Tree["Button"]);
		lib.Tree["UITEXTSIZECONSTARINT"]["MaxTextSize"] = 25;


		lib.Tree["STROKEIT"] = Instance.new("UIStroke", lib.Tree["Button"]);
		lib.Tree["STROKEIT"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
		lib.Tree["STROKEIT"]["Thickness"] = 3;
		lib.Tree["STROKEIT"]["Color"] = Color3.fromRGB(31, 31, 31);
	end
	
	function lib.Tree:Label(Tab, Name)
		local label = Instance.new("TextLabel", lib.Tree["8"][Tab])
		label.BorderSizePixel = 0
		label.TextSize = 25
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
		label.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		label.TextColor3 = Color3.fromRGB(196, 196, 196)
		label.Size = UDim2.new(0, 450, 0, 50)
		label.BorderColor3 = Color3.fromRGB(0, 0, 0)
		label.Name = "Label"
		label.Text = Name
		label.TextScaled = true

		local padding = Instance.new("UIPadding", label)
		padding.PaddingLeft = UDim.new(0, 50)

		local textConstraint = Instance.new("UITextSizeConstraint", label)
		textConstraint.MaxTextSize = 25

		local stroke = Instance.new("UIStroke", label)
		stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		stroke.Thickness = 3
		stroke.Color = Color3.fromRGB(31, 31, 31)

		local icon = Instance.new("ImageLabel", label)
		icon.BorderSizePixel = 0
		icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		icon.ImageColor3 = Color3.fromRGB(31, 31, 31)
		icon.Image = "rbxassetid://10734888000"
		icon.Size = UDim2.new(0.08691, 0, 0.88, 0)
		icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
		icon.BackgroundTransparency = 1
		icon.Position = UDim2.new(-0.125, 0, 0.12, 0)
	end
	function lib.Tree:Warning(Tab, Name)
		local warning = Instance.new("TextLabel", lib.Tree['8'][Tab])
		warning.BorderSizePixel = 0
		warning.TextSize = 25
		warning.TextXAlignment = Enum.TextXAlignment.Left
		warning.BackgroundColor3 = Color3.fromRGB(128, 128, 0)
		warning.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		warning.TextColor3 = Color3.fromRGB(196, 196, 196)
		warning.Size = UDim2.new(0, 450, 0, 50)
		warning.BorderColor3 = Color3.fromRGB(0, 0, 0)
		warning.Text = Name
		warning.Name = "Warning"
		warning.TextScaled = true

		local padding = Instance.new("UIPadding", warning)
		padding.PaddingLeft = UDim.new(0, 50)

		local textConstraint = Instance.new("UITextSizeConstraint", warning)
		textConstraint.MaxTextSize = 25

		local stroke = Instance.new("UIStroke", warning)
		stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		stroke.Thickness = 3
		stroke.Color = Color3.fromRGB(215, 219, 0)

		local icon = Instance.new("ImageLabel", warning)
		icon.BorderSizePixel = 0
		icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		icon.ImageColor3 = Color3.fromRGB(215, 219, 0)
		icon.Image = "rbxassetid://10723374276"
		icon.Size = UDim2.new(0.08691, 0, 0.88, 0)
		icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
		icon.BackgroundTransparency = 1
		icon.Position = UDim2.new(-0.125, 0, 0.06, 0)
	end
	function lib.Tree:Info(Tab, Name)
		local info = Instance.new("TextLabel", lib.Tree["8"][Tab])
		info.BorderSizePixel = 0
		info.TextSize = 25
		info.TextXAlignment = Enum.TextXAlignment.Left
		info.BackgroundColor3 = Color3.fromRGB(10, 100, 219)
		info.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		info.TextColor3 = Color3.fromRGB(196, 196, 196)
		info.Size = UDim2.new(0, 450, 0, 50)
		info.BorderColor3 = Color3.fromRGB(0, 0, 0)
		info.Text = Name
		info.Name = "Info"

		local padding = Instance.new("UIPadding", info)
		padding.PaddingLeft = UDim.new(0, 50)

		local textConstraint = Instance.new("UITextSizeConstraint", info)
		textConstraint.MaxTextSize = 25

		local stroke = Instance.new("UIStroke", info)
		stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		stroke.Thickness = 3
		stroke.Color = Color3.fromRGB(11, 117, 255)

		local icon = Instance.new("ImageLabel", info)
		icon.BorderSizePixel = 0
		icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		icon.ImageColor3 = Color3.fromRGB(11, 117, 255)
		icon.Image = "rbxassetid://10723415903"
		icon.Size = UDim2.new(0.08691, 0, 0.88, 0)
		icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
		icon.BackgroundTransparency = 1
		icon.Position = UDim2.new(-0.125, 0, 0.06, 0)
	end
	function lib.Tree:Slider(Tab, Name, Min, Max, Default, Callback)
		local UIS = game:GetService("UserInputService")
		local TS  = game:GetService("TweenService")

		local sliderFrame = Instance.new("TextLabel", lib.Tree["8"][Tab])
		sliderFrame.BorderSizePixel = 0
		sliderFrame.TextSize = 30
		sliderFrame.TextXAlignment = Enum.TextXAlignment.Left
		sliderFrame.TextYAlignment = Enum.TextYAlignment.Top
		sliderFrame.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
		sliderFrame.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		sliderFrame.TextColor3 = Color3.fromRGB(196, 196, 196)
		sliderFrame.Size = UDim2.new(0, 450, 0, 76)
		sliderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		sliderFrame.Text = Name
		sliderFrame.Name = "Slider"

		local padding = Instance.new("UIPadding", sliderFrame)
		padding.PaddingLeft = UDim.new(0, 15)

		local textConstraint = Instance.new("UITextSizeConstraint", sliderFrame)
		textConstraint.MaxTextSize = 25

		local stroke = Instance.new("UIStroke", sliderFrame)
		stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		stroke.Thickness = 3
		stroke.Color = Color3.fromRGB(31, 31, 31)

		local valueLabel = Instance.new("TextLabel", sliderFrame)
		valueLabel.BorderSizePixel = 0
		valueLabel.TextSize = 14
		valueLabel.TextXAlignment = Enum.TextXAlignment.Right
		valueLabel.BackgroundTransparency = 1
		valueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		valueLabel.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		valueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		valueLabel.Size = UDim2.new(0.24, 0, 0.39474, 0)
		valueLabel.Position = UDim2.new(0.72444, 0, 0, 0)
		valueLabel.Name = "Value"

		local valuePadding = Instance.new("UIPadding", valueLabel)
		valuePadding.PaddingRight = UDim.new(0, 15)

		local sliderTrack = Instance.new("Frame", sliderFrame)
		sliderTrack.BorderSizePixel = 0
		sliderTrack.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
		sliderTrack.Size = UDim2.new(0.89788, 0, 0.13158, 0)
		sliderTrack.Position = UDim2.new(0.0023, 0, 0.61842, 0)
		sliderTrack.BorderColor3 = Color3.fromRGB(0, 0, 0)
		sliderTrack.Name = "SliderTrack"

		local trackCorner = Instance.new("UICorner", sliderTrack)

		local trackStroke = Instance.new("UIStroke", sliderTrack)
		trackStroke.Thickness = 3
		trackStroke.Color = Color3.fromRGB(31, 31, 31)

		local draggable = Instance.new("Frame", sliderTrack)
		draggable.BorderSizePixel = 0
		draggable.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
		draggable.Size = UDim2.new(0, 0, 1, 0) 
		draggable.BorderColor3 = Color3.fromRGB(0, 0, 0)
		draggable.Name = "Draggable"

		local handleCorner = Instance.new("UICorner", draggable)
		Min     = Min or 0
		Max     = Max or 100
		Default = math.clamp(Default or Min, Min, Max)

		local dragging = false

		local function valueToPercent(v)
			if Max == Min then
				return 0
			end
			return math.clamp((v - Min) / (Max - Min), 0, 1)
		end

		local function percentToValue(p)
			return Min + (Max - Min) * math.clamp(p, 0, 1)
		end

		local function setPercent(p)
			p = math.clamp(p, 0, 1)
			local tweenInfo = TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			TS:Create(draggable, tweenInfo, { Size = UDim2.new(p, 0, 1, 0) }):Play()
			local v = math.floor(percentToValue(p) + 0.5)
			valueLabel.Text = tostring(v)
			if Callback then
				Callback(v)
			end
		end

		local function updateFromInput(input)
			local mouseX   = input.Position.X
			local trackPos = sliderTrack.AbsolutePosition.X
			local trackW   = sliderTrack.AbsoluteSize.X
			if trackW <= 0 then
				return
			end
			local rel = (mouseX - trackPos) / trackW
			setPercent(rel)
		end

		draggable.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1
				or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		UIS.InputChanged:Connect(function(input)
			if not dragging then
				return
			end
			if input.UserInputType == Enum.UserInputType.MouseMovement
				or input.UserInputType == Enum.UserInputType.Touch then
				updateFromInput(input)
			end
		end)

		sliderTrack.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1
				or input.UserInputType == Enum.UserInputType.Touch then
				updateFromInput(input)
			end
		end)

		setPercent(valueToPercent(Default))
	end
	function lib.Tree:Toggle(Tab, Name, Default, Callback)
		local TS = game:GetService("TweenService")

		local row = Instance.new("TextLabel", lib.Tree["8"][Tab])
		row.BorderSizePixel = 0
		row.TextSize = 30
		row.TextXAlignment = Enum.TextXAlignment.Left
		row.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
		row.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
		row.TextColor3 = Color3.fromRGB(196, 196, 196)
		row.Size = UDim2.new(0, 450, 0, 50)
		row.BorderColor3 = Color3.fromRGB(0, 0, 0)
		row.Text = Name
		row.Name = "Toggle"

		local padding = Instance.new("UIPadding", row)
		padding.PaddingLeft = UDim.new(0, 15)

		local textConstraint = Instance.new("UITextSizeConstraint", row)
		textConstraint.MaxTextSize = 25

		local stroke = Instance.new("UIStroke", row)
		stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		stroke.Thickness = 3
		stroke.Color = Color3.fromRGB(31, 31, 31)

		local box = Instance.new("Frame", row)
		box.BorderSizePixel = 0
		box.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		box.Size = UDim2.new(0.05402, 0, 0.46, 0)
		box.Position = UDim2.new(0.89885, 0, 0.25316, 0)
		box.BorderColor3 = Color3.fromRGB(0, 0, 0)
		box.Name = "ToggleBox"

		local boxCorner = Instance.new("UICorner", box)

		local boxStroke = Instance.new("UIStroke", box)
		boxStroke.Thickness = 4
		boxStroke.Color = Color3.fromRGB(31, 31, 31)

		local button = Instance.new("TextButton", box)
		button.BackgroundTransparency = 1
		button.BorderSizePixel = 0
		button.Size = UDim2.new(1, 0, 1, 0)
		button.Text = ""
		button.Name = "Hitbox"

		local state = Default and true or false

		local function applyState(instant)
			local targetColor = state and Color3.fromRGB(11, 117, 255) or Color3.fromRGB(40, 40, 40)
			local tInfo = TweenInfo.new(instant and 0 or 0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			TS:Create(box, tInfo, {BackgroundColor3 = targetColor}):Play()

			if Callback then
				Callback(state)
			end
		end

		button.MouseButton1Click:Connect(function()
			state = not state
			applyState(false)
		end)

		-- Initial visual
		applyState(true)
	end

end

return lib
