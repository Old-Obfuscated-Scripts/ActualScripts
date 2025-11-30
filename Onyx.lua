--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 87 | Scripts: 21 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.ScreenGui.Main
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["Visible"] = false;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 500, 0, 300);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[Main]];
G2L["2"]["BackgroundTransparency"] = 0.2;


-- StarterGui.ScreenGui.Main.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);



-- StarterGui.ScreenGui.Main.Frame
G2L["4"] = Instance.new("Frame", G2L["2"]);
G2L["4"]["ZIndex"] = 2;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Frame.UICorner
G2L["5"] = Instance.new("UICorner", G2L["4"]);



-- StarterGui.ScreenGui.Main.Frame.UIStroke
G2L["6"] = Instance.new("UIStroke", G2L["4"]);
G2L["6"]["Transparency"] = 0.5;
G2L["6"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScreenGui.Main.ImageLabel
G2L["7"] = Instance.new("ImageLabel", G2L["2"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["ScaleType"] = Enum.ScaleType.Tile;
G2L["7"]["ImageTransparency"] = 0.98;
G2L["7"]["Image"] = [[rbxassetid://9968344105]];
G2L["7"]["TileSize"] = UDim2.new(0, 128, 0, 128);
G2L["7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.ImageLabel.UICorner
G2L["8"] = Instance.new("UICorner", G2L["7"]);



-- StarterGui.ScreenGui.Main.ImageLabel
G2L["9"] = Instance.new("ImageLabel", G2L["2"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["ScaleType"] = Enum.ScaleType.Tile;
G2L["9"]["ImageTransparency"] = 0.94;
G2L["9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["9"]["Image"] = [[rbxassetid://9968344227]];
G2L["9"]["TileSize"] = UDim2.new(0, 128, 0, 128);
G2L["9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.ImageLabel.UICorner
G2L["a"] = Instance.new("UICorner", G2L["9"]);



-- StarterGui.ScreenGui.Main.ImageLabel
G2L["b"] = Instance.new("ImageLabel", G2L["2"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["SliceCenter"] = Rect.new(99, 99, 99, 99);
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["b"]["ImageTransparency"] = 0.7;
G2L["b"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["b"]["Image"] = [[rbxassetid://8992230677]];
G2L["b"]["Size"] = UDim2.new(1, 70, 1, 64);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Main.sep
G2L["c"] = Instance.new("Frame", G2L["2"]);
G2L["c"]["ZIndex"] = 3;
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["c"]["Size"] = UDim2.new(0, 1, 0.84833, 0);
G2L["c"]["Position"] = UDim2.new(0.202, 0, 0.57583, 0);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Name"] = [[sep]];


-- StarterGui.ScreenGui.Main.content
G2L["d"] = Instance.new("Frame", G2L["2"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["Size"] = UDim2.new(0, 500, 0, 256);
G2L["d"]["Position"] = UDim2.new(0, 0, 0.14667, 0);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Name"] = [[content]];
G2L["d"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.topbar
G2L["e"] = Instance.new("Frame", G2L["2"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["Size"] = UDim2.new(0, 500, 0, 45);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Name"] = [[topbar]];
G2L["e"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.topbar.TextLabel
G2L["f"] = Instance.new("TextLabel", G2L["e"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["TextSize"] = 14;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["f"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["f"]["BackgroundTransparency"] = 1;
G2L["f"]["RichText"] = true;
G2L["f"]["Size"] = UDim2.new(0, 0, 0, 44);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Text"] = [[Onyx]];
G2L["f"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["f"]["Position"] = UDim2.new(-0.01667, 0, 0, 0);


-- StarterGui.ScreenGui.Main.topbar.TextButton
G2L["10"] = Instance.new("TextButton", G2L["e"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["10"]["TextSize"] = 14;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["10"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["10"]["Size"] = UDim2.new(0, 38, 0, 24);
G2L["10"]["BackgroundTransparency"] = 1;
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Text"] = [[X]];
G2L["10"]["Position"] = UDim2.new(0.89375, 0, 0.22222, 0);


-- StarterGui.ScreenGui.Main.topbar.TextButton.LocalScript
G2L["11"] = Instance.new("LocalScript", G2L["10"]);



-- StarterGui.ScreenGui.Main.topbar.TextButton
G2L["12"] = Instance.new("TextButton", G2L["e"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["12"]["TextSize"] = 14;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["12"]["RichText"] = true;
G2L["12"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["12"]["Size"] = UDim2.new(0, 38, 0, 24);
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Text"] = [[—]];
G2L["12"]["Position"] = UDim2.new(0.83333, 0, 0.22222, 0);


-- StarterGui.ScreenGui.Main.topbar.TextButton.LocalScript
G2L["13"] = Instance.new("LocalScript", G2L["12"]);



-- StarterGui.ScreenGui.Main.topbar.UIPadding
G2L["14"] = Instance.new("UIPadding", G2L["e"]);
G2L["14"]["PaddingLeft"] = UDim.new(0, 20);


-- StarterGui.ScreenGui.Main.UIDrag
G2L["15"] = Instance.new("LocalScript", G2L["2"]);
G2L["15"]["Name"] = [[UIDrag]];


-- StarterGui.ScreenGui.Main.sep
G2L["16"] = Instance.new("Frame", G2L["2"]);
G2L["16"]["ZIndex"] = 3;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["16"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["16"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["16"]["Position"] = UDim2.new(0.5, 0, 0.15, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Name"] = [[sep]];


-- StarterGui.ScreenGui.Main.Buttons
G2L["17"] = Instance.new("Frame", G2L["2"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["Size"] = UDim2.new(0, 100, 0, 255);
G2L["17"]["Position"] = UDim2.new(0, 0, 0.15, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Name"] = [[Buttons]];
G2L["17"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Buttons.TextButton
G2L["18"] = Instance.new("TextButton", G2L["17"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["18"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["18"]["TextSize"] = 14;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["18"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["18"]["Size"] = UDim2.new(0, 0, 0, 50);
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[Lighting]];
G2L["18"]["Position"] = UDim2.new(0.23, 0, -0.00392, 0);


-- StarterGui.ScreenGui.Main.Buttons.TextButton.UIPadding
G2L["19"] = Instance.new("UIPadding", G2L["18"]);
G2L["19"]["PaddingRight"] = UDim.new(0, 9);


-- StarterGui.ScreenGui.Main.Buttons.TextButton.LocalScript
G2L["1a"] = Instance.new("LocalScript", G2L["18"]);



-- StarterGui.ScreenGui.Main.Buttons.UIListLayout
G2L["1b"] = Instance.new("UIListLayout", G2L["17"]);
G2L["1b"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1b"]["Padding"] = UDim.new(0, 2);
G2L["1b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Buttons.TextButton
G2L["1c"] = Instance.new("TextButton", G2L["17"]);
G2L["1c"]["TextWrapped"] = true;
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["1c"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["1c"]["TextSize"] = 14;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1c"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["1c"]["Size"] = UDim2.new(0, 57, 0, 50);
G2L["1c"]["BackgroundTransparency"] = 1;
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Text"] = [[Human-oid]];
G2L["1c"]["Position"] = UDim2.new(0.44, 0, 0.2, 0);


-- StarterGui.ScreenGui.Main.Buttons.TextButton.UIPadding
G2L["1d"] = Instance.new("UIPadding", G2L["1c"]);
G2L["1d"]["PaddingRight"] = UDim.new(0, 9);


-- StarterGui.ScreenGui.Main.Buttons.TextButton.LocalScript
G2L["1e"] = Instance.new("LocalScript", G2L["1c"]);



-- StarterGui.ScreenGui.Main.Icons
G2L["1f"] = Instance.new("Frame", G2L["2"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["Size"] = UDim2.new(0, 52, 0, 255);
G2L["1f"]["Position"] = UDim2.new(0, 0, 0.15, 0);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Name"] = [[Icons]];
G2L["1f"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Icons.Lighting
G2L["20"] = Instance.new("ImageLabel", G2L["1f"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["ImageColor3"] = Color3.fromRGB(151, 151, 151);
G2L["20"]["Image"] = [[rbxassetid://10709805727]];
G2L["20"]["Size"] = UDim2.new(0, 21, 0, 21);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["BackgroundTransparency"] = 1;
G2L["20"]["Name"] = [[Lighting]];
G2L["20"]["Position"] = UDim2.new(0.23077, 0, 0.0549, 0);


-- StarterGui.ScreenGui.Main.Icons.hum
G2L["21"] = Instance.new("ImageLabel", G2L["1f"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["ImageColor3"] = Color3.fromRGB(151, 151, 151);
G2L["21"]["Image"] = [[rbxassetid://16642160856]];
G2L["21"]["Size"] = UDim2.new(0, 21, 0, 21);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["BackgroundTransparency"] = 1;
G2L["21"]["Name"] = [[hum]];
G2L["21"]["Position"] = UDim2.new(0.21154, 0, 0.25882, 0);


-- StarterGui.ScreenGui.Main.Humanoid
G2L["22"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["22"]["Active"] = true;
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["Name"] = [[Humanoid]];
G2L["22"]["Size"] = UDim2.new(0, 399, 0, 253);
G2L["22"]["Position"] = UDim2.new(0.202, 0, 0.15667, 0);
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["ScrollBarThickness"] = 1;
G2L["22"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Humanoid.UIListLayout
G2L["23"] = Instance.new("UIListLayout", G2L["22"]);
G2L["23"]["Padding"] = UDim.new(0, 5);
G2L["23"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Humanoid.ws
G2L["24"] = Instance.new("TextBox", G2L["22"]);
G2L["24"]["CursorPosition"] = -1;
G2L["24"]["Name"] = [[ws]];
G2L["24"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextSize"] = 14;
G2L["24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["24"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["24"]["PlaceholderText"] = [[WalkSpeed (number)]];
G2L["24"]["Size"] = UDim2.new(0, 0, 0, 50);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[]];
G2L["24"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Humanoid.ws.bazinga
G2L["25"] = Instance.new("LocalScript", G2L["24"]);
G2L["25"]["Name"] = [[bazinga]];


-- StarterGui.ScreenGui.Main.Humanoid.jp
G2L["26"] = Instance.new("TextBox", G2L["22"]);
G2L["26"]["Name"] = [[jp]];
G2L["26"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["TextSize"] = 14;
G2L["26"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["26"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["26"]["PlaceholderText"] = [[Jumppower  (number)]];
G2L["26"]["Size"] = UDim2.new(0, 0, 0, 50);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Text"] = [[]];
G2L["26"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Humanoid.jp.bazinga
G2L["27"] = Instance.new("LocalScript", G2L["26"]);
G2L["27"]["Name"] = [[bazinga]];


-- StarterGui.ScreenGui.Main.Humanoid.hh
G2L["28"] = Instance.new("TextBox", G2L["22"]);
G2L["28"]["Name"] = [[hh]];
G2L["28"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["TextSize"] = 14;
G2L["28"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["28"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["28"]["PlaceholderText"] = [[Hipheight (number)]];
G2L["28"]["Size"] = UDim2.new(0, 0, 0, 50);
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["Text"] = [[]];
G2L["28"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Humanoid.hh.bazinga
G2L["29"] = Instance.new("LocalScript", G2L["28"]);
G2L["29"]["Name"] = [[bazinga]];


-- StarterGui.ScreenGui.Main.Humanoid.UIPadding
G2L["2a"] = Instance.new("UIPadding", G2L["22"]);
G2L["2a"]["PaddingLeft"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.Main.Humanoid.J
G2L["2b"] = Instance.new("TextButton", G2L["22"]);
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["2b"]["TextSize"] = 14;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2b"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["2b"]["Size"] = UDim2.new(0, 0, 0, 50);
G2L["2b"]["BackgroundTransparency"] = 1;
G2L["2b"]["Name"] = [[J]];
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["Text"] = [[Jump!]];


-- StarterGui.ScreenGui.Main.Humanoid.J.LocalScript
G2L["2c"] = Instance.new("LocalScript", G2L["2b"]);



-- StarterGui.ScreenGui.Main.Humanoid.Roottype
G2L["2d"] = Instance.new("TextBox", G2L["22"]);
G2L["2d"]["Name"] = [[Roottype]];
G2L["2d"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["TextSize"] = 14;
G2L["2d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2d"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["2d"]["PlaceholderText"] = [[RootType (R6, R15?)]];
G2L["2d"]["Size"] = UDim2.new(0, 0, 0, 50);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["Text"] = [[]];
G2L["2d"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Humanoid.Roottype.bazinga
G2L["2e"] = Instance.new("LocalScript", G2L["2d"]);
G2L["2e"]["Name"] = [[bazinga]];


-- StarterGui.ScreenGui.Main.Humanoid.h
G2L["2f"] = Instance.new("TextBox", G2L["22"]);
G2L["2f"]["Name"] = [[h]];
G2L["2f"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["TextSize"] = 14;
G2L["2f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2f"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["2f"]["PlaceholderText"] = [[Health (number)]];
G2L["2f"]["Size"] = UDim2.new(0, 0, 0, 50);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["Text"] = [[]];
G2L["2f"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Humanoid.h.bazinga
G2L["30"] = Instance.new("LocalScript", G2L["2f"]);
G2L["30"]["Name"] = [[bazinga]];


-- StarterGui.ScreenGui.Main.Lighting
G2L["31"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["31"]["Visible"] = false;
G2L["31"]["Active"] = true;
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["Name"] = [[Lighting]];
G2L["31"]["Size"] = UDim2.new(0, 399, 0, 253);
G2L["31"]["Position"] = UDim2.new(0.202, 0, 0.15667, 0);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["ScrollBarThickness"] = 1;
G2L["31"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Lighting.UIListLayout
G2L["32"] = Instance.new("UIListLayout", G2L["31"]);
G2L["32"]["Padding"] = UDim.new(0, 5);
G2L["32"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Main.Lighting.Ambient
G2L["33"] = Instance.new("TextBox", G2L["31"]);
G2L["33"]["Name"] = [[Ambient]];
G2L["33"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["TextSize"] = 14;
G2L["33"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["33"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["33"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["33"]["PlaceholderText"] = [[Ambient (number, number number)]];
G2L["33"]["Size"] = UDim2.new(0, 0, 0, 50);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Text"] = [[]];
G2L["33"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Lighting.Ambient.bazinga
G2L["34"] = Instance.new("LocalScript", G2L["33"]);
G2L["34"]["Name"] = [[bazinga]];


-- StarterGui.ScreenGui.Main.Lighting.Brightness
G2L["35"] = Instance.new("TextBox", G2L["31"]);
G2L["35"]["Name"] = [[Brightness]];
G2L["35"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["TextSize"] = 14;
G2L["35"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["35"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["35"]["PlaceholderText"] = [[Brightness  (number)]];
G2L["35"]["Size"] = UDim2.new(0, 0, 0, 50);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Text"] = [[]];
G2L["35"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Lighting.Brightness.bazinga
G2L["36"] = Instance.new("LocalScript", G2L["35"]);
G2L["36"]["Name"] = [[bazinga]];


-- StarterGui.ScreenGui.Main.Lighting.Shadow_Softness
G2L["37"] = Instance.new("TextBox", G2L["31"]);
G2L["37"]["Name"] = [[Shadow_Softness]];
G2L["37"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["TextSize"] = 14;
G2L["37"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["37"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["37"]["PlaceholderText"] = [[Shadow Softness (number)]];
G2L["37"]["Size"] = UDim2.new(0, 0, 0, 50);
G2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["Text"] = [[]];
G2L["37"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Lighting.Shadow_Softness.bazinga
G2L["38"] = Instance.new("LocalScript", G2L["37"]);
G2L["38"]["Name"] = [[bazinga]];


-- StarterGui.ScreenGui.Main.Lighting.Time
G2L["39"] = Instance.new("TextBox", G2L["31"]);
G2L["39"]["Name"] = [[Time]];
G2L["39"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["TextSize"] = 14;
G2L["39"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["39"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["39"]["PlaceholderText"] = [[Time (number:number:number)]];
G2L["39"]["Size"] = UDim2.new(0, 0, 0, 50);
G2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["Text"] = [[]];
G2L["39"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Lighting.Time.bazinga
G2L["3a"] = Instance.new("LocalScript", G2L["39"]);
G2L["3a"]["Name"] = [[bazinga]];


-- StarterGui.ScreenGui.Main.Lighting.GlobalShadows
G2L["3b"] = Instance.new("TextBox", G2L["31"]);
G2L["3b"]["Name"] = [[GlobalShadows]];
G2L["3b"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["TextSize"] = 14;
G2L["3b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3b"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["3b"]["PlaceholderText"] = [[GlobalShadows  (Y/N)]];
G2L["3b"]["Size"] = UDim2.new(0, 0, 0, 50);
G2L["3b"]["Position"] = UDim2.new(0, 0, 0.86957, 0);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Text"] = [[]];
G2L["3b"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Main.Lighting.GlobalShadows.bazinga
G2L["3c"] = Instance.new("LocalScript", G2L["3b"]);
G2L["3c"]["Name"] = [[bazinga]];


-- StarterGui.ScreenGui.Main.Lighting.UIPadding
G2L["3d"] = Instance.new("UIPadding", G2L["31"]);
G2L["3d"]["PaddingLeft"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.Key
G2L["3e"] = Instance.new("Frame", G2L["1"]);
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["3e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3e"]["Size"] = UDim2.new(0, 500, 0, 300);
G2L["3e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["Name"] = [[Key]];
G2L["3e"]["BackgroundTransparency"] = 0.2;


-- StarterGui.ScreenGui.Key.UICorner
G2L["3f"] = Instance.new("UICorner", G2L["3e"]);



-- StarterGui.ScreenGui.Key.ImageLabel
G2L["40"] = Instance.new("ImageLabel", G2L["3e"]);
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["ScaleType"] = Enum.ScaleType.Tile;
G2L["40"]["ImageTransparency"] = 0.98;
G2L["40"]["Image"] = [[rbxassetid://9968344105]];
G2L["40"]["TileSize"] = UDim2.new(0, 128, 0, 128);
G2L["40"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Key.ImageLabel.UICorner
G2L["41"] = Instance.new("UICorner", G2L["40"]);



-- StarterGui.ScreenGui.Key.ImageLabel
G2L["42"] = Instance.new("ImageLabel", G2L["3e"]);
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["ScaleType"] = Enum.ScaleType.Tile;
G2L["42"]["ImageTransparency"] = 0.94;
G2L["42"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["42"]["Image"] = [[rbxassetid://9968344227]];
G2L["42"]["TileSize"] = UDim2.new(0, 128, 0, 128);
G2L["42"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Key.ImageLabel.UICorner
G2L["43"] = Instance.new("UICorner", G2L["42"]);



-- StarterGui.ScreenGui.Key.ImageLabel
G2L["44"] = Instance.new("ImageLabel", G2L["3e"]);
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["SliceCenter"] = Rect.new(99, 99, 99, 99);
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["44"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["44"]["ImageTransparency"] = 0.7;
G2L["44"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["44"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["44"]["Image"] = [[rbxassetid://8992230677]];
G2L["44"]["Size"] = UDim2.new(1, 70, 1, 64);
G2L["44"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["44"]["BackgroundTransparency"] = 1;
G2L["44"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.Key.UIDrag
G2L["45"] = Instance.new("LocalScript", G2L["3e"]);
G2L["45"]["Name"] = [[UIDrag]];


-- StarterGui.ScreenGui.Key.topbar
G2L["46"] = Instance.new("Frame", G2L["3e"]);
G2L["46"]["BorderSizePixel"] = 0;
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["46"]["Size"] = UDim2.new(0, 500, 0, 45);
G2L["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["46"]["Name"] = [[topbar]];
G2L["46"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Key.topbar.TextLabel
G2L["47"] = Instance.new("TextLabel", G2L["46"]);
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["TextSize"] = 14;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["47"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["47"]["BackgroundTransparency"] = 1;
G2L["47"]["RichText"] = true;
G2L["47"]["Size"] = UDim2.new(0, 0, 0, 44);
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Text"] = [[Onyx]];
G2L["47"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["47"]["Position"] = UDim2.new(-0.01667, 0, 0, 0);


-- StarterGui.ScreenGui.Key.topbar.TextButton
G2L["48"] = Instance.new("TextButton", G2L["46"]);
G2L["48"]["BorderSizePixel"] = 0;
G2L["48"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["48"]["TextSize"] = 14;
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["48"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["48"]["Size"] = UDim2.new(0, 38, 0, 24);
G2L["48"]["BackgroundTransparency"] = 1;
G2L["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["Text"] = [[X]];
G2L["48"]["Position"] = UDim2.new(0.89375, 0, 0.22222, 0);


-- StarterGui.ScreenGui.Key.topbar.TextButton.LocalScript
G2L["49"] = Instance.new("LocalScript", G2L["48"]);



-- StarterGui.ScreenGui.Key.topbar.TextButton
G2L["4a"] = Instance.new("TextButton", G2L["46"]);
G2L["4a"]["BorderSizePixel"] = 0;
G2L["4a"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["4a"]["TextSize"] = 14;
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["4a"]["RichText"] = true;
G2L["4a"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["4a"]["Size"] = UDim2.new(0, 38, 0, 24);
G2L["4a"]["BackgroundTransparency"] = 1;
G2L["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["Text"] = [[—]];
G2L["4a"]["Position"] = UDim2.new(0.83333, 0, 0.22222, 0);


-- StarterGui.ScreenGui.Key.topbar.TextButton.LocalScript
G2L["4b"] = Instance.new("LocalScript", G2L["4a"]);



-- StarterGui.ScreenGui.Key.topbar.UIPadding
G2L["4c"] = Instance.new("UIPadding", G2L["46"]);
G2L["4c"]["PaddingLeft"] = UDim.new(0, 20);


-- StarterGui.ScreenGui.Key.sep
G2L["4d"] = Instance.new("Frame", G2L["3e"]);
G2L["4d"]["ZIndex"] = 3;
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["4d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4d"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["4d"]["Position"] = UDim2.new(0.5, 0, 0.15, 0);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4d"]["Name"] = [[sep]];


-- StarterGui.ScreenGui.Key.Frame
G2L["4e"] = Instance.new("Frame", G2L["3e"]);
G2L["4e"]["ZIndex"] = 2;
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Key.Frame.UICorner
G2L["4f"] = Instance.new("UICorner", G2L["4e"]);



-- StarterGui.ScreenGui.Key.Frame.UIStroke
G2L["50"] = Instance.new("UIStroke", G2L["4e"]);
G2L["50"]["Transparency"] = 0.5;
G2L["50"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScreenGui.Key.Bazinga
G2L["51"] = Instance.new("ScrollingFrame", G2L["3e"]);
G2L["51"]["Active"] = true;
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["Name"] = [[Bazinga]];
G2L["51"]["Size"] = UDim2.new(0, 500, 0, 253);
G2L["51"]["Position"] = UDim2.new(0, 0, 0.15667, 0);
G2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["ScrollBarThickness"] = 1;
G2L["51"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Key.Bazinga.UIListLayout
G2L["52"] = Instance.new("UIListLayout", G2L["51"]);
G2L["52"]["Padding"] = UDim.new(0, 5);
G2L["52"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.Key.Bazinga.Time
G2L["53"] = Instance.new("TextBox", G2L["51"]);
G2L["53"]["Name"] = [[Time]];
G2L["53"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["TextSize"] = 14;
G2L["53"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["53"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["53"]["PlaceholderText"] = [[Key (join the discord)]];
G2L["53"]["Size"] = UDim2.new(0, 0, 0, 50);
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Text"] = [[]];
G2L["53"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.Key.Bazinga.Time.bazinga
G2L["54"] = Instance.new("LocalScript", G2L["53"]);
G2L["54"]["Name"] = [[bazinga]];


-- StarterGui.ScreenGui.Key.Bazinga.UIPadding
G2L["55"] = Instance.new("UIPadding", G2L["51"]);
G2L["55"]["PaddingLeft"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.Key.Bazinga.catsanddogs
G2L["56"] = Instance.new("TextButton", G2L["51"]);
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["TextColor3"] = Color3.fromRGB(241, 241, 241);
G2L["56"]["TextSize"] = 14;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["56"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["56"]["Size"] = UDim2.new(0, 0, 0, 50);
G2L["56"]["BackgroundTransparency"] = 1;
G2L["56"]["Name"] = [[catsanddogs]];
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Text"] = [[Copy invite.]];


-- StarterGui.ScreenGui.Key.Bazinga.catsanddogs.LocalScript
G2L["57"] = Instance.new("LocalScript", G2L["56"]);



-- StarterGui.ScreenGui.Main.topbar.TextButton.LocalScript
local function C_11()
local script = G2L["11"];
	local tweenservice = game:GetService("TweenService")
	
	local ins = TweenInfo.new(.075, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0)
	local out = TweenInfo.new(.075, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0)
	
	script.Parent.MouseEnter:Connect(function()
		tweenservice:Create(script.Parent, ins, {TextColor3 = Color3.fromRGB(240,240,240)}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		tweenservice:Create(script.Parent, out, {TextColor3 = Color3.fromRGB(150,150,150)}):Play()
	end)
	
	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(script.Parent.Parent.Parent:GetDescendants()) do
			if v:IsA("Frame") or v:IsA("ImageLabel") or v:IsA("ImageButton") or v:IsA("TextBox") or v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("ScrollingFrame") then
				tweenservice:Create(v, out, {Size = UDim2.new(0,0,0)}):Play()
				tweenservice:Create(script.Parent.Parent.Parent, out, {Size = UDim2.new(0,0,0)}):Play()
				wait()
				script.Parent.Parent.Parent.Parent:Destroy()
			end
		end
	end)
end;
task.spawn(C_11);
-- StarterGui.ScreenGui.Main.topbar.TextButton.LocalScript
local function C_13()
local script = G2L["13"];
	local tweenservice = game:GetService("TweenService")
	
	local ins = TweenInfo.new(.075, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0)
	local out = TweenInfo.new(.075, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0)
	
	script.Parent.MouseEnter:Connect(function()
		tweenservice:Create(script.Parent, ins, {TextColor3 = Color3.fromRGB(240,240,240)}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		tweenservice:Create(script.Parent, out, {TextColor3 = Color3.fromRGB(150,150,150)}):Play()
	end)
	
end;
task.spawn(C_13);
-- StarterGui.ScreenGui.Main.UIDrag
local function C_15()
local script = G2L["15"];
	-- Made by Real_IceyDev (@lceyDex) --
	-- Simple UI dragger (PC Only/Any device that has a mouse) --
	
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.1
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end;
task.spawn(C_15);
-- StarterGui.ScreenGui.Main.Buttons.TextButton.LocalScript
local function C_1a()
local script = G2L["1a"];
	local tweenservice = game:GetService("TweenService")
	
	local ins = TweenInfo.new(.075, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0)
	local out = TweenInfo.new(.075, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0)
	
	script.Parent.MouseEnter:Connect(function()
		tweenservice:Create(script.Parent, ins, {TextColor3 = Color3.fromRGB(240,240,240)}):Play()
		tweenservice:Create(script.Parent.Parent.Parent.Icons.Lighting, ins, {ImageColor3 = Color3.fromRGB(240,240,240)}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		tweenservice:Create(script.Parent, out, {TextColor3 = Color3.fromRGB(150,150,150)}):Play()
		tweenservice:Create(script.Parent.Parent.Parent.Icons.Lighting, out, {ImageColor3 = Color3.fromRGB(150,150,150)}):Play()
	end)
	
	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Parent.Parent.Parent.Main.Lighting.Visible == true then
			return
		else
			script.Parent.Parent.Parent.Parent.Main.Lighting.Visible = true
			script.Parent.Parent.Parent.Parent.Main.Humanoid.Visible = false
		end
	end)
end;
task.spawn(C_1a);
-- StarterGui.ScreenGui.Main.Buttons.TextButton.LocalScript
local function C_1e()
local script = G2L["1e"];
	local tweenservice = game:GetService("TweenService")
	
	local ins = TweenInfo.new(.075, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0)
	local out = TweenInfo.new(.075, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0)
	
	script.Parent.MouseEnter:Connect(function()
		tweenservice:Create(script.Parent, ins, {TextColor3 = Color3.fromRGB(240,240,240)}):Play()
		tweenservice:Create(script.Parent.Parent.Parent.Icons.hum, ins, {ImageColor3 = Color3.fromRGB(240,240,240)}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		tweenservice:Create(script.Parent, out, {TextColor3 = Color3.fromRGB(150,150,150)}):Play()
		tweenservice:Create(script.Parent.Parent.Parent.Icons.hum, out, {ImageColor3 = Color3.fromRGB(150,150,150)}):Play()
	end)
	
	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Parent.Parent.Parent.Main.Humanoid.Visible == true then
			return
		else
			script.Parent.Parent.Parent.Parent.Main.Lighting.Visible = false
			script.Parent.Parent.Parent.Parent.Main.Humanoid.Visible = true
		end
	end)
end;
task.spawn(C_1e);
-- StarterGui.ScreenGui.Main.Humanoid.ws.bazinga
local function C_25()
local script = G2L["25"];
	script.Parent.FocusLost:Connect(function(enter)
		local banana = script.Parent.Text
		if enter then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(banana)
		end
	end)
end;
task.spawn(C_25);
-- StarterGui.ScreenGui.Main.Humanoid.jp.bazinga
local function C_27()
local script = G2L["27"];
	script.Parent.FocusLost:Connect(function(enter)
		local banana = script.Parent.Text
		if enter then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(banana)
		end
	end)
end;
task.spawn(C_27);
-- StarterGui.ScreenGui.Main.Humanoid.hh.bazinga
local function C_29()
local script = G2L["29"];
	script.Parent.FocusLost:Connect(function(enter)
		local banana = script.Parent.Text
		if enter then
			game.Players.LocalPlayer.Character.Humanoid.HipHeight = tonumber(banana)
		end
	end)
end;
task.spawn(C_29);
-- StarterGui.ScreenGui.Main.Humanoid.J.LocalScript
local function C_2c()
local script = G2L["2c"];
	script.Parent.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end)
end;
task.spawn(C_2c);
-- StarterGui.ScreenGui.Main.Humanoid.Roottype.bazinga
local function C_2e()
local script = G2L["2e"];
	AvatarEditorService = cloneref(game:GetService("AvatarEditorService"))
	
	promptNewRig = function(speaker, rig)
		local humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
		if humanoid then
			AvatarEditorService:PromptSaveAvatar(humanoid.HumanoidDescription, Enum.HumanoidRigType[rig])
			local result = AvatarEditorService.PromptSaveAvatarCompleted:Wait()
			if result == Enum.AvatarPromptResult.Success then
				game.Players.LocalPlayer.Character.Humanoid.Health = 0
			end
		end
	end
	
	script.Parent.FocusLost:Connect(function(enter)
		local banana = script.Parent.Text
		local player = game.Players.LocalPlayer
	
		if enter then
			if banana == "R6" or banana == "r6" then
				promptNewRig(player, "R6")
			elseif banana == "R15" or banana == "r15" then
				promptNewRig(player, "R15")
			else
				print("Invalid humanoid type")
			end
		end
	end)
	
end;
task.spawn(C_2e);
-- StarterGui.ScreenGui.Main.Humanoid.h.bazinga
local function C_30()
local script = G2L["30"];
	script.Parent.FocusLost:Connect(function(enter)
		local banana = script.Parent.Text
		if enter then
			game.Players.LocalPlayer.Character.Humanoid.Health = tonumber(banana)
		end
	end)
end;
task.spawn(C_30);
-- StarterGui.ScreenGui.Main.Lighting.Ambient.bazinga
local function C_34()
local script = G2L["34"];
	script.Parent.FocusLost:Connect(function(enter)
		local banana = script.Parent.Text
		local args = banana:split(",")
		if enter then
			if game:GetService("Lighting") then
				game:GetService("Lighting").Ambient = Color3.fromRGB(args[1], args[2], args[3])
			end
		end
	end)
end;
task.spawn(C_34);
-- StarterGui.ScreenGui.Main.Lighting.Brightness.bazinga
local function C_36()
local script = G2L["36"];
	script.Parent.FocusLost:Connect(function(e)
		if e then
			game:GetService("Lighting").Brightness = tonumber(script.Parent.Text)
		end
	end)
end;
task.spawn(C_36);
-- StarterGui.ScreenGui.Main.Lighting.Shadow_Softness.bazinga
local function C_38()
local script = G2L["38"];
	script.Parent.FocusLost:Connect(function(e)
		if e then
			game:GetService("Lighting").ShadowSoftness = tonumber(script.Parent.Text)
		end
	end)
end;
task.spawn(C_38);
-- StarterGui.ScreenGui.Main.Lighting.Time.bazinga
local function C_3a()
local script = G2L["3a"];
	script.Parent.FocusLost:Connect(function(enter)
		local banana = script.Parent.Text
		local args = banana:split(":")
		if enter then
			if game:GetService("Lighting") then
				game:GetService("Lighting").TimeOfDay = args[1]..":"..args[2]..":"..args[3]	
			end
		end
	end)
end;
task.spawn(C_3a);
-- StarterGui.ScreenGui.Main.Lighting.GlobalShadows.bazinga
local function C_3c()
local script = G2L["3c"];
	script.Parent.FocusLost:Connect(function(enter)
		local banana = script.Parent.Text
		local args = banana:split(":")
		if enter then
			if script.Parent.Text == "Y" then
				game:GetService("Lighting").GlobalShadows = true
			elseif script.Parent.Text == "N" then
				game:GetService("Lighting").GlobalShadows = false
			else
				script.Parent.Text = "INVAILD CHOOSE BETWEEN Y AND N"
				wait(1)
				script.Parent.Text = ""
			end
			
		end
	end)
end;
task.spawn(C_3c);
-- StarterGui.ScreenGui.Key.UIDrag
local function C_45()
local script = G2L["45"];
	-- Made by Real_IceyDev (@lceyDex) --
	-- Simple UI dragger (PC Only/Any device that has a mouse) --
	
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.1
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end;
task.spawn(C_45);
-- StarterGui.ScreenGui.Key.topbar.TextButton.LocalScript
local function C_49()
local script = G2L["49"];
	local tweenservice = game:GetService("TweenService")
	
	local ins = TweenInfo.new(.075, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0)
	local out = TweenInfo.new(.075, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0)
	
	script.Parent.MouseEnter:Connect(function()
		tweenservice:Create(script.Parent, ins, {TextColor3 = Color3.fromRGB(240,240,240)}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		tweenservice:Create(script.Parent, out, {TextColor3 = Color3.fromRGB(150,150,150)}):Play()
	end)
	
	script.Parent.MouseButton1Click:Connect(function()
		for i,v in pairs(script.Parent.Parent.Parent:GetDescendants()) do
			if v:IsA("Frame") or v:IsA("ImageLabel") or v:IsA("ImageButton") or v:IsA("TextBox") or v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("ScrollingFrame") then
				tweenservice:Create(v, out, {Size = UDim2.new(0,0,0)}):Play()
				tweenservice:Create(script.Parent.Parent.Parent, out, {Size = UDim2.new(0,0,0)}):Play()
				wait()
				script.Parent.Parent.Parent.Parent:Destroy()
			end
		end
	end)
end;
task.spawn(C_49);
-- StarterGui.ScreenGui.Key.topbar.TextButton.LocalScript
local function C_4b()
local script = G2L["4b"];
	local tweenservice = game:GetService("TweenService")
	
	local ins = TweenInfo.new(.075, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0)
	local out = TweenInfo.new(.075, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0)
	
	script.Parent.MouseEnter:Connect(function()
		tweenservice:Create(script.Parent, ins, {TextColor3 = Color3.fromRGB(240,240,240)}):Play()
	end)
	
	script.Parent.MouseLeave:Connect(function()
		tweenservice:Create(script.Parent, out, {TextColor3 = Color3.fromRGB(150,150,150)}):Play()
	end)
	
end;
task.spawn(C_4b);
-- StarterGui.ScreenGui.Key.Bazinga.Time.bazinga
local function C_54()
local script = G2L["54"];
	local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
	
	local completed = false
	
	script.Parent.FocusLost:Connect(function(enter)
		local banana = script.Parent.Text
		if banana == "bazingachinabazingachinabazinga" then
			script.Parent.Parent.Parent.Parent.Key.Visible = false
			script.Parent.Parent.Parent.Parent.Main.Visible = true
			
			Fluent:Notify({
				Title = "You hacked the matrix",
				Content = "Your key you have inputted, is invaild.",
				SubContent = "bazinga", -- Optional
				Duration = 5 -- Set to nil to make the notification not disappear
			})
			
			completed = true
		else
			Fluent:Notify({
				Title = "Failed. ❌",
				Content = "Your key you have inputted, is invaild.",
				SubContent = "bazinga", -- Optional
				Duration = 5 -- Set to nil to make the notification not disappear
			})
		end
	end)
	
	while wait() do
		if completed == false then
			if script.Parent.Parent.Parent.Parent.Main.Visible == true then
				game.Players.LocalPlayer:Kick(":( imagine bypassing")
			end
		end
	end
end;
task.spawn(C_54);
-- StarterGui.ScreenGui.Key.Bazinga.catsanddogs.LocalScript
local function C_57()
local script = G2L["57"];
	script.Parent.MouseButton1Click:Connect(function()
		setclipboard("https://discord.gg/MN8tAa5Ben")
	end)
end;
task.spawn(C_57);

return G2L["1"], require;
