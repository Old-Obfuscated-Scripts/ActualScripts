
function script()
    -- player stuff
    local lplr = game:GetService("Players").LocalPlayer
    local char = lplr.Character
    local hrp = char.HumanoidRootPart
    local hum = char.Humanoid
    local camera = game.workspace.CurrentCamera

    -- services
    local Players = game:GetService("Players")
    local UIS = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    local Workspace = game:GetService("Workspace")
    local VirtualUser = game:GetService("VirtualUser")
    
    -- Misc
    local attackRange = 45
    local clickInterval = 0.5

    local function GetClosestPlayer()
        local closestDistance = math.huge
        local closestPlayer = nil
    
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= lplr and player.Team ~= lplr.Team then
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local distance = (hrp.Position - player.Character.HumanoidRootPart.Position).magnitude
                    if distance < closestDistance then
                        closestDistance = distance
                        closestPlayer = player
                    end
                end
            end
        end
        return closestPlayer
    end
        
    local function IsTargetVisible(targetPosition)
        local origin = camera.CFrame.Position
        local direction = (targetPosition - origin).unit * 500 -- The ray will go 500 studs in the direction of the target
        
        local raycastParams = RaycastParams.new()
        raycastParams.FilterDescendantsInstances = {lplr.Character} -- Ignore the player's own character
        raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
    
        local result = workspace:Raycast(origin, direction, raycastParams)
    
        return not result or not result.Instance:IsDescendantOf(Players) -- True if no obstruction or if hit object is not a player
    end
    
    local function TweenCamera(targetPosition)
        local tweenInfo = TweenInfo.new(0, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
        local goal = {CFrame = CFrame.new(camera.CFrame.Position, targetPosition)}
        local tween = TweenService:Create(camera, tweenInfo, goal)
        tween:Play()
    end
    
    local Rayfield = loadstring(game:HttpGet('https://github.com/Tropxzz/Astral/blob/main/Utilities/uilibrary.lua?raw=true'))() 
    
    local Window = Rayfield:CreateWindow({
        Name = "Astral",
        LoadingTitle = "yummy 😋",
        LoadingSubtitle = "Astral is by Jimmy/Tropxz",
        ConfigurationSaving = {
           Enabled = true,
           FolderName = "Astral", -- Create a custom folder for your hub/game
           FileName = "config.hotdaddyAstral"
        },
        Discord = {
           Enabled = true,
           Invite = "HRuwPPZk3A", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
           RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
           Title = "Untitled",
           Subtitle = "Key System",
           Note = "No method of obtaining the key is provided",
           FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
           SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
           GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
           Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
     })

     local Home = Window:CreateTab("Hi!", 10723407389) -- Title, Image
     local Combat = Window:CreateTab("Combat", 10734975692) -- Title, Image
     local Visuals = Window:CreateTab("Visuals", 10723346959) -- Title, Image
     local Player = Window:CreateTab("Player", 10747373176) -- Title, Image
     local FE = Window:CreateTab("FE Stuff", 10723346959) -- Title, Image
     local Script_develop = Window:CreateTab("Scripts for script developers", 10734943448) -- Title, Image
     local otherscripts = Window:CreateTab("My other scripts", 10734943448) -- Title, Image

     -- Combat

     Combat:CreateToggle({
        Name = "Aimbot",
        CurrentValue = false,
        Flag = "Aimbot",
        Callback = function(value)
            _G.ToggleMeup = value
        end,
    })
    
    UIS.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            if _G.ToggleMeup then
                _G.Aim = true
                while _G.Aim do
                    local closestPlayer = GetClosestPlayer()
                    if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("Head") then
                        local targetHead = closestPlayer.Character.Head
                        if IsTargetVisible(targetHead.Position) then
                            TweenCamera(targetHead.Position)
                        else
                            print("Target not visible or obstructed")
                        end
                    else
                        print("No valid closest player or target head not found")
                    end
                    wait() -- Ensure you wait to prevent an infinite loop from consuming too much CPU
                end
            end
        end
    end)
    
    UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            _G.Aim = false
        end
    end)

    Combat:CreateToggle({
        Name = "Teleport to Closest Player (doesnt disable for some reason)",
        CurrentValue = false,
        Flag = "CP",
        Callback = function(enabled)
            while enabled do
                local closestPlayer = GetClosestPlayer()
                if closestPlayer and closestPlayer.Character then
                    local humanoid = closestPlayer.Character:FindFirstChildOfClass("Humanoid")
                    local humanoidRootPart = closestPlayer.Character:FindFirstChild("HumanoidRootPart")
    
                    if humanoid and humanoidRootPart and humanoid.Health > 5 then
                        hrp.CFrame = humanoidRootPart.CFrame
                    end
                    if enabled == false then
                        break
                    end
                end
                task.wait(0.1) -- Adjusted wait time for better performance
            end
        end,
    })
    
    Combat:CreateToggle({
        Name = "Kill Aura (ONLY ENABLE WHEN IN A KNIFE/SHOOTING GAME)",
        CurrentValue = false,
        Flag = "KillAura",
        Callback = function(enabled)
            _G.KillAuraEnabled = enabled
            while _G.KillAuraEnabled do
                local closestPlayer = GetClosestPlayer()
                if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local targetHRP = closestPlayer.Character.HumanoidRootPart
                    local distance = (hrp.Position - targetHRP.Position).magnitude
                    
                    if distance <= attackRange then
                        -- Aim at the target
                        TweenCamera(targetHRP.Position)
                        
                        -- Simulate MouseButton1 click using VirtualUser
                        mouse2click()
                    end
                end
                task.wait(clickInterval) -- Adjust click interval as needed
            end
        end,
    })

      -- home tab

      Home:CreateSection("Main")
      Home:CreateParagraph({Title = "Thanks!", Content = "Thank you sooooooo much for using Astral and completing the key system all of this means a ton to me I hope you like the "..'"Blantant"'.." Features I mean some aren't but like who cares? Aslong as it works"})
      Home:CreateParagraph({Title = "Notice", Content = "Using Astral has a chance of being banned from your favourite games so be wise on how you use it."})


end -- DO NOT DELETE PLEASE MYSELF

    function check()
        if not isfolder("Astral/") then
            makefolder("Astral/")
        end

        if not isfolder("Astral/Key") then
            makefolder("Astral/Key/")
        end

        if not isfile("Astral/Key/Key.hotdaddyAstral") then
            writefile("Astral/Key/Key.hotdaddyAstral", "")
        end
    end

    print("Checking Files")

    check()

    print"Successfully checked"

    local link = "https://bruh-c1ju.onrender.com/your-raw-key-url"

    print("varibles working")

    function decode(content)
        thing.base64decode(content)
        print("Decode working")
    end

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

    local filePath = "Astral/Key/Key.hotdaddyAstral"

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
            Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
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
                            Title = "Correct Loading GEARZ",
                            Content = "Loading GEARZ",
                            Duration = 5 -- Set to nil to make the notification not disappear
                    })

                    if Fluent.Window then
                        Fluent.Unloaded = true
                        if Fluent.UseAcrylic then
                            Fluent.Window.AcrylicPaint.Model:Destroy()
                        end
                        Fluent.GUI:Destroy()
                    end

                script()
                    delfile("Astral/Key/Key.hotdaddyAstral")
                    writefile("Astral/Key/Key.hotdaddyAstral", key())
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
    board("https://discord.gg/7g9mdXddj7")
    end
            end
        })
        end



    justloaded = false

    print("Loaded in " .. string.format("%.2f", tick() - t) .. " seconds")
