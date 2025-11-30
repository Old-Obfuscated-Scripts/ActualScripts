-- Breaking point script v2??
    --[[
                                                    ____ _____    _    ____   _____
                                                / ___| ____|  / \  |  _ \ |__  /
                                                | |  _|  _|   / _ \ | |_) |  / / 
                                                | |_| | |___ / ___ \|  _ <  / /_ 
                                                \____|_____/_/   \_\_| \_\/____|
    ]]


    local justloaded = true
    local t = tick()
    local p = game.Players.LocalPlayer
--[[
    🟥 - Havent even touched 
    🟩 - Finished
    🟦 - Continue later
    🟧 - In Development
]]

    function script()
        local Fluent = loadstring(game:HttpGet(
            "https://github.com/mr-suno/Fluent/releases/download/1.1.2/main.lua"
          ))()
          
        local devices = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/hello-n-bye/starry/main/src/device.lua", true))()

        local function isMobile()
            if (devices) == "Windows" or (string.find(devices, "Krampus")) then
                return "pc"
            else
                if (string.find(identifyexecutor(), "Solara")) or (string.find(identifyexecutor(), "Wave")) or (string.find(identifyexecutor(), "incognito")) then
                    return "pc"
                else
                    if (string.find(string.lower(identifyexecutor()), "macsploit")) then
                        return "pc"
                    else
                        return "mobile"
                    end
                end
            end
        end

    local divider = 0
            if isMobile() == "mobile" then  
                divider = 1.75
            else
                divider = 1
            end
            
                        local Window = Fluent:CreateWindow({
                            Title = "GEARZ", -- dont remove the ,
                            SubTitle = "By Jimmy/Tropxz",
                            TabWidth = 160,
                            Size = UDim2.fromOffset(580, 460 / divider),
                            Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
                            Theme = "Darker",
                            MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
                        })

        local Tabs = { -- Makes a table 
            Combat = Window:AddTab({ Title = "Combat", Icon = "swords" }), -- 🟩
            Teleport = Window:AddTab({ Title = "Teleport", Icon = "arrow-right" }),-- 🟩
            AutoBuy = Window:AddTab({ Title = "Autobuy", Icon = "shopping-bag" }),-- 🟩
            Player = Window:AddTab({ Title = "Player", Icon = "user" }),-- 🟦
            Trolling = Window:AddTab({ Title = "Trolling", Icon = "laugh"}),-- 🟧
            Misc = Window:AddTab({ Title = "Misc", Icon = "mouse-pointer-click" }),-- 🟩 
        }

        -- Trolling
        local asdasdasdasdasdas = Tabs.Trolling:AddToggle("alskdj", {Title = "spin", Default = false })

        asdasdasdasdasdas:OnChanged(function()
            IsSpinning = asdasdasdasdasdas.Value
            while IsSpinning do
                p.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(999), 0)
                wait()
            end
        end)

        
        local names = {}
        local players = game.Players:GetPlayers()
        for i, player in ipairs(players) do
            table.insert(names, player.Name)
        end
        
        local Dropdowaan = Tabs.Trolling:AddDropdown("Dropdown", {
            Title = "Fling player",  -- 
            Values = {},  -- Optown
            Multi = false,  -- Indion)
            Default = 1,  -- Defted)
        })

        Dropdowaan:SetValues(names)

        Dropdowaan:OnChanged(function(Value)
            pcall(function()
                Target = game.Players:FindFirstChild(Value)
                local Old, FPDH = nil, workspace.FallenPartsDestroyHeight
                local Player = game.Players.LocalPlayer
       
                local Character = Player.Character or Player.CharacterAdded:Wait()
                local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
       
                local Root = Humanoid and Humanoid.RootPart
       
                local TChar = Target.Character or Target.CharacterAdded:Wait()
                local THumanoid
                local TRoot
                local THead
       
                local Accessory = nil
                local Handle
                if Target then           
                    if TChar:FindFirstChildOfClass("Humanoid") then
                       THumanoid = TChar:FindFirstChildOfClass("Humanoid")
                    end
           
                    if THumanoid and THumanoid.RootPart then
                       TRoot = THumanoid.RootPart
                    end
           
                    if TChar:FindFirstChild("Head") then
                       THead = TChar.Head
                    end
           
                    if Accessory and Accessory:FindFirstChild("Handle") then
                       Handle = Accessory.Handle
                    end
           
                    if Character and Humanoid and Root then
                       if Root.Velocity.Magnitude < 50 then
                          Old = Root.CFrame
                       end
           
                       if THumanoid and THumanoid.Sit then end
           
                       if THead then
                          workspace.CurrentCamera.CameraSubject = THead
                       elseif not THead and Handle then
                          workspace.CurrentCamera.CameraSubject = Handle
                       elseif THumanoid and TRoot then
                          workspace.CurrentCamera.CameraSubject = THumanoid
                       end
           
                       if not TChar:FindFirstChildWhichIsA("BasePart") then
                          return
                       end
           
                       local fpos = function(BasePart, vector, Angle)
                          Root.CFrame = CFrame.new(BasePart.Position) * vector * Angle
                          Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * vector * Angle)
                          Root.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
                          Root.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
                       end
           
                       local SBP = function(BasePart)
                          local Delay = 2
                          local Time = tick()
                          local Angle = 0
           
                          repeat
                             if Root and THumanoid then
                                if BasePart.Velocity.Magnitude < 50 then
                                   Angle = Angle + 100
           
                                   fpos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
                                   task.wait()
           
                                   fpos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                                   task.wait()
           
                                   fpos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                                   task.wait()
           
                                   fpos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                                   task.wait()
           
                                   fpos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                                   task.wait()
           
                                   fpos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                                   task.wait()
                                else
                                   fpos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                                   task.wait()
           
                                   fpos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                                   task.wait()
           
                                   fpos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                                   task.wait()
           
                                   fpos(BasePart, CFrame.new(0, 1.5, TRoot.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                                   task.wait()
           
                                   fpos(BasePart, CFrame.new(0, -1.5, -TRoot.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                                   task.wait()
           
                                   fpos(BasePart, CFrame.new(0, 1.5, TRoot.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                                   task.wait()
           
                                   fpos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                                   task.wait()
           
                                   fpos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                                   task.wait()
           
                                   fpos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
                                   task.wait()
           
                                   fpos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                                   task.wait()
                                end
                             else
                                break
                             end
                          until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= Target.Character or Target.Parent ~= game.Players or (not Target.Character) == TChar or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + Delay
                       end
           
                       workspace.FallenPartsDestroyHeight = 0/0
           
                       local BV = Instance.new("BodyVelocity", Root)
                       BV.Name = "Prism"
                       BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
                       BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
           
                       Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
           
                       if TRoot and THead then
                          if (TRoot.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                             SBP(THead)
                          else
                             SBP(TRoot)
                          end
                       elseif TRoot and not THead then
                          SBP(THead)
                       elseif not TRoot and not THead and Accessory and Handle then
                          SBP(Handle)
                       end
           
                       BV:Destroy()
           
                       Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                       workspace.CurrentCamera.CameraSubject = Humanoid
           
                       repeat
                          Root.CFrame = Old * CFrame.new(0, 0.5, 0)
                          Character:SetPrimaryPartCFrame(Old * CFrame.new(0, 0.5, 0))
                          Humanoid:ChangeState("GettingUp")
           
                          for _, Descendant in ipairs(Character:GetChildren()) do
                             if Descendant:IsA("BasePart") then
                                Descendant.Velocity, Descendant.RotVelocity = Vector3.new(), Vector3.new()
                             end
                          end
           
                          task.wait()
                       until (Root.Position - Old.p).Magnitude < 25
           
                       workspace.FallenPartsDestroyHeight = FPDH
                    end
                 end
                end)
        end)

        Tabs.Trolling:AddButton({
            Title = "Refresh fling list",
            Description = "Update playerlist",
            Callback = function ()
                table.clear(names)
                local players = game.Players:GetPlayers()
                for i, player in ipairs(players) do
                    table.insert(names, player.Name)
                end
                Dropdowaan:SetValues(names)
            end
        })


        -- Teleport

        Tabs.Teleport:AddButton({
            Title = "Go to Arcade Machine",
            Description = "go to the game thing",
            Callback = function()
                p.Character.HumanoidRootPart.CFrame = CFrame.new(-50.1709061, 2.99999928, -288.616516, 0.999456584, -6.53658816e-08, -0.0329628177, 6.4501819e-08, 1, -2.72766503e-08, 0.0329628177, 2.5135666e-08, 0.999456584)
            end
        })

        Tabs.Teleport:AddButton({
            Title = "Go to table",
            Description = "go to the table thing",
            Callback = function()
                p.Character.HumanoidRootPart.CFrame = CFrame.new(-31.8540134, 6.69158888, -210.905899, 0.797098637, -2.98177554e-08, -0.603849113, 1.83050641e-08, 1, -2.52162575e-08, 0.603849113, 9.04634856e-09, 0.797098637)
            end
        })

        Tabs.Teleport:AddButton({
            Title = "Go to lobbu",
            Description = "go to the lobby thing",
            Callback = function()
                p.Character.HumanoidRootPart.CFrame = CFrame.new(1.04192972, 2.99999928, -247.8228, 0.762138188, 0, -0.647414386, 0, 1, 0, 0.647414386, 0, 0.762138188)
            end
        })

        -- Auto buy

        local asdaaaads = Tabs.AutoBuy:AddToggle("alskdj", {Title = "Auto buy Murderer (free)", Default = false })

function check2point0()
    for i,v in pairs(p.PlayerGui:GetDescendants()) do
        if v:IsA("TextLabel") then 
        if v.Text == "Purchase for 500 credits" or v.Text == "A player has already requested to be the murderer. Please wait till the next round" or v.Text == "You have been set as the next murderer!" then
         v.Parent.Parent.Visible = false
        end
     end
end
end

        asdaaaads:OnChanged(function()
            while asdaaaads.Value == true do
            check2point0()        

                local args = {
                    [1] = 60,
                    [2] = {
                        ["confirm"] = true,
                        ["image"] = 0,
                        ["name"] = "\nBe the murderer \n [Who did it]",
                        ["price"] = 0,
                        ["data"] = "requestmurderer"
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
                task.wait(0.0001)
        end
        end)

        local Paragraph = Tabs.AutoBuy:AddParagraph({
            Title        = "Gun Skin auto buy",
            Content      = "Pro",
         })

        local AutasddsadsaoGunCase = Tabs.AutoBuy:AddDropdown("Dropdown", {
            Title = "Buy Gun Case",  -- Title displayed for the dropdown
            Values = {"None","Colors ($100)", "Regular ($400)", "UnCommon Case ($500)", "Rare Case ($2000)", "Legendary ($4000)"},  -- Options available in the dropdown
            Multi = false,  -- Indicates if multiple selections are allowed (in this case, false means single selection)
            Default = "None",  -- Default selection index (1 means the first option "one" is initially selected)
        })
        
        AutasddsadsaoGunCase:OnChanged(function(Value)
            if Value ~= "None" then
                if Value == "Colors ($100)" then
                    local args = {
                        [1] = 66,
                        [2] = "Gun Skins",
                        [3] = "Colors"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                elseif Value == "Regular ($400)" then
                    local args = {
                        [1] = 66,
                        [2] = "Gun Skins",
                        [3] = "Regular Case"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                elseif Value == "UnCommon Case ($500)" then
                    local args = {
                        [1] = 66,
                        [2] = "Gun Skins",
                        [3] = "Uncommon Case"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                elseif Value == "Rare Case ($2000)" then
                    local args = {
                        [1] = 66,
                        [2] = "Gun Skins",
                        [3] = "Rare Case"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                elseif Value == "Legendary ($4000)"   then
                    local args = {
                        [1] = 66,
                        [2] = "Gun Skins",
                        [3] = "Legendary Case"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))                                                         
                end
            end
        end)

 

        local asdads = Tabs.AutoBuy:AddToggle("alskdj", {Title = "Auto buy Colors gun case", Default = false })
        local banana = Tabs.AutoBuy:AddToggle("alskdj", {Title = "Auto buy Regular gun case", Default = false })
        local appleandsomeskibidionit = Tabs.AutoBuy:AddToggle("alskdj", {Title = "Auto buy uncommon gun case", Default = false })
        local skibiditoilet = Tabs.AutoBuy:AddToggle("alskdj", {Title = "Auto buy rare gun case", Default = false })
        local yourmotheriscooliguess = Tabs.AutoBuy:AddToggle("alskdj", {Title = "Auto buy Legendary gun case", Default = false })
        
        local Paragraaph = Tabs.AutoBuy:AddParagraph({
            Title        = "Knife Skin auto buy",
            Content      = "Pro",
         })

         local AutasddsaasdadsdsaoGunCase = Tabs.AutoBuy:AddDropdown("Dropdown", {
            Title = "Buy knife Case",  -- Title displayed for the dropdown
            Values = {"None","Colors ($100)", "Common ($500)", "UnCommon Case ($500)", "Rare Case ($2000)", "Legendary ($4000)"},  -- Options available in the dropdown
            Multi = false,  -- Indicates if multiple selections are allowed (in this case, false means single selection)
            Default = "None",  -- Default selection index (1 means the first option "one" is initially selected)
        })

        AutasddsaasdadsdsaoGunCase:OnChanged(function(Value)
            if Value ~= "None" then
                if Value == "Colors ($100)" then
                    local args = {
                        [1] = 66,
                        [2] = "Knife Skins",
                        [3] = "Colors"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                elseif Value == "Common ($500)" then
                    local args = {
                        [1] = 66,
                        [2] = "Knife Skins",
                        [3] = "Common Case"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                elseif Value == "UnCommon Case ($500)" then
                    local args = {
                        [1] = 66,
                        [2] = "Knife Skins",
                        [3] = "Uncommon Case"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                elseif Value == "Rare Case ($2000)" then
                    local args = {
                        [1] = 66,
                        [2] = "Knife Skins",
                        [3] = "Rare Case"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                elseif Value == "Legendary ($4000)"   then
                    local args = {
                        [1] = 66,
                        [2] = "Knife Skins",
                        [3] = "Legendary Case"
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))                                                         
                end
            end
        end)

        local asdadas = Tabs.AutoBuy:AddToggle("alskdj", {Title = "Auto buy Colors Knife case", Default = false })
        local bananaa = Tabs.AutoBuy:AddToggle("alskdj", {Title = "Auto buy Common Knife case", Default = false })
        local applaeandsomeskibidionit = Tabs.AutoBuy:AddToggle("alskdj", {Title = "Auto buy uncommon Knife case", Default = false })
        local skiabiditoilet = Tabs.AutoBuy:AddToggle("alskdj", {Title = "Auto buy rare Knife case", Default = false })
        local youramotheriscooliguess = Tabs.AutoBuy:AddToggle("alskdj", {Title = "Auto buy Legendary Knife case", Default = false })

        asdadas:OnChanged(function()
            while asdadas.Value == true do
                local args = {
                    [1] = 66,
                    [2] = "Knife Skins",
                    [3] = "Colors"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                task.wait(0.0001)

            end
        end)

        
        bananaa:OnChanged(function()
            while bananaa.Value == true do
                local args = {
                    [1] = 66,
                    [2] = "Knife Skins",
                    [3] = "Common Case"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                task.wait(0.0001)

            end
        end)

        applaeandsomeskibidionit:OnChanged(function()
            while applaeandsomeskibidionit.Value == true do
                local args = {
                    [1] = 66,
                    [2] = "Knife Skins",
                    [3] = "Uncommon Case"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                task.wait(0.0001)

            end
        end)

        skiabiditoilet:OnChanged(function()
            while skiabiditoilet.Value == true do
                local args = {
                    [1] = 66,
                    [2] = "Knife Skins",
                    [3] = "Rare Case"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                task.wait(0.0001)
            end
        end)

        youramotheriscooliguess:OnChanged(function()
            while youramotheriscooliguess.Value == true do
                local args = {
                    [1] = 66,
                    [2] = "Knife Skins",
                    [3] = "Legendary Case"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                task.wait(0.00001)
            end
        end)




        asdads:OnChanged(function()
            while asdads.Value == true do
                local args = {
                    [1] = 66,
                    [2] = "Gun Skins",
                    [3] = "Colors"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                task.wait(0.0001)

            end
        end)

        
        banana:OnChanged(function()
            while banana.Value == true do
                local args = {
                    [1] = 66,
                    [2] = "Gun Skins",
                    [3] = "Regular Case"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                task.wait(0.0001)

            end
        end)

        appleandsomeskibidionit:OnChanged(function()
            while appleandsomeskibidionit.Value == true do
                local args = {
                    [1] = 66,
                    [2] = "Gun Skins",
                    [3] = "Uncommon Case"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                task.wait(0.0001)

            end
        end)

        skibiditoilet:OnChanged(function()
            while skibiditoilet.Value == true do
                local args = {
                    [1] = 66,
                    [2] = "Gun Skins",
                    [3] = "Rare Case"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                task.wait(0.0001)
            end
        end)

        yourmotheriscooliguess:OnChanged(function()
            while yourmotheriscooliguess.Value == true do
                local args = {
                    [1] = 66,
                    [2] = "Gun Skins",
                    [3] = "Legendary Case"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
                task.wait(0.00001)
            end
        end)


        -- Player
local englishukisaoffbrandqwertyB = Tabs.Player:AddToggle("Noclip", {Title = "Inf jump", Default = false})
local UserInputService = game:GetService("UserInputService")
englishukisaoffbrandqwertyB:OnChanged(function()
    if englishukisaoffbrandqwertyB.Value then
        UserInputService.JumpRequest:Connect(function()
            if englishukisaoffbrandqwertyB.Value then
                p.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
            end
        end)
    end
end)


local englishukisaoffbrandqwerty =  Tabs.Player:AddToggle("Noclip", {Title = "Noclip", Default = false})

englishukisaoffbrandqwerty:OnChanged(function ()
    if englishukisaoffbrandqwerty.Value == true then
        for i,v in pairs(p.Character:GetChildren()) do
            if v:IsA("Part") or v:IsA("MeshPart") then
                v.CanCollide = false
            end
        end
    else
        for i,v in pairs(p.Character:GetChildren()) do
            if v:IsA("Part") or v:IsA("MeshPart") then
                v.CanCollide = true
            end
        end
    end
end)

local aaaaaaaaaaaaaaaaaa = Tabs.Player:AddToggle("Fly", {Title = "Fly", Default = false })
local flying = true
local a = true
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
aaaaaaaaaaaaaaaaaa:OnChanged(function()
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



        -- Misc

        Tabs.Misc:AddButton({Title = "Disguise", Description = "Disguises you ", Callback = function () local a={[1]=42,[2]=true}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(a)) end})
        Tabs.Misc:AddButton({Title = "UnDisguise", Description = "UnDisguises you ", Callback = function () local a={[1]=42,[2]=false}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(a)) end})
        Tabs.Misc:AddButton({Title = "Reload", Description = "Reloads/refreshes you ", Callback = function () local a={[1]=42,[2]=true}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(a)) local a={[1]=42,[2]=false}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(a)) end})

        local d = Tabs.Misc:AddToggle("alskdj", {Title = "Anti afk", Default = false })
        d:OnChanged(function()
            while d.Value == true do
                    game.Players.LocalPlayer.Idled:Connect(function()
                        game:GetService("VirtualUser"):Button1Up(Vector2.new(0,0), game.Workspace.Camera.CFrame)
                    end)
                wait(0.000000000000000001)	
                end
        end)

        local Colorpicker = Tabs.Misc:AddColorpicker("Colorpicker", {
            Title = "Table Color (non fe)",
            Default = Color3.fromRGB(108, 88, 75)
        })

        Colorpicker:OnChanged(function()
            workspace.table.top.Color = Colorpicker.Value
        end)

        local Colorpickera = Tabs.Misc:AddColorpicker("Colorpicker", {
            Title = "Chairs Color (non fe)",
            Default = Color3.fromRGB(108, 88, 75)
        })

        Colorpickera:OnChanged(function()
            for i,v in pairs(workspace.chairs:GetDescendants()) do
                if v:IsA("MeshPart") or v:IsA("Part") then
                    v.Color = Colorpickera.Value
                
                end
            end
        end)

        local Colorpickerb = Tabs.Misc:AddColorpicker("Colorpicker", {
            Title = "Light color (non fe)",
            Default = Color3.fromRGB(255,255,255)
        })

        Colorpickerb:OnChanged(function()
            local v = Colorpickerb.Value
            workspace.light.PointLight.Color = v
            workspace.light.Color = v

        end)

        local RunService = game:GetService("RunService")

        local function rainbowify(object)
            -- RunService.Heartbeat:Connect(function()
                local hue = (tick() % 5) / 5
                object.Color = Color3.fromHSV(hue, 1, 1)
            -- end)
        end

        local thisoneisforieatdogsforbreakfast = Tabs.Misc:AddToggle("alskdj", {Title = "Rainbow Light", Description = "have Eye-catching color effect", Default = false })

        thisoneisforieatdogsforbreakfast:OnChanged(function()
            while thisoneisforieatdogsforbreakfast.Value == true do
                if workspace:FindFirstChild("light") then
                    rainbowify(workspace.light)
                    if workspace.light:FindFirstChild("PointLight") then
                        rainbowify(workspace.light.PointLight)
                    end
                end
            task.wait(0.000001)
        end
        end)

        local qwertukishidious = Tabs.Misc:AddToggle("alskdj", {Title = "Rainbow Chairs", Description = "have Eye-catching color effect", Default = false })

        qwertukishidious:OnChanged(function()
            while qwertukishidious.Value == true do
                          for i,v in pairs(workspace.chairs:GetDescendants()) do
                    if v:IsA("MeshPart") or v:IsA("Part") then
                        rainbowify(v)
                    end
            end
            task.wait(0.000001)
        end
        end)


            local qwertusontop = Tabs.Misc:AddToggle("alskdj", {Title = "Rainbow Table", Description = "have Eye-catching color effect", Default = false })

            qwertusontop:OnChanged(function()
                while qwertusontop.Value == true do
                  rainbowify(workspace.table.top)
                  task.wait(0.0000001)
                end
            end)
        -- Combat

        Tabs.Combat:AddButton({
            Title = "Kill all (must have gun)",
            Description = "Made by some person online",
            Callback = function ()
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(16, "public")
                wait()
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v.Name == game.Players.LocalPlayer.Name and v.Name == "dingding158" then
                    else
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(30, v)
                    end
                end         
            end
        })

        local Toggle = Tabs.Combat:AddToggle("alskdj", {Title = "See murderer / private shooter", Description = "Enable's the pointlight in the light object", Default = false })

        Toggle:OnChanged(function()
            while Toggle.Value == true do
                workspace.light.PointLight.Enabled = true
                wait(0.0000000001)
            end
        end)
        local gaything = Tabs.Combat:AddToggle("alskdj", {Title = "Auto kill", Description = "have to have knife", Default = false })

        gaything:OnChanged(function()
            while gaything.Value == true do
                local localPlayer = game.Players.LocalPlayer
                local localCharacter = localPlayer.Character
                if localCharacter and localCharacter:FindFirstChild("HumanoidRootPart") then
                    if localCharacter:FindFirstChild("Blade") then
                        for _, player in pairs(game.Players:GetPlayers()) do
                            if player ~= localPlayer then
                                local character = player.Character
                                if character and character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("Blade") then
                                    localCharacter.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame
                                    localCharacter.HumanoidRootPart.Orientation = character.HumanoidRootPart.Orientation
                                    local vuser = game:GetService("VirtualUser")
                                    vuser:ClickButton1(Vector2.new(0,0))
                                    task.wait(.35)
                                end
                            end
                        end
                    end
                end
                game:GetService("RunService").Stepped:Wait() -- Short delay between cycles
            end
        end)
        

        

        local aaaa = Tabs.Combat:AddToggle("alskdj", {Title = "Auto Gun killall ", Description = "have to have gun", Default = false })

        aaaa:OnChanged(function()
            while aaaa.Value == true do
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(16, "public")
                wait()
                for i,v in pairs(game.Players:GetPlayers()) do
                    if v.Name == game.Players.LocalPlayer.Name and v.Name == "dingding158" then
                        else
                        game:GetService("ReplicatedStorage").RemoteEvent:FireServer(30, v)
                    end
                end         
                wait(0.1) -- Short delay between cycles
            end
        end)



        
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

    print("Loaded in " .. string.format("%.2f", tick() - t) .. " seconds")
