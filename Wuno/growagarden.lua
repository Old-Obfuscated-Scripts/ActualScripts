-- \ Services /
local RS = game:GetService("ReplicatedStorage")
local IS = game:GetService("InsertService")
local MPS = game:GetService("Marketplace Service")
local P = game:GetService("Players")
local RSS = game:GetService("RunService")
local VirtualInputManager = game:GetService("VirtualInputManager")

-- Variables /
local lplr = game.Players.LocalPlayer
local char = lplr.Character or lplr.CharacterAdded:Wait()
local hrp = char.HumanoidRootPart
local humanoid = char.Humanoid
local playerGui = lplr:FindFirstChild("PlayerGui")
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/mr-suno/Fluent/master/Addons/InterfaceManager.lua"))()
local Fluent = loadstring(game:HttpGet("https://github.com/mr-suno/Fluent/releases/latest/download/main.lua"))()
local backpack = lplr.Backpack
local FrameTimer = tick()
local FrameCounter = 0
local FPS = 60
local egg_predictor = false
local plot = nil
local better_drawing = loadstring(game:HttpGet("https://raw.githubusercontent.com/xxpwnxxx420lord/Wuno/refs/heads/main/Modules/betterdrawing.lua", true))()
local farms = workspace:FindFirstChild("Farm")
local camera = workspace.Camera
local httpRequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

for _, v in farms:GetDescendants() do
	if v.Name == "Owner" and v.Value == lplr.Name then
		plot = v.Parent.Parent.Parent
		break
	end
end

local object_physical = plot.Important:FindFirstChild("Objects_Physical")
justloaded = true

local function script()
	humanoid.WalkSpeed = 30 -- Adjust walk speed
	getgenv().AutoCollectFruits = false

	local Window = Fluent:CreateWindow({
		Title = "Wuno " .. "1.0",
		SubTitle = "by Syntaxical (imanewma__n on discord)",
		TabWidth = 200,
		Size = UDim2.fromOffset(625, 560),
		Acrylic = false,
		Theme = "Amethyst",
		MinimizeKey = Enum.KeyCode.LeftControl
	})

	local Farm = Window:AddTab({
		Title = "Farm",
		Icon = "shopping-bag"
	})

	local Misc = Window:AddTab({
		Title = "Misc",
		Icon = "citrus"
	})

	local UI = Window:AddTab({
		Title = "UI",
		Icon = "square"
	})

	local Settings = Window:AddTab({
		Title = "Settings",
		Icon = "settings"
	})

	Settings:AddParagraph({
		Title = "FPS VALUE",
		Content = "FPS: 0"
	})

	InterfaceManager:SetLibrary(Fluent)

	Farm:AddButton({
		Title = "Sell inventory",
		Description = "Awh I'm such a coding degenerate!",
		Callback = function()
			local oldpos = hrp.CFrame
			hrp.CFrame = CFrame.new(63.8084984, 3, 0.910128236, 0.0424572676, 2.49117331e-08, -0.999098301, 1.21923929e-08, 1, 2.54523407e-08, 0.999098301, -1.32620359e-08, 0.0424572676)
			wait(1)
			local remote = RS.GameEvents.Sell_Inventory
			remote:FireServer()
			wait(0.1)
			hrp.CFrame = oldpos
		end
	})


	local function AddSeed(t)
		if playerGui then
			local seedShop = playerGui:FindFirstChild("Seed_Shop")
			if seedShop then
				local scrollingFrame = seedShop:FindFirstChild("Frame"):FindFirstChild("ScrollingFrame")
				if scrollingFrame then
					for _, frame in ipairs(scrollingFrame:GetChildren()) do
						if frame:IsA("Frame") and not string.find(frame.Name, "_Padding") and not frame:FindFirstChild("ItemPadding") then
							table.insert(t, frame.Name)
						end
					end
				end
			end
		end
	end

	local Options = {}
	AddSeed(Options)

	local Cats

	Farm:AddDropdown("Flag", {
		Title = "What to autobuy?",
		Description = "You may only select one value at a time.",
		Values = Options,
		Multi = false,
		Callback = function(Value)
			Cats = Value
		end
	})

	local Autobuy = Farm:AddToggle("Flag", {
		Title = "Autobuy",
		Description = "Starts the Autobuy Process",
		Default = false
	})

	Autobuy:OnChanged(function(Value)
		while Autobuy.Value do
			local remote = RS.GameEvents.BuySeedStock
			remote:FireServer(Cats)
			wait(0.1)
		end
	end)

	local function getHumanoidRootPart()
		if lplr.Character then
			return lplr.Character:FindFirstChild("HumanoidRootPart")
		end
		return nil
	end

	local function getOwnedFarms()
		local farms = {}
		local FarmObjects = workspace.Farm:GetChildren()
		for _, farm in ipairs(FarmObjects) do
			local success, isOwned = pcall(function()
				return farm.Important.Data.Owner.Value == lplr.Name
			end)
			if success and isOwned then
				table.insert(farms, farm)
			end
		end
		return farms
	end

	local function getPlantsFromFarm(farm)
		local plants = {}
		local plantsFolder = farm.Important:FindFirstChild("Plants_Physical")
		if plantsFolder then
			for _, plant in ipairs(plantsFolder:GetChildren()) do
				if plant:IsA("Model") then
					table.insert(plants, plant)
				end
			end
		end
		return plants
	end

	local function getFruitsFromPlant(plant)
		local fruits = {}
		local fruitsFolder = plant:FindFirstChild("Fruits")
		if fruitsFolder then
			for _, fruit in ipairs(fruitsFolder:GetChildren()) do
				if fruit:IsA("Model") and fruit.PrimaryPart then
					table.insert(fruits, fruit)
				end
			end
		end
		return fruits
	end

	local function teleportTo(position)
		local hrp = getHumanoidRootPart()
		if hrp then
			hrp.CFrame = CFrame.new(position) * CFrame.new(0, 3, 0)
		end
	end

	local function spamEUntilFruitGone(fruit)
		if not fruit or not fruit.PrimaryPart then
			return
		end

		local fruitExists = true
		local conn
		conn = fruit.AncestryChanged:Connect(function(_, parent)
			if not parent then
				fruitExists = false
				conn:Disconnect()
			end
		end)

		while fruitExists and getgenv().AutoCollectFruits do
			local ok, err = pcall(function()
				VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
				wait(0.05)
				VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
			end)
			if not ok then
				warn("Error when spamming E key: " .. tostring(err))
				break
			end
			wait(0.2)
		end
	end

	task.spawn(function()
		while true do
			if getgenv().AutoCollectFruits then
				local hrp = getHumanoidRootPart()
				if not hrp then
					print("HumanoidRootPart not found, waiting for character to reload...")
					wait(3)
				else
					local farms = getOwnedFarms()
					if #farms == 0 then
						print("You do not own any farm.")
						wait(5)
					else
						for _, farm in ipairs(farms) do
							local plants = getPlantsFromFarm(farm)
							for _, plant in ipairs(plants) do
								local fruits = getFruitsFromPlant(plant)
								for _, fruit in ipairs(fruits) do
									if not getgenv().AutoCollectFruits then
										break
									end
									if fruit and fruit.PrimaryPart then
										teleportTo(fruit.PrimaryPart.Position)
										wait(0.1)
										spamEUntilFruitGone(fruit)
									end
								end
								if not getgenv().AutoCollectFruits then
									break
								end
							end
							if not getgenv().AutoCollectFruits then
								break
							end
						end
						wait(1)
					end
				end
			else
				wait(1)
			end
		end
	end)

	Farm:AddToggle("AutoCollectFruitsToggle", {
		Title = "Auto Collect Fruits",
		Default = false,
		Callback = function(Value)
			getgenv().AutoCollectFruits = Value
			print("Auto Collect Fruits: " .. tostring(Value))
		end
	})

	local function addEggToggle(eggNumber)
		Farm:AddToggle("Bazinga", {
			Title = "Auto buy egg " .. eggNumber,
			Default = false,
			Callback = function(Value)
				while Value do
					local remote = RS.GameEvents.BuyPetEgg
					remote:FireServer(eggNumber)
					wait(0.1)
				end
			end
		})
	end

	addEggToggle(1)
	addEggToggle(2)
	addEggToggle(3)

	local Dogs
	local Optionspenis = {}

	local function AddGears(t)
		if playerGui then
			local gearShop = playerGui:FindFirstChild("Gear_Shop")
			if gearShop then
				local scrollingFrame = gearShop:FindFirstChild("Frame"):FindFirstChild("ScrollingFrame")
				if scrollingFrame then
					for _, frame in ipairs(scrollingFrame:GetChildren()) do
						if frame:IsA("Frame") and not string.find(frame.Name, "_Padding") and not frame:FindFirstChild("ItemPadding") then
							table.insert(t, frame.Name)
						end
					end
				end
			end
		end
	end

	AddGears(Optionspenis)

	Farm:AddDropdown("Flag", {
		Title = "What to autobuy? (gears)",
		Description = "You may only select one value at a time.",
		Values = Optionspenis,
		Multi = false,
		Callback = function(Value)
			Dogs = Value
		end
	})

	local AutobuyGears = Farm:AddToggle("Flag", {
		Title = "Autobuy (Gears)",
		Description = "Starts the Autobuy Process",
		Default = false
	})

	AutobuyGears:OnChanged(function(Value)
		while AutobuyGears.Value do
			local remote = RS.GameEvents.BuyGearStock
			remote:FireServer(Dogs)
			wait(0.1)
		end
	end)

	local BazingaDogsCatsEatBunnies = Farm:AddToggle("Flag", {
		Title = "Auto Summer Harvest ",
		Description = "B4 starting sell inventory (must have tomatos) & (you have to macro holding e / pressing the harvest button on mobile)",
		Default = false
	})

	-- Placeholder pause function (you can customize this)
	local function pauseFunction()
		hrp.CFrame = CFrame.new(-116.40152, 4.40001249, -12.4976292, 0.871914983, 6.88189727e-09, 0.489657342, -3.53123326e-08, 1, 4.88248695e-08, -0.489657342, -5.98620744e-08, 0.871914983)
		local remote = game:GetService("ReplicatedStorage").GameEvents.SummerHarvestRemoteEvent
		remote:FireServer("SubmitAllPlants")
	end

	-- Checks if the current minute is within the first 10 mins of an hour
	local function isWithinFirstTenMinutes()
		local time = os.date("*t") -- local time table
		return time.min >= 0 and time.min < 10
	end

	getgenv().sh = false

	-- Updates the flag every 5 seconds based on time
	task.spawn(function()
		while true do
			getgenv().sh = isWithinFirstTenMinutes()
			task.wait(5)
		end
	end)

	-- Responds to toggle changes
	BazingaDogsCatsEatBunnies:OnChanged(function()
		if BazingaDogsCatsEatBunnies.Value == true then
			task.spawn(function()
				while BazingaDogsCatsEatBunnies.Value == true do
					-- 25-second active loop
					local startTime = tick()
					while tick() - startTime < 25 do
						if not BazingaDogsCatsEatBunnies.Value == true then break end
						getgenv().sh = isWithinFirstTenMinutes()
						task.wait()
					end

					local pauseStart = tick()
					while tick() - pauseStart < 5 do
						if not BazingaDogsCatsEatBunnies.Value == true then break end
						pauseFunction()
						task.wait()
					end
				end
			end)
		else
			getgenv().sh = false
		end
	end)

	-- Harvesting logic loop
	task.spawn(function()
		while true do
			if getgenv().sh then
				if not hrp then
					print("HumanoidRootPart not found, waiting for character to reload...")
					task.wait(3)
				else
					local plants = getPlantsFromFarm(plot)
					for _, plant in ipairs(plants) do
						local fruits = getFruitsFromPlant(plant)
						for _, fruit in ipairs(fruits) do
							if not getgenv().sh then break end
							if fruit and fruit.Name == "Tomato" and fruit.PrimaryPart then
								teleportTo(fruit.PrimaryPart.Position)
								task.wait(0.1)
								spamEUntilFruitGone(fruit)
							end
						end
						if not getgenv().sh then break end
					end
				end
			end
			task.wait(1)
		end
	end)


	local method

	Farm:AddDropdown("Flag", {
		Title = "Method to autoplant",
		Description = "If you choose 'ChoosePos', click the button where you want the crops to be placed!",
		Values = {"PlayerPOS", "ChoosePos"},
		Multi = false,
		Callback = function(Value)
			method = Value
		end
	})

	local delay = 0

	local AutoPlant = Farm:AddToggle("Flag", {
		Title = "AutoPlant",
		Description = "Starts the AutoPlant process",
		Default = false
	})

	local pos

	AutoPlant:OnChanged(function()

		if AutoPlant.Value == true then
			if method == "ChoosePos" and not pos then
				Fluent:Notify({
					Title = "No Pos Found",
					Content = "Please press the 'choose pos' button!",
					Duration = 8
				})
				return
			end

			repeat
				if AutoPlant.Value then return end
				if char and char:FindFirstChildOfClass("Tool") and char:FindFirstChildOfClass("Tool"):GetAttribute("ItemType") == "Seed" then
					if method == "ChoosePos" then
						RS:WaitForChild("GameEvents"):WaitForChild("Plant_RE"):FireServer(pos, lplr.Character:FindFirstChildOfClass("Tool"):GetAttribute("ItemName"))
					elseif method == "PlayerPOS" then
						RS:WaitForChild("GameEvents"):WaitForChild("Plant_RE"):FireServer(lplr.Character:GetPivot().Position, lplr.Character:FindFirstChildOfClass("Tool"):GetAttribute("ItemName"))
					end
					task.wait(delay)
				end
				task.wait()
			until Value == false
		end
	end)

	Farm:AddButton({
		Title = "Choose pos",
		Description = "Awh I'm such a coding degenerate!",
		Callback = function()
			pos = char:GetPivot().Position
		end
	})

	local Slider = Farm:AddSlider("Slider", {
		Title = "AutoPlant Delay",
		Description = "Set the delay for planting.",
		Default = 0,
		Min = 0,
		Max = 10,
		Rounding = 1,
		Callback = function(Value)
			delay = Value
		end
	})

	Misc:AddButton({
		Title = "Get free trowel",
		Description = "You can move!!!",
		Callback = function()
			local Tool = Instance.new("Tool")
			Tool.Name = "Trowel"
			Tool.RequiresHandle = true

			local handle = Instance.new("Part")
			handle.Name = "Handle"
			handle.Size = Vector3.new(1, 1, 1)
			handle.Color = Color3.new(0.5, 0.5, 0.5)
			handle.CanCollide = false
			handle.Anchored = false
			handle.Parent = Tool

			Tool.Parent = backpack
		end
	})

	Misc:AddParagraph({
		Title = "Credits",
		Content = "Dupe sheckles and old server finder (also load sheckles) is made by 'uerd' you should join his server (https://discord.gg/uerd)",
	})

	Misc:AddParagraph({
		Title = "Disclaimer",
		Content = "Use the old server to go into a staging server which is version '67' and also make sure someone has a pet equipped also make sure your items load before running. The X on the dupe menu joins a random gag server.",
	})

	Misc:AddParagraph({
		Title = "Can't see the Dupe sheckles / Load money button?",
		Content = "Make sure you're in a staging server (you'll know if it has a ton of people) and make sure the label below that says 'Version' is 67!",
	})

	local function ispatched(v) 
		if v == 67 then
			return "NotPatched"
		else
			return "Patched."
		end
	end

	Misc:AddParagraph({
		Title = "Version is: "..tostring(game.PlaceVersion).." So your version is: "..ispatched(game.PlaceVersion),
		Content = " "
	})

	if game.PlaceId == 91867617264223 then
		Misc:AddButton({
			Title = "Dupe sheckles",
			Description = "I got like 2t from this lol",
			Callback = function()
				loadstring(game:HttpGet("https://pastebin.com/raw/pGeFy1NL", true))()
				loadstring(game:HttpGet("https://pastebin.com/raw/JEm7aknz", true))() -- ima kms if this gets leaked :pray:
			end
		})

		Misc:AddButton({
			Title = "Load Sheckles",
			Description = "When you're in a version '67' place run this then dupe",
			Callback = function()
				loadstring(game:HttpGet("https://pastebin.com/raw/TWv6qPVx", true))()
			end
		})
	end

	Misc:AddButton({
		Title = "Old server finder",
		Description = "Self explanatory",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/realuerd/obf/refs/heads/main/oldserverjoiner", true))()
		end
	})

	function update()
		if #object_physical:GetChildren() > 0 and egg_predictor == true then
			for _, v in object_physical:GetChildren() do
				if (v:GetAttribute("TimeToHatch") ~= 0) then
					continue
				end
				local screen_position, on_screen = camera:WorldToViewportPoint(v:GetPivot().Position)

				if (not on_screen) then
					continue
				end

				local uuid = v:GetAttribute("OBJECT_UUID")
				local egg_name = v:GetAttribute("EggName") or "Unknown Egg"
				local pet = pet_list[uuid] or "Unknown Pet"

				local text = Drawing.new("Text")
				text.Visible = true
				text.Text = egg_name.." | "..pet
				text.Size = 18
				text.Position = Vector2.new(screen_position.X, screen_position.Y)
				text.Color = Color3.new(1, 1, 1)
				text.Outline = true
				text.OutlineColor = Color3.new(0, 0, 0)
				text.Center = true
				text.Font = 2
			end
		end
	end

	better_drawing:Init(update)

	local EggPredictor = Misc:AddToggle("Flag", {
		Title = "Egg Predictor",
		Description = "Idek how this works my friend gave me this feature idek if its skidded :pray:",
		Default = false
	})

	EggPredictor:OnChanged(function()
		egg_predictor = EggPredictor.Value
	end)

	InterfaceManager:BuildInterfaceSection(UI)

	Window:SelectTab(1)

	Fluent:Notify({
		Title = "Wuno has officially loaded.",
		Content = "Please star the GitHub repo (https://github.com/xxpwnxxx420lord/Wuno)",
		Duration = 8
	})

	local function reeree(text)
		local coreGui = game:GetService("CoreGui"):FindFirstChild("ScreenGui")
		if coreGui then
			for _, v in ipairs(coreGui:GetDescendants()) do 
				if v:IsA("TextLabel") then 
					if string.find(v.Text, "FPS: ") then 
						v.Text = text
					end
				end
			end
		end
	end

	-- Call the function with the current FPS
	reeree("FPS: " .. tostring(workspace:GetRealPhysicsFPS()))
end

function check()
	if not isfolder("TropsScripts") then
		makefolder("TropsScripts")
	end

	if not isfolder("TropsScripts//GEARZ") then
		makefolder("TropsScripts//GEARZ")
	end

	if not isfile("savedkey.GEARZ.tropxz.json.python.js.txt") then
		writefile("savedkey.GEARZ.tropxz.json.python.js.txt", "")
	end
end

print("Checking Files")

check()

print"Successfully checked"

local link = "https://bruh-c1ju.onrender.com/your-raw-key-url"

print("varibles working")

function key()
	local link = "https://bruh-c1ju.onrender.com/your-raw-key-url"
	local http_request = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

	if not http_request then
		print("HTTP request function not found")
		return
	end

	local response = http_request({
		Url = link,
		Method = "GET"
	})

	if response.StatusCode == 200 then
		local body = response.Body
		local data = crypt.base64decode(response.Body) -- Ensure `decode` is properly defined or imported elsewhere
		if data then
			return data
		else
			print("Failed to decode the response body")
		end
	else
		print("HTTP request failed with status code:", response.StatusCode)
	end
end

key()


check()
check()
check()
check()
check()
check()
check()
check()
check()
check()
check()
check()
check()
check()
check()

local filePath = "savedkey.Wuno.tropxz.json.python.js.txt"

if not pcall(function() readfile(filePath) end) then
	writefile(filePath, "")
end

if (readfile(filePath)) == key() then
	script()
else

	local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
	local Window = Fluent:CreateWindow({
		Title = "Fluent " .. Fluent.Version,
		SubTitle = "by dawid",
		TabWidth = 160,
		Size = UDim2.fromOffset(580, 460),
		Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
		Theme = "Dark",
		MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
	})

	Fluent:ToggleTransparency(1)

	local function deleteui()
		for i,v in pairs(game:GetService"CoreGui":GetDescendants()) do
			if v:IsA("TextButton") and v.Text == "Copy Key link" then
				print("Found Button")
				if v.Parent:IsA("Frame") then
					print("Found Frame")
					v.Parent.Position = UDim2.new(-9999,-9999)
					if v.Parent.Parent:IsA("ScreenGui") then
						print("Found ScreenGui")
						v.Parent.Parent:Destroy()
						print("Destroyed ")
					end
				end
			end
		end
	end

	Main = Window:AddTab({ Title = "Main", Icon = "" })
	local Input = Main:AddInput("Input", {
		Title = "Key",
		Default = "",
		Placeholder = "Enter your key.",
		Numeric = false, -- Only allows numbers
		Finished = true, -- Only calls callback when you press enter
		Callback = function(Value)
			if Value == key() then

				Fluent:Notify({
					Title = "Correct Loading Wuno",
					Content = "Loading Wuno",
					Duration = 5 -- Set to nil to make the notification not disappear
				})

				deleteui()

				script()
				delfile("savedkey.Wuno.tropxz.json.python.js.txt")
				writefile("savedkey.Wuno.tropxz.json.python.js.txt", key())
			else
				Fluent:Notify({
					Title = "wrong ⚔️",
					Content = "WROOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOONG!",
					Duration = 5 -- Set to nil to make the notification not disappear
				})
			end
		end
	})

	Main:AddButton({
		Title = "Copy Key link",
		Description = "Very important button",
		Callback = function()
			Window:Dialog({
				Title = "Copied",
				Content = "Copied",
				Buttons = {
					{
						Title = "Confirm",
						Callback = function()
							print("Confirmed the dialog.")
						end
					},
					{
						Title = "Cancel",
						Callback = function()
							print("Cancelled the dialog.")
						end
					}
				}
			})
			local board = setclipboard or writeclipboard or toclipboard
			if board then
				board("https://discord.gg/HwHHvdh5Ef")
			end
		end
	})
end



justloaded = false
