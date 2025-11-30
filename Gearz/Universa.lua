-- idek vro
    local justloaded = true
    local t = tick()


    function script()
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local Window = Fluent:CreateWindow({
        Title = "GEARZ ⚙️",
        SubTitle = "By Tropxz",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 460),
        Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.Insert
    })

    Fluent:Notify({
        Title = "Star my repo ⭐",
        Content = "Star my repo @ https://github.com/Tropxzz/GEARZ-/tree/main",
        SubContent = "please please please please please", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })

    Fluent:Notify({
        Title = "Thank you.",
        Content = "Thank you for supporting me and joining my discord server i hope you enjoy this script 💖",
        SubContent = "<3", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })



    local Main = Window:AddTab({ Title = "Main", Icon = "wind"})
    local Player = Window:AddTab({ Title = "Player", Icon = "user"})
    local ESP = Window:AddTab({ Title = "ESP", Icon = "tv"})
    local MyScripts = Window:AddTab({ Title = "Scripts I've made", Icon = "scroll"})
    local Scriptsthataintmine = Window:AddTab({ Title = "Scripts I didnt make", Icon = "scroll"}) --  
    local Serverinfo = Window:AddTab({ Title = "Server Info", Icon = "info"})

    -- varibles

    local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
    local p = game.Players.LocalPlayer
    local controlmodule = require(p:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
    local uis = game:GetService"UserInputService"
    local camera = workspace.CurrentCamera

    -- Main

    Main:AddParagraph({
        Title = "Star my repo ⭐",
        Content = "star @ https://github.com/Tropxzz/GEARZ-/tree/main"
    })


    Main:AddButton({
        Title = "Rejoin",   
        Description = "Rejoin your server in "..tostring(GameName),
        Callback = function()
            Window:Dialog({
                Title = "Are you sure you want to rejoin?",
                Content = "If you rejoin make sure to save your info and stuff.",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function() end
                    }
                }
            })
        end
    })

    local playersTable = {}

    local tptoplayer = Main:AddDropdown("Tp to player", {
        Title = "To player.",
        Values = playersTable,
        Multi = false,
        Default = "Select one.",
    })

    tptoplayer:OnChanged(function(Value)
        if Value ~= "Select one." then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Value].Character.HumanoidRootPart.CFrame
        end
    end)

    local function onPlayerAdded(player)
        table.insert(playersTable, player.Name)
        tptoplayer:BuildDropdownList()
    end

    local function onPlayerRemoving(player)
        for i, playerName in ipairs(playersTable) do
            if playerName == player.Name then
                table.remove(playersTable, i)
                tptoplayer:BuildDropdownList()
                break
            end
        end
    end

    game.Players.PlayerAdded:Connect(onPlayerAdded)
    game.Players.PlayerRemoving:Connect(onPlayerRemoving)

    for _, player in ipairs(game.Players:GetPlayers()) do
        onPlayerAdded(player)
    end

    -- other code

    local oldtime = game.Lighting.ClockTime

    Main:AddInput("Input", {
        Title = "Time",
        Default = "",
        Placeholder = "enter time ",
        Numeric = true, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function(Value)
            game.Lighting.ClockTime = tonumber(Value)
        end
    })

    Main:AddButton({
        Title = "Revert time",
        Description = "revert the time to the original time",
        Callback = function()
        game.Lighting.ClockTime = oldtime
        end
    })

    -- Player

    local oldspeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed

    local playerspeed = Player:AddSlider("Slider", {
        Title = "Speed",
        Description = "Edit your walkspeed",
        Default = oldspeed,
        Min = 0,
        Max = 1000,
        Rounding = 1,
        Callback = function(Value)
            p.Character.Humanoid.WalkSpeed = Value
        end
    })

    Player:AddButton({
        Title = "Revert Speed",
        Description = "revert the speed to your original speed",
        Callback = function()
            playerspeed:SetValue(oldspeed)
        end
    })

    local oldsJumpPower = game.Players.LocalPlayer.Character.Humanoid.JumpPower

    local JumpPower = Player:AddSlider("Slider", {
        Title = "JumpPower",
        Description = "Edit your JumpPower",
        Default = oldsJumpPower,
        Min = 0,
        Max = 1000,
        Rounding = 1,
        Callback = function(Value)
            p.Character.Humanoid.JumpPower = Value
        end
    })

    Player:AddButton({
        Title = "Revert JumpPower",
        Description = "revert the speed to your original Jumppower",
        Callback = function()
            JumpPower:SetValue(oldsJumpPower)
        end
    })

    Player:AddSlider("Slider", {
        Title = "FOV",
        Description = "Edit your FOV",
        Default = 70,
        Min = 0,
        Max = 120,
        Rounding = 1,
        Callback = function(Value)
            game.workspace.Camera.FieldOfView = Value
        end
    })

    local Toggle = Player:AddToggle("Fly", {Title = "Fly", Default = false })
    local flying = true
    local a = true
    local UserInputService = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")

    Toggle:OnChanged(function()
        flying = not flying
        a = not a

        local function fly()
            local AlignOrientation = Instance.new("AlignOrientation", p.Character.HumanoidRootPart)
            AlignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
            AlignOrientation.Attachment0 = p.Character.HumanoidRootPart:WaitForChild("RootAttachment")
            AlignOrientation.Responsiveness = 50

            local AlignPosition = Instance.new("AlignPosition", p.Character.HumanoidRootPart)
            AlignPosition.Mode = Enum.PositionAlignmentMode.OneAttachment
            AlignPosition.Attachment0 = p.Character.HumanoidRootPart:WaitForChild("RootAttachment")
            AlignPosition.Responsiveness = 50
            AlignPosition.MaxForce = 1000000

            local forward = Vector3.new(0, 0, 0)
            local backward = Vector3.new(0, 0, 0)
            local left = Vector3.new(0, 0, 0)
            local right = Vector3.new(0, 0, 0)
            local up = Vector3.new(0, 0, 0)
            local down = Vector3.new(0, 0, 0)
            
            UserInputService.InputBegan:Connect(function(input)
                if flying then
                    if input.KeyCode == Enum.KeyCode.W then
                        forward = workspace.CurrentCamera.CFrame.LookVector
                    elseif input.KeyCode == Enum.KeyCode.S then
                        backward = -workspace.CurrentCamera.CFrame.LookVector
                    elseif input.KeyCode == Enum.KeyCode.A then
                        left = -workspace.CurrentCamera.CFrame.RightVector
                    elseif input.KeyCode == Enum.KeyCode.D then
                        right = workspace.CurrentCamera.CFrame.RightVector
                    elseif input.KeyCode == Enum.KeyCode.Space then
                        up = Vector3.new(0, 1, 0)
                    elseif input.KeyCode == Enum.KeyCode.LeftControl then
                        down = Vector3.new(0, -1, 0)
                    end
                end
            end)

            UserInputService.InputEnded:Connect(function(input)
                if flying then
                    if input.KeyCode == Enum.KeyCode.W then
                        forward = Vector3.new(0, 0, 0)
                    elseif input.KeyCode == Enum.KeyCode.S then
                        backward = Vector3.new(0, 0, 0)
                    elseif input.KeyCode == Enum.KeyCode.A then
                        left = Vector3.new(0, 0, 0)
                    elseif input.KeyCode == Enum.KeyCode.D then
                        right = Vector3.new(0, 0, 0)
                    elseif input.KeyCode == Enum.KeyCode.Space then
                        up = Vector3.new(0, 0, 0)
                    elseif input.KeyCode == Enum.KeyCode.LeftControl then
                        down = Vector3.new(0, 0, 0)
                    end
                end
            end)

            RunService.Heartbeat:Connect(function()
                if flying then
                    local direction = forward + backward + left + right + up + down
                    AlignPosition.Position = p.Character.HumanoidRootPart.Position + direction * 10
                    AlignOrientation.CFrame = workspace.CurrentCamera.CFrame
                end
            end)
        end

        if a then
            fly()
        else
            flying = false
            if p.Character.HumanoidRootPart:FindFirstChild("AlignOrientation") then
                p.Character.HumanoidRootPart.AlignOrientation:Destroy()
            end
            if p.Character.HumanoidRootPart:FindFirstChild("AlignPosition") then
                p.Character.HumanoidRootPart.AlignPosition:Destroy()
            end
        end
    end)




    Player:AddButton({
        Title = "Invisible ui",
        Description = "Invis ui by someone i do not know",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/293w1LUN",true))()
        end
    })

    -- ESP

    local ESPModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/Terror/main/Modules/ESPModule.lua", true))()
    local ESPa = ESP:AddToggle("Highlight", {Title = "Highlight", Default = false })

    ESPa:OnChanged(function()
        if ESPa.Value == false  then
            ESPModule.DisableESP()
        elseif ESPa.Value == true  then
            ESPModule.ShowESP()
        end
    end)

    _G.TracersVisible = false
    local Tracers = ESP:AddToggle("Tracers", {Title = "Tracers", Default = false })
    local tracescriptenabled = false

    Tracers:OnChanged(function()
        if tracescriptenabled == false then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/Terror/main/ExternalScripts/EnuxysTracers", true))()
            tracescriptenabled = true
        end
        if Tracers.Value == false then
            _G.TracersVisible = false
        else
            _G.TracersVisible = true
        end
    end)

    ESP:AddButton({
        Title = "Box esp i made",
        Description = "BOX esp i made with drawing.new",
        Callback = function()
            local lplr = game.Players.LocalPlayer
            local camera = workspace.CurrentCamera
            local worldtoviewportpoint = camera.worldToViewportPoint
            
            local Headoff = Vector3.new(0, 0.5, 0)
            local legoff = Vector3.new(0,3,0)
            
            for i,v in pairs(game.Players:GetPlayers()) do
                local boxoutline = Drawing.new("Square")
                boxoutline.Visible = false
                boxoutline.Color = Color3.new(0,0,0)
                boxoutline.Thickness = 3
                boxoutline.Transparency = 1
                boxoutline.Filled = false
            
                local box = Drawing.new("Square")
                box.Visible = false
                box.Color = Color3.new(1,1,1)
                box.Thickness = 1
                box.Transparency = 1
                box.Filled = false
            
                local function boxesp()
                    game:GetService("RunService").RenderStepped:Connect(function ()
                        if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                            local Vector, onscreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                            local hrp = v.Character.HumanoidRootPart
                            local head = v.Character.Head
                            local rootpos, rootvis = worldtoviewportpoint(camera, v.Character.HumanoidRootPart.Position)
                            local headpos = worldtoviewportpoint(camera, head.Position + Headoff)
                            local legpos = worldtoviewportpoint(camera, hrp.Position - legoff)
            
                            if onscreen then
                                boxoutline.Size = Vector2.new(1000 / rootpos.Z, headpos.Y - legpos.Y)
                                boxoutline.Position = Vector2.new(rootpos.X - boxoutline.Size.X / 2, rootpos.Y - boxoutline.Size.Y / 2)
                                boxoutline.Visible = true
            
                                box.Size = Vector2.new(1000 / rootpos.Z, headpos.Y - legpos.Y)
                                box.Position = Vector2.new(rootpos.X - boxoutline.Size.X / 2, rootpos.Y - boxoutline.Size.Y / 2)
                                box.Visible = true
                            else
                                box.Visible = false
                                boxoutline.Visible = false
                            end
                        else
                            box.Visible = false
                            boxoutline.Visible = false
                        end
                    end)
                end
                coroutine.wrap(boxesp)()
            end
            
            game.Players.PlayerAdded:Connect(function(v)
                local boxoutline = Drawing.new("Square")
                boxoutline.Visible = false
                boxoutline.Color = Color3.new(0,0,0)
                boxoutline.Thickness = 3
                boxoutline.Transparency = 1
                boxoutline.Filled = false
            
                local box = Drawing.new("Square")
                box.Visible = false
                box.Color = Color3.new(1,1,1)
                box.Thickness = 1
                box.Transparency = 1
                box.Filled = false
            
                local function boxesp()
                    game:GetService("RunService").RenderStepped:Connect(function ()
                        if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 then
                            local Vector, onscreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                            local hrp = v.Character.HumanoidRootPart
                            local head = v.Character.Head
                            local rootpos, rootvis = worldtoviewportpoint(camera, v.Character.HumanoidRootPart.Position)
                            local headpos = worldtoviewportpoint(camera, head.Position + Headoff)
                            local legpos = worldtoviewportpoint(camera, hrp.Position - legoff)
            
                            if onscreen then
                                boxoutline.Size = Vector2.new(1000 / rootpos.Z, headpos.Y - legpos.Y)
                                boxoutline.Position = Vector2.new(rootpos.X - boxoutline.Size.X / 2, rootpos.Y - boxoutline.Size.Y / 2)
                                boxoutline.Visible = true
            
                                box.Size = Vector2.new(1000 / rootpos.Z, headpos.Y - legpos.Y)
                                box.Position = Vector2.new(rootpos.X - boxoutline.Size.X / 2, rootpos.Y - boxoutline.Size.Y / 2)
                                box.Visible = true
                            else
                                box.Visible = false
                                boxoutline.Visible = false
                            end
                        else
                            box.Visible = false
                            boxoutline.Visible = false
                        end
                    end)
                end
                coroutine.wrap(boxesp)()
            end)
        end
    })

    ESP:AddButton({
        Title = "Distance esp i made",
        Description = "Distance esp i made with drawing.new",
        Callback = function()
            local c = workspace.CurrentCamera
    local ps = game:GetService("Players")
    local lp = ps.LocalPlayer
    local rs = game:GetService("RunService")

    local function getdistancefc(part)
        return (part.Position - c.CFrame.Position).Magnitude
    end

    local function esp(p,cr)
        local h = cr:WaitForChild("Humanoid")
        local hrp = cr:WaitForChild("HumanoidRootPart")

        local text = Drawing.new("Text")
        text.Visible = false
        text.Center = true 
        text.Outline = true 
        text.Font = 2
        text.Color = Color3.fromRGB(255,255,255)
        text.Size = 13

        local c1 
        local c2 
        local c3 

        local function dc()
            text.Visible = false
            text:Remove()
            if c1 then
                c1:Disconnect()
                c1 = nil 
            end
            if c2 then
                c2:Disconnect()
                c2 = nil 
            end
            if c3 then
                c3:Disconnect()
                c3 = nil 
            end
        end

        c2 = cr.AncestryChanged:Connect(function(_,parent)
            if not parent then
                dc()
            end
        end)

        c3 = h.HealthChanged:Connect(function(v)
            if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
                dc()
            end
        end)

        c1 = rs.RenderStepped:Connect(function()
            local hrp_pos,hrp_os = c:WorldToViewportPoint(hrp.Position)
            if hrp_os then
                text.Position = Vector2.new(hrp_pos.X,hrp_pos.Y)
                text.Text = p.Name .. ' ('..tostring(math.floor(getdistancefc(hrp)))..' ms)'
                text.Visible = true 
            else
                text.Visible = false 
            end
        end)
    end

    local function p_added(p)
        if p.Character then
            esp(p,p.Character)
        end
        p.CharacterAdded:Connect(function(cr)
            esp(p,cr)
        end)
    end


    for i,p in next, ps:GetPlayers() do 
        if p ~= lp then
            p_added(p)
        end
    end

    ps.PlayerAdded:Connect(p_added)
        end
    })

    ESP:AddButton({Title = "Skeleton ESP by  Syntax Err0r", Description = "NOT BY ME", Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNuggetEater05/ekaMiffutSmodnaR/main/GlobalR6SkeletonESP.lua"))()

        shared.BoneESP_Settings = {
            Circle_Visible = false,
            Circle_Radius = 3,
            BoneESP_Color = Color3.fromRGB(255,255,255)
        }
    end})

    -- scripts that are mine

    MyScripts:AddButton({Title = "Terror", Description = "W break in 2 and ninja legends script", Callback = function () loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/Terror/main/Checker.lua", true))() end})
    MyScripts:AddButton({Title = "Sweat Destroyer", Description = "🤮 random skidded script i made", Callback = function () loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/Terror/main/Checker.lua", true))() end})
    MyScripts:AddButton({Title = "API Library", Description = "A script i made with alot of apis", Callback = function () loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/Scripts/main/apilibrary.lua",true))() end})
    MyScripts:AddButton({Title = "Omni admin", Description = "Random open sourced admin script i made", Callback = function () loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/Scripts/main/OmniAdmin.lua", true))() end})
    MyScripts:AddButton({Title = "Cursed Admin", Description = "I forgot tbh", Callback = function () loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/CursedData/main/main.lua", true))() end})
    MyScripts:AddButton({Title = "REE | Universal and overpowered", Description = "a powerful script i think?", Callback = function () loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/Scripts/main/REE%20CONSOLE%20RAIDER%20FIXED", true))() end})
    MyScripts:AddButton({Title = "Googol", Description = "a powerful script i think?", Callback = function () loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/Scripts/main/Googol", true))() end})
    MyScripts:AddButton({Title = "Storage Bomb", Description = "Can your pc survive?", Callback = function () loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/Scripts/main/a",true))() end})

    -- Scriptsthataintmine

    Scriptsthataintmine:AddButton({
        Title = "Wynerd",
        Description = "A overpowered script with features like free purchasing and ugc sniper",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Imalwibest/Imalwibest/main/wynerdV2.lua",true))()
        end
    })

    Scriptsthataintmine:AddButton({
        Title = "Free pass V2",
        Description = "overpowered gamepass script",
        Callback = function()
            loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/6982de484735e730494b2d5a10fd6a2a/raw/a92563b0cd6a63683341a09f54baccea5349ed69/feGamepassV2",true))()
        end
    })

    Scriptsthataintmine:AddButton({
        Title = "Inf Yield",
        Description = "one of the most popular admin scripts",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",true))()
        end
    })

    Scriptsthataintmine:AddButton({
        Title = "RemoteSpy",
        Description = "If a remote is fired it shows on the script with the args",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/66NjbMN7",true))()
        end
    })

    Scriptsthataintmine:AddButton({
        Title = "Dark dex",
        Description = "See workspace, rs, etc",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
        end
    })

    Scriptsthataintmine:AddButton({
        Title = "Nameless admin",
        Description = "another popular admin script",
        Callback = function()
            loadstring(game:HttpGet('https://gist.github.com/inuk84/ca841931f45f242c945405298b26bd71/raw/af364e5d4ea5b0d2eac404a5376d83c84a23cbe4/na.lua'))()
        end
    })

    Scriptsthataintmine:AddButton({
        Title = "Muti scripter X v3",
        Description = "random universal fe script i found/",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerScripter/Multi-Scripter-X/main/loader"))()
        end
    })

    Scriptsthataintmine:AddButton({
        Title = "Universal FE - Scripthub",
        Description = "random universal fe script i found/",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerScripter/Multi-Scripter-X/main/loader"))()
        end
    })

    Scriptsthataintmine:AddButton({
        Title = "Starry",
        Description = "Starry is the best break in 2 script with more games soon.",
        Callback = function()
            local branch, owner = "main", "hello-n-bye"

    local function load(url)
    if (type(url)) ~= "string" then
        return warn("Url must be a string to load it.")
    else
        xpcall(function()
        loadstring(game:HttpGet(url))()
        end, function(error_code)
        return warn(("Error: %s on line %s"):format(error_code, debug.traceback()))
        end)
    end
    end

    load(("https://raw.githubusercontent.com/%s/starry/%s/main.lua"):format(owner, branch))
        end
    })

    Scriptsthataintmine:AddButton({
        Title = "Xploits script hub",
        Description = "Has a ton of scripts for different games to use",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerScripter/Multi-Scripter-X/main/loader"))()
        end
    })

    Scriptsthataintmine:AddButton({
        Title = "Ez hub",
        Description = "Has a ton of scripts for different games to use",
        Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug42O/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
        end
    })

    -- Server infomation

    local abcdefghijklm = Serverinfo:AddParagraph({
        Title = "There are " .. tostring(#game.Players:GetPlayers()) .. " players in this server."
    })

    local function upd()
        for _,v in ipairs(game:GetService("CoreGui"):GetDescendants()) do
            if (v:IsA("TextLabel")) then
                if (string.find(v.Text:lower(), "players in this")) then
                    if (v.Text) ~= "Players" then
                        v.Text = "There are " .. tostring(#game.Players:GetPlayers()) .. " players in this server."
                    end
                end
            end
        end
    end

    game:GetService("Players").PlayerAdded:Connect(function()
        upd()
    end)

    game:GetService("Players").PlayerRemoving:Connect(function()
        upd()
    end)

    Serverinfo:AddParagraph({
        Title = "The jobid is "..tostring(game.JobId)
    })

    Serverinfo:AddParagraph({
        Title = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
    })

    end -- DO NOT DELETE PLEASE MYSELF

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

    local thing = loadstring(game:HttpGet("https://raw.githubusercontent.com/hello-n-bye/hyperi-gone/master/src/shared/Crypt.luau",true))()
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

    local filePath = "savedkey.GEARZ.tropxz.json.python.js.txt"

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
                    delfile("savedkey.GEARZ.tropxz.json.python.js.txt")
                    writefile("savedkey.GEARZ.tropxz.json.python.js.txt", key())
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

    print("Loaded in " .. tostring(t))
