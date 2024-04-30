local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
    
local Window = Fluent:CreateWindow({
    Title = "Key System | Cosmic Hub",
    SubTitle = "By cheese",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({
        Title = "Main",
        Icon = "home",
    }),
    Key = Window:AddTab({
        Title = "Key",
        Icon = "shield"
    }),
    Settings = Window:AddTab({ 
        Title = "Settings", 
        Icon = "settings" 
    })
}

function Notify(Title, Content, SubContent, Duration)
    Fluent:Notify({
        Title = Title,
        Content = Content,
        SubContent = SubContent , -- Optional
        Duration = Duration or 2 -- Set to nil to make the notification not disappear
    })
end

_G.Key = "Hello"

local Options = Fluent.Options

do

    Tabs.Main:AddParagraph({
        Title = "Cosmic Hub is a powerful cheat.",
        Content = "Note: Cosmic Hub is currently under development and may be unstable."
    })

    Tabs.Key:AddInput("Input", {
        Title = "Enter Key",
        Default = "None",
        Placeholder = "None",
        Numeric = false, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function(Value)
            if Value == _G.Key then
                CheckKey(Value)
            end
        end
    })
    
    function CheckKey(Value)
        if Value == _G.Key then
            if game.PlaceId == 6403373529 then 
                local bypass;
            
                bypass = hookmetamethod(game, "__namecall", function(method, ...) 
                    if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Ban then
                        return
                    elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.AdminGUI then
                        return
                    elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.WalkSpeedChanged then
                        return
                    end
            
                    return bypass(method, ...)
                end)
            
                -------------------------------------------------------------------------------------------------------------------
                local block = Instance.new("Part")
                block.Name = "SafePort15"
                block.Size = Vector3.new(100, 10, 100) 
                block.Transparency = 0.5 
                block.CanCollide = true
                block.Anchored = true
                block.Position = Vector3.new(-450.2176666, -28161.4883, -2.34852624, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                block.Parent = game.Workspace
                -------------------------------------------------------------------------------------------------------------------
            
                local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
                local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
                local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
                
                local Window = Fluent:CreateWindow({
                    Title = "Slap Battles | Cosmic Hub",
                    SubTitle = "By cheese",
                    TabWidth = 160,
                    Size = UDim2.fromOffset(580, 460),
                    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
                    Theme = "Dark",
                    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
                })
                
                local Tabs = {
                    Main = Window:AddTab({
                        Title = "Main",
                        Icon = "home",
                    }),
                    Combat = Window:AddTab({
                        Title = "Combat",
                        Icon = "shield"
                    }),
                    Misc = Window:AddTab({ 
                        Title = "Misc", 
                        Icon = "wrench" 
                    }),
                    Badges = Window:AddTab({ 
                        Title = "Badges", 
                        Icon = "award" 
                    }),
                    Player = Window:AddTab({ 
                        Title = "Player", 
                        Icon = "user" 
                    }),
                    Settings = Window:AddTab({ 
                        Title = "Settings", 
                        Icon = "settings" 
                    })
                }
                
                function Notify(Title, Content, SubContent, Duration)
                    Fluent:Notify({
                        Title = Title,
                        Content = Content,
                        SubContent = SubContent , -- Optional
                        Duration = Duration or 2 -- Set to nil to make the notification not disappear
                    })
                end
                
                local Options = Fluent.Options
                
                do
                    Tabs.Main:AddParagraph({
                        Title = "Cosmic Hub is a powerful cheat.",
                        Content = "Note: Cosmic Hub is currently under development and may be unstable."
                    })
            
                    local SlapAura = Tabs.Combat:AddToggle("Slap", {Title = "Slap Aura", Default = false })
            
                    SlapAura:OnChanged(function()
                        if Options.Slap.Value == true then
                            _G.SlapAura = true
                            while _G.SlapAura == true do
                                for _, v in ipairs(game.Players:GetChildren()) do
                                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
                                        if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") then
                                            Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                                            if 25 >= Magnitude then
                                                game.ReplicatedStorage.KSHit:FireServer(v.Character:WaitForChild("HumanoidRootPart"))
                                            end
                                        end
                                    end
                                end
                                task.wait()
                            end
                        else
                            _G.SlapAura = false
                        end
                    end)
            
                    ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            
                    Tabs.Player:AddSlider("WalkSpeedChanged", {
                        Title = "Speed Hack",
                        Description = "Changes your's walkspeed",
                        Default = 16,
                        Min = 0,
                        Max = 500,
                        Rounding = 1,
                        Callback = function(Value)
                            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
                        end
                    })
            
                    Tabs.Player:AddSlider("JumpPowerChanged", {
                        Title = "Jump Power Hack",
                        Description = "Changes your's jump power",
                        Default = 50,
                        Min = 0,
                        Max = 500,
                        Rounding = 1,
                        Callback = function(Value)
                            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
                        end
                    })
            
                    Tabs.Player:AddSlider("GravityChanged", {
                        Title = "Gravity Hack",
                        Description = "Changes your's gravity",
                        Default = 196.2,
                        Min = 0,
                        Max = 500,
                        Rounding = 1,
                        Callback = function(Value)
                            workspace.Gravity = Value
                        end
                    })
                    
                    -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                        
                    local Portal = Tabs.Misc:AddToggle("Portal", {Title = "Anti Portal", Default = false })
                    local Void = Tabs.Misc:AddToggle("Void", {Title = "Anti Void", Default = false })
                    local Alchemist = Tabs.Misc:AddToggle("Ingridients", {Title = "Get Infinite Ingredients", Default = false })
            
                    Portal:OnChanged(function()
                        if Options.Portal.Value == true then
                            local block = Instance.new("Part")
                            block.Name = "Anti GS"
                            block.Size = Vector3.new(12.762105941772461, 14.961214065551758, 5.8665102124214172) 
                            block.Transparency = 0.9 
                            block.CanCollide = true 
                            block.Anchored = true
                            block.Position = Vector3.new(-803.081604, 328.906738, -21.2476311, 0, 0, 1, 0, -1, 0, 1, 0, -0) 
                            block.Parent = game.Workspace
                            -----------------------------------------------------------------------------------------------------------
                            local block = Instance.new("Part")
                            block.Name = "Anti KS"
                            block.Size = Vector3.new(12.762105941772461, 14.961214065551758, 5.8665102124214172) 
                            block.Transparency = 0.9 
                            block.CanCollide = true 
                            block.Anchored = true
                            block.Position = Vector3.new(-788.860962, 328.906738, 17.1004639, 0, 0, -1, 0, -1, -0, -1, 0, -0)
                            block.Parent = game.Workspace
                            ---------------------------------------------------------------------------------------------------------------
                            local block = Instance.new("Part")
                            block.Name = "Anti SR"
                            block.Size = Vector3.new(12.762105941772461, 14.961214065551758, 5.8665102124214172) 
                            block.Transparency = 0.9
                            block.CanCollide = true
                            block.Anchored = true 
                            block.Position = Vector3.new(-803.098694, 328.906738, 16.7261944, 0, 0, 1, 0, -1, 0, 1, 0, -0)
                            block.Parent = game.Workspace
                            ------------------------------------------------------------------------------------------------------------
                            local block = Instance.new("Part")
                            block.Name = "Anti DF"
                            block.Size = Vector3.new(5.8665102124214172, 14.961214065551758, 12.762105941772461)
                            block.Transparency = 0.9
                            block.CanCollide = true 
                            block.Anchored = true
                            block.Position = Vector3.new(-810.073608, 329.886566, -8.02650452, 1, 0, 0, 0, -1, 0, 0, 0, -1)
                            block.Parent = game.Workspace
                        else
                            local block = game.Workspace:FindFirstChild("Anti GS")
                            if block then
                                block:Destroy()
                            end
                            ----------------
                            local block = game.Workspace:FindFirstChild("Anti KS")
                            if block then
                                block:Destroy()
                            end
                            --------------------------
                            local block = game.Workspace:FindFirstChild("Anti SR")
                            if block then
                                block:Destroy()
                            end
                            ------------------------------
                            local block = game.Workspace:FindFirstChild("Anti DF")
                            if block then
                                block:Destroy()
                            end
                        end
                    end)
                
                    Void:OnChanged(function()
                        if Options.Void.Value == true then
                            local block = Instance.new("Part")
                            block.Name = "AntiVoid"
                            block.Size = Vector3.new(265, 1, 1000) 
                            block.Transparency = 0.5 
                            block.CanCollide = true 
                            block.Anchored = true 
                            block.Position = Vector3.new(0, -9, 0)
                            block.Parent = game.Workspace
                            ---------------------------------------------------------------------------------------------
                            local block = Instance.new("Part")
                            block.Name = "AntiVoidPsycho"
                            block.Size = Vector3.new(2000, 1, 1000) 
                            block.Transparency = 0.5 
                            block.CanCollide = true 
                            block.Anchored = true 
                            block.Position = Vector3.new(17800.9082, 2947, -226.017517, -0.248515129, 0.00487846136, -0.968615651, 0.966844261, -0.0594091415, -0.248359889, -0.0587562323, -0.998221755, 0.0100474358)
                            block.Parent = game.Workspace
                            ----------------------------------------------------------------------------------------------
                            local block = Instance.new("Part")
                            block.Name = "AntiVoid2"
                            block.Size = Vector3.new(500, 10, 1000)
                            block.Transparency = 0.5 
                            block.CanCollide = true
                            block.Anchored = true 
                            block.Position = Vector3.new(200, -24, 0)
                            block.Parent = game.Workspace
                            ----------------------------------------------------------------------------------------------------------------------
                            local block = Instance.new("Part")
                            block.Name = "AntiVoid3"
                            block.Size = Vector3.new(1000, 1, 48) 
                            block.Transparency = 0.5 
                            block.CanCollide = true 
                            block.Anchored = true 
                            block.Position = Vector3.new(150, -24, 0) 
                            block.Parent = game.Workspace
                            ----------------------------------------------------------------------------------------------------------------------------
                            local block = workspace:FindFirstChild("AntiVoid3")
                            if block then
                                local rotationAngle = 90
                                local rotationCFrame = CFrame.Angles(0, math.rad(rotationAngle), 0)
                                block.CFrame = block.CFrame * rotationCFrame
                            end
                            -------------------------------------------------------------------------------------------------
                            local block = Instance.new("Part")
                            block.Name = "AntiVoidRetro6"
                            block.Size = Vector3.new(460, 3, 150) 
                            block.Transparency = 0.5
                            block.CanCollide = true
                            block.Anchored = true 
                            block.Position = Vector3.new(-27930.4746, 160.009445, 4835.11084, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
                            block.Parent = game.Workspace
                            -------------------------------------------------------------------------------------------------
                            local block = Instance.new("Part")
                            block.Name = "AntiVoidRetro5"
                            block.Size = Vector3.new(500, 3, 150) 
                            block.Transparency = 0.5 
                            block.CanCollide = true 
                            block.Anchored = true 
                            block.Position = Vector3.new(-27965.0977, 35.1371307, 4834.51074, 1, 0, 0, 0, 1, 0, 0, 0, 1) 
                            block.Parent = game.Workspace
                            -------------------------------------------------------------------------------------------------
                            local block = Instance.new("Part")
                            block.Name = "AntiVoidRetro4"
                            block.Size = Vector3.new(1000, 5, 500) 
                            block.Transparency = 0.5 
                            block.CanCollide = true 
                            block.Anchored = true
                            block.Position = Vector3.new(-28030.8477, -93.4633942, 4950.85986, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
                            block.Parent = game.Workspace
                            -------------------------------------------------------------------------------------------------
                            local block = Instance.new("Part")
                            block.Name = "AntiVoidRetro3"
                            block.Size = Vector3.new(100, 5, 1000) 
                            block.Transparency = 0.5 
                            block.CanCollide = true 
                            block.Anchored = true
                            block.Position = Vector3.new(-28030.6484, -219.863602, 4836.85986, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                            block.Parent = game.Workspace
                            -------------------------------------------------------------------------------------------------
                            local block = Instance.new("Part")
                            block.Name = "AntiVoidRetro2"
                            block.Size = Vector3.new(1000, 2, 1000)
                            block.Transparency = 0.5 
                            block.CanCollide = true 
                            block.Anchored = true 
                            block.Position = Vector3.new(-16906.6445, 770.000549, 4719.68848, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                            block.Parent = game.Workspace
                            -------------------------------------------------------------------------------------------------
                            local block = Instance.new("Part")
                            block.Name = "AntiVoidRetro"
                            block.Size = Vector3.new(1000, 2, 1000)
                            block.Transparency = 0.5 
                            block.CanCollide = true 
                            block.Anchored = true 
                            block.Position = Vector3.new(-16874.8262, -7.55000019, 4799.2666)
                            block.Parent = game.Workspace
                            -------------------------------------------------------------------------------------------------
                            local block = workspace:FindFirstChild("AntiVoid3")
                            if block then
                                local rotationAngle = 45
                                local rotationCFrame = CFrame.Angles(math.rad(rotationAngle), 0, 0)
                                block.CFrame = block.CFrame * rotationCFrame
                            end
                            --------------------------------------------------------------------------------------------------------
                            local block = Instance.new("Part")
                            block.Name = "AntiVoid4"
                            block.Size = Vector3.new(265, 1, 1000) 
                            block.Transparency = 0.5
                            block.CanCollide = true 
                            block.Anchored = true
                            block.Position = Vector3.new(-135, -9, 0)
                            block.Parent = game.Workspace
                            -----------------------------------------------------------------------------------------------------
                            local block = Instance.new("Part")
                            block.Name = "AntiVoidBA"
                            block.Size = Vector3.new(2000, 10, 2000)
                            block.Transparency = 0.5 
                            block.CanCollide = true 
                            block.Anchored = true
                            block.Position = Vector3.new(3500, 74.5, 0)
                            block.Parent = game.Workspace
                            -----------------------------------------------------------------------------------------------------
                            local block = Instance.new("Part")
                            block.Name = "AntiVoid5"
                            block.Size = Vector3.new(300, 1, 1000)
                            block.Transparency = 0.5 
                            block.CanCollide = true
                            block.Anchored = true 
                            block.Position = Vector3.new(-400, -15, 0)
                            block.Parent = game.Workspace
                        else
                            local block = game.Workspace:FindFirstChild("AntiVoid")
                            if block then
                                block:Destroy()
                            end
                            ----------------------------------------------------------------------------
                            local block = game.Workspace:FindFirstChild("AntiVoid2")
                            if block then
                                block:Destroy()
                            end
                            -----------------------------------------------------------------------------------
                            local block = game.Workspace:FindFirstChild("AntiVoid3")
                            if block then
                                block:Destroy()
                            end
                            --------------------------------------------------------------------------------------
                            local block = game.Workspace:FindFirstChild("AntiVoid4")
                            if block then
                                block:Destroy()
                            end
                            --------------------------------------------------------------------------------------------
                            local block = game.Workspace:FindFirstChild("AntiVoidBA")
                            if block then
                                block:Destroy()
                            end
                            ------------------------------------------------------------------------------------------
                            local block = game.Workspace:FindFirstChild("AntiVoidRetro6")
                            if block then
                                block:Destroy()
                            end
                            ------------------------------------------------------------------------------------------
                            local block = game.Workspace:FindFirstChild("AntiVoidRetro5")
                            if block then
                                block:Destroy()
                            end
                            ------------------------------------------------------------------------------------------
                            local block = game.Workspace:FindFirstChild("AntiVoidRetro4")
                            if block then
                                block:Destroy()
                            end
                            -------------------------------------------------------------------------------------------
                            local block = game.Workspace:FindFirstChild("AntiVoidRetro3")
                            if block then
                                block:Destroy()
                            end
                            ------------------------------------------------------------------------------------------
                            local block = game.Workspace:FindFirstChild("AntiVoidPsycho")
                            if block then
                                block:Destroy()
                            end
                            ------------------------------------------------------------------------------------------
                            local block = game.Workspace:FindFirstChild("AntiVoidRetro2")
                            if block then
                                block:Destroy() 
                            end
                            -------------------------------------------------------------------------------------------
                            local block = game.Workspace:FindFirstChild("AntiVoidRetro")
                            if block then
                                block:Destroy()
                            end
                            --------------------------------------------------------------------------------------------
                            local block = game.Workspace:FindFirstChild("AntiVoid5")
                            if block then
                                block:Destroy()
                            end
                        end
                    end)
                
                    Alchemist:OnChanged(function()
                        if Options.Ingridients.Value == true then
                            _G.AlchemistScript = true
                
                            while _G.AlchemistScript == true do
                                if game.Players.LocalPlayer.leaderstats.Glove.Value == "Alchemist" then
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Mushroom")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Glowing Mushroom")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Fire Flower")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Winter Rose")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Dark Root")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Dire Flower")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Autumn Sprout")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Elder Wood")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Hazel Lily")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Wild Vine")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Jade Stone")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Lamp Grass")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Plane Flower")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Blood Rose")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Red Crystal")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Blue Crystal")
                                    game.ReplicatedStorage.AlchemistEvent:FireServer("AddItem","Cake Mix")
                                    task.wait()        
                                else
                                    Notify("Error", "You must need alchemist glove equipped!", "", 3)
                                end   
                            end
                        else
                            _G.AlchemistScript = false
                        end
                    end)
            
                    local TeleportDrow = Tabs.Misc:AddDropdown("TeleportSection", {
                        Title = "Teleport",
                        Values = {"Slapple Island", "Moai Island", "Plate", "Battle Arena", "Cannon Island", "Defualt Arena", "Normal Arena", "Spawn", "Safe Port"},
                        Multi = false,
                    })
            
                    TeleportDrow:OnChanged(function(Value)
                        if Value == "Slapple Island" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.island5.Union.CFrame
                        elseif Value == "Moai Island" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.island4["Big Tree"].Bark.CFrame
                        elseif Value == "Plate" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame
                        elseif Value == "Battle Arena" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0,10,0)
                        elseif Value == "Cannon Island" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(257.620972, 35.9974861, 198.8535, 0.788386106, 0.045268368, -0.613512933, -8.81827944e-09, 0.997288942, 0.0735854656, 0.615180731, -0.0580137558, 0.786248744)
                        elseif Value == "Defualt Arena" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120,364,-3)
                        elseif Value == "Normal Arena" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.3642788, -3.69053721, -7.41954088, 0.405183077, -0.00669269683, -0.914211094, -1.2553046e-05, 0.999973178, -0.00732610561, 0.914235532, 0.00297989813, 0.40517211)
                        elseif Value == "Spawn" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-798.47345, 329.357147, 0.84058404, -0.791819096, -2.52048302e-08, -0.610755682, -2.72838037e-08, 1, -5.89596372e-09, 0.610755682, 1.19952013e-08, -0.791819096)
                        elseif Value == "Safe Port" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-450.217651, -28151.4883, -2.34852624, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                        elseif Value == "None" then
                            print("None")
                        end
                    end)
            
                    ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            
                    local BadgeSelection = Tabs.Badges:AddDropdown("BadgeSection", {
                        Title = "Badges",
                        Values = {"Brazil Badge", "Duck Badge", "Court Evidence Badge", "Lone Orange Badge", "Retro Badge", "Ice Skate Badge", "Trap Badge", "Redacted Badge", "Ice Essence Badge"},
                        Multi = false,
                    })
            
                    BadgeSelection:OnChanged(function(Value)
                        if Value == "Brazil Badge" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Lobby.brazil.portal.CFrame
                        elseif Value == "Ice Essence Badge" then
                            game:GetService("TeleportService"):Teleport(17290438723)
                        elseif Value == "Duck Badge" then
                            fireclickdetector(workspace.Arena["default island"]["Rubber Ducky"].ClickDetector)
                        elseif Value == "Court Evidence Badge" then
                            fireclickdetector(workspace.Lobby.Scene.knofe.ClickDetector)
                        elseif Value == "Lone Orange Badge" then
                            fireclickdetector(workspace.Arena.island5.Orange.ClickDetector)
                        elseif Value == "Retro Badge" then
                            if game.Players.LocalPlayer.leaderstats.Glove == "Recall" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.FinishDoor_Retro.Part.CFrame
                            else
                                Notify("Error", "You must need recall glove equipped!", "", 3)
                            end
                        elseif Value == "Ice Skate Badge" then
                            local args = {
                                [1] = "Freeze"
                            }
                            
                            game:GetService("ReplicatedStorage").IceSkate:FireServer(unpack(args))
                        elseif Value == "Trap Badge" then
                            if game.Players.LocalPlayer.leaderstats.Glove.Value == "Brick" then
                                for i = 1, 200 do
                                    game:GetService("ReplicatedStorage").lbrick:FireServer()
                                    game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
                                    wait(Random.new():NextNumber(1.1,1.25))
                                    game:GetService("ReplicatedStorage").lbrick:FireServer()
                                    game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
                                    wait(Random.new():NextNumber(1.1,1.25))
                                    game:GetService("ReplicatedStorage").lbrick:FireServer()
                                    game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
                                    wait(Random.new():NextNumber(1.1,1.25))
                                    game:GetService("ReplicatedStorage").lbrick:FireServer()
                                    game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
                                    wait(Random.new():NextNumber(1.1,1.25))
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true,'E',false,x)
                                    wait(Random.new():NextNumber(1.1,1.25))
                                end
                            else
                                Notify("Error", "You must need brick glove equipped!", "", 3)
                            end
                        elseif Value == "Redacted Badge" then
                            if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 5000 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["1"].CFrame
                                wait(3.75)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["10"].CFrame
                                wait(3.75)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["2"].CFrame
                                wait(3.75)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["3"].CFrame
                                wait(3.75)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["4"].CFrame
                                wait(3.75)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["5"].CFrame
                                wait(3.75)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["6"].CFrame
                                wait(3.75)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["7"].CFrame
                                wait(3.75)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["8"].CFrame
                                wait(3.75)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.PocketDimension.Doors["9"].CFrame
                            else
                                Notify("Error", "You don't have 5000 slaps", "", 3)
                            end
                        elseif Value == "None" then
                            print("None")
                        end
                    end)
            
                    SaveManager:SetLibrary(Fluent)
                    InterfaceManager:SetLibrary(Fluent)
                    SaveManager:IgnoreThemeSettings()
                    SaveManager:SetIgnoreIndexes({})
                    InterfaceManager:SetFolder("FluentScriptHub")
                    SaveManager:SetFolder("FluentScriptHub/SlapBattles")
                    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
                    SaveManager:BuildConfigSection(Tabs.Settings)
                    Window:SelectTab(1)
                end
            elseif game.PlaceId == 9431156611 then
                local bypass;
                bypass = hookmetamethod(game, "__namecall", function(method, ...) 
                    if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.Ban then
                        return
                    elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.AdminGUI then
                        return
                    elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.WS then
                        return
                    elseif getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.Events.WS2 then
                        return
                    end
                    return bypass(method, ...)
                end)
            
                local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
                local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
                local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
                
                local Window = Fluent:CreateWindow({
                    Title = "Slap Royale | Cosmic Hub",
                    SubTitle = "By cheese",
                    TabWidth = 160,
                    Size = UDim2.fromOffset(580, 460),
                    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
                    Theme = "Dark",
                    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
                })
                
                local Tabs = {
                    Main = Window:AddTab({
                        Title = "Main",
                        Icon = "home",
                    }),
                    Combat = Window:AddTab({
                        Title = "Combat",
                        Icon = "shield"
                    }),
                    Misc = Window:AddTab({ 
                        Title = "Misc", 
                        Icon = "wrench" 
                    }),
                    Badges = Window:AddTab({ 
                        Title = "Badges", 
                        Icon = "award" 
                    }),
                    Player = Window:AddTab({ 
                        Title = "Player", 
                        Icon = "user" 
                    }),
                    Settings = Window:AddTab({ 
                        Title = "Settings", 
                        Icon = "settings" 
                    })
                }
            
                function Notify(Title, Content, SubContent, Duration)
                    Fluent:Notify({
                        Title = Title,
                        Content = Content,
                        SubContent = SubContent , -- Optional
                        Duration = Duration or 2 -- Set to nil to make the notification not disappear
                    })
                end
                
                local Options = Fluent.Options
            
                do
                    --// Badges
            
                    Tabs.Badges:AddButton({
                        Title = "Get Lab Code",
                        Description = "Notify's the lab code",
                        Callback = function()
                            if game.Workspace.Map.CodeBrick.SurfaceGui:FindFirstChild("IMGTemplate") then
                                game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "1st"
                                game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "2nd"
                                game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "3rd"
                                game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "4th"
                            end
                            for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                                if v.Name == "1st" then
                                    if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                                        first = "4"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                                        first = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                                        first = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                                        first = "9"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                                        first = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                                        first = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                                        first = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                                        first = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                                        first = "7"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                                        first = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                                        first = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                                        first = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                                        first = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                                        first = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                                        first = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                                        first = "2"
                                    end
                                end
                            end
                            for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                                if v.Name == "2nd" then
                                    if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                                        second = "4"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                                        second = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                                        second = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                                        second = "9"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                                        second = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                                        second = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                                        second = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                                        second = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                                        second = "7"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                                        second = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                                        second = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                                        second = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                                        second = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                                        second = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                                        second = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                                        second = "2"
                                    end
                                end
                            end
                            for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                                if v.Name == "3rd" then
                                    if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                                        third = "4"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                                        third = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                                        third = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                                        third = "9"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                                        third = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                                        third = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                                        third = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                                        third = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                                        third = "7"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                                        third = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                                        third = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                                        third = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                                        third = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                                        third = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                                        third = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                                        third = "2"
                                    end
                                end
                            end
                            for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                                if v.Name == "4th" then
                                    if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                                        fourth = "4"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                                        fourth = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                                        fourth = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                                        fourth = "9"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                                        fourth = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                                        fourth = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                                        fourth = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                                        fourth = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                                        fourth = "7"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                                        fourth = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                                        fourth = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                                        fourth = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                                        fourth = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                                        fourth = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                                        fourth = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                                        fourth = "2"
                                    end
                                end
                            end
            
                            _G.CodeEsp = first..second..third..fourth
                            Notify("Code", _G.CodeEsp, "", 5)
                        end
                    })
            
                    
            
            
                    --// Combat
            
                    local SlapAura = Tabs.Combat:AddToggle("Slap", {Title = "Slap Aura", Default = false })
            
                    SlapAura:OnChanged(function()
                        if Options.Slap.Value == true then
                            _G.SlapAura = true
                            while _G.SlapAura == true do
                                for _, v in ipairs(game.Players:GetChildren()) do
                                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
                                        if v.Character:FindFirstChild("Dead") == nil and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:WaitForChild("inMatch").Value == true and game.Players.LocalPlayer.Character:WaitForChild("inMatch").Value == true then
                                            Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                                            if 25 >= Magnitude then
                                                game.ReplicatedStorage.Events.Slap:FireServer(v.Character:WaitForChild("HumanoidRootPart"))
                                            end
                                        end
                                    end
                                end
                                task.wait()
                            end
                        else
                            _G.SlapAura = false
                        end
                    end)
            
                    Tabs.Badges:AddButton({
                        Title = "Get Chain",
                        Description = "Entering Key Code",
                        Callback = function()
                            if game.Workspace.Map.CodeBrick.SurfaceGui:FindFirstChild("IMGTemplate") then
                                game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "1st"
                                game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "2nd"
                                game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "3rd"
                                game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "4th"
                            end
                            for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                                if v.Name == "1st" then
                                    if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                                        first = "4"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                                        first = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                                        first = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                                        first = "9"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                                        first = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                                        first = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                                        first = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                                        first = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                                        first = "7"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                                        first = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                                        first = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                                        first = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                                        first = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                                        first = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                                        first = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                                        first = "2"
                                    end
                                end
                            end
                            for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                                if v.Name == "2nd" then
                                    if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                                        second = "4"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                                        second = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                                        second = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                                        second = "9"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                                        second = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                                        second = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                                        second = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                                        second = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                                        second = "7"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                                        second = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                                        second = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                                        second = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                                        second = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                                        second = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                                        second = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                                        second = "2"
                                    end
                                end
                            end
                            for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                                if v.Name == "3rd" then
                                    if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                                        third = "4"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                                        third = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                                        third = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                                        third = "9"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                                        third = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                                        third = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                                        third = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                                        third = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                                        third = "7"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                                        third = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                                        third = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                                        third = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                                        third = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                                        third = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                                        third = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                                        third = "2"
                                    end
                                end
                            end
                            for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                                if v.Name == "4th" then
                                    if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                                        fourth = "4"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                                        fourth = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                                        fourth = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                                        fourth = "9"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                                        fourth = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                                        fourth = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                                        fourth = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                                        fourth = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                                        fourth = "7"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                                        fourth = "8"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                                        fourth = "2"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                                        fourth = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                                        fourth = "3"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                                        fourth = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                                        fourth = "6"
                                    elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                                        fourth = "2"
                                    end
                                end
                            end
                            fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Reset.ClickDetector)
                            wait(0.25)
                            fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[first].ClickDetector)
                            wait(0.25)
                            fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[second].ClickDetector)
                            wait(0.25)
                            fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[third].ClickDetector)
                            wait(0.25)
                            fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[fourth].ClickDetector)
                            wait(0.25)
                            fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Enter.ClickDetector)
                        end,
                    })
                    --// Misc
            
                    Tabs.Misc:AddButton({
                        Title = "Leave Bus Early",
                        Description = "Leaving Bus Early [Votes Kick]",
                        Callback = function()
                            game:GetService("ReplicatedStorage").Events.BusJumping:FireServer()
                            repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("JumpPrompt")
                            game.Players.LocalPlayer.PlayerGui.JumpPrompt:Destroy()
                        end
                    })
            
                    Tabs.Misc:AddButton({
                        Title = "Get All Items",
                        Description = "Collecting all Items on the Map! [Votes Kick]",
                        Callback = function()
                            if game.Players.LocalPlayer.Character:WaitForChild("inMatch").Value == true then
                                for i, v in ipairs(game.Workspace.Items:GetChildren()) do
                                    if v.ClassName == "Tool" and v:FindFirstChild("Handle") then
                                        v.Handle.Anchored = false
                                        v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(v)
                                    end
                                end
                            else
                                Notify("Error", "Use it while you in Bus", "", 5)
                            end
                        end
                    })
            
                    local GloveEsp = Tabs.Misc:AddToggle("GloveEsp", {Title = "Glove Esp", Default = false})
            
            
                    GloveEsp:OnChanged(function()
                        if Options.GloveEsp.Value == true then
                            _G.GloveEsp = true
                            while _G.GloveEsp == true do
                                for i, v in ipairs(game.Players:GetChildren()) do
                                    if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.Character.inMatch.Value == true and v.Character.Head:FindFirstChild("GloveEsp") == nil then
                                        GloveEsp = Instance.new("BillboardGui", v.Character.Head)
                                        GloveEsp.Adornee = v.Character.Head
                                        GloveEsp.Name = "GloveEsp"
                                        GloveEsp.Size = UDim2.new(0, 100, 0, 150)
                                        GloveEsp.StudsOffset = Vector3.new(0, 1, 0)
                                        GloveEsp.AlwaysOnTop = true
                                        GloveEsp.StudsOffset = Vector3.new(0, 3, 0)
                                        GloveEspText = Instance.new("TextLabel", GloveEsp)
                                        GloveEspText.BackgroundTransparency = 1
                                        GloveEspText.Size = UDim2.new(0, 100, 0, 100)
                                        GloveEspText.TextSize = 25
                                        GloveEspText.Font = Enum.Font.FredokaOne
                                        GloveEspText.TextColor3 = Color3.new(255, 255, 255)
                                        GloveEspText.TextStrokeTransparency = 0
                                        GloveEspText.Text = v.Character.Name.." [..v.Glove.Value..]"
                                    end
                                end
                                task.wait()
                            end
                        else
                            for i, v in ipairs(game.Players:GetChildren()) do
                                if v.Character and v.Character:FindFirstChild("Head") and v.Character.Head:FindFirstChild("GloveEsp") then
                                    v.Character.Head.GloveEsp:Destroy()
                                end
                            end
                        end
                    end)
            
                    Tabs.Misc:AddButton({
                        Title = "Item Esp",
                        Description = "You able to see all items on the map",
                        Callback = function()
                            for i, v in ipairs(game.Workspace.Items:GetChildren()) do
                                if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChild("ItemESP") == nil then
                                    ItemESP = Instance.new("BillboardGui", v.Handle)
                                    ItemESP.Adornee = v.Handle
                                    ItemESP.Name = "ItemESP"
                                    ItemESP.Size = UDim2.new(0, 100, 0, 150)
                                    ItemESP.StudsOffset = Vector3.new(0, 1, 0)
                                    ItemESP.AlwaysOnTop = true
                                    ItemESP.StudsOffset = Vector3.new(0, 3, 0)
                                    ItemESPText = Instance.new("TextLabel", ItemESP)
                                    ItemESPText.BackgroundTransparency = 1
                                    ItemESPText.Size = UDim2.new(0, 50, 0, 50)
                                    ItemESPText.TextSize = 14
                                    ItemESPText.Font = Enum.Font.FredokaOne
                                    ItemESPText.TextColor3 = Color3.new(255, 255, 255)
                                    ItemESPText.TextStrokeTransparency = 0
                                    ItemESPText.Text = "Item [ "..v.Name.." ]"
                                end
                            end
                        end
                    })
            
                    local RemoveSection = Tabs.Misc:AddDropdown("RemoveSection", {
                        Title = "Remove",
                        Values = {"Acid", "Zone Blur", "Lava"},
                        Multi = false,
                    })
            
                    RemoveSection:OnChanged(function(Value)
                        if Value == "Acid" then
                            for _, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
                                if v.Name == "Acid" then
                                    v:Destroy()
                                end
                            end
                        elseif Value == "Zone Blur" then
                            for _, v in ipairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                                if v.Name == "ZoneEffects" then
                                    v:Destroy()
                                end
                            end
                        elseif Value == "Lava" then
                            for _, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
                                if v.Name == "Lava" then
                                    v:Destroy()
                                end
                            end
                        end
                    end)
            
                    ---------------------------------------------------------------------------
            
                    Tabs.Player:AddSlider("WalkSpeedChanged", {
                        Title = "Speed Hack",
                        Description = "Changes your's walkspeed",
                        Default = 16,
                        Min = 0,
                        Max = 500,
                        Rounding = 1,
                        Callback = function(Value)
                            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
                        end
                    })
            
                    Tabs.Player:AddSlider("JumpPowerChanged", {
                        Title = "Jump Power Hack",
                        Description = "Changes your's jump power",
                        Default = 50,
                        Min = 0,
                        Max = 500,
                        Rounding = 1,
                        Callback = function(Value)
                            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
                        end
                    })
            
                    Tabs.Player:AddSlider("GravityChanged", {
                        Title = "Gravity Hack",
                        Description = "Changes your's gravity",
                        Default = 196.2,
                        Min = 0,
                        Max = 500,
                        Rounding = 1,
                        Callback = function(Value)
                            workspace.Gravity = Value
                        end
                    })
            
                    --------------------------------------------------------------------------------------------------
            
                    Tabs.Main:AddParagraph({
                        Title = "Cosmic Hub is a powerful cheat.",
                        Content = "Note: Cosmic Hub is currently under development and may be unstable."
                    })
            
                    SaveManager:SetLibrary(Fluent)
                    InterfaceManager:SetLibrary(Fluent)
                    SaveManager:IgnoreThemeSettings()
                    SaveManager:SetIgnoreIndexes({})
                    InterfaceManager:SetFolder("FluentScriptHub")
                    SaveManager:SetFolder("FluentScriptHub/SlapRoyale")
                    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
                    SaveManager:BuildConfigSection(Tabs.Settings)
                    Window:SelectTab(1)
                end
            end
        end
    end

    SaveManager:SetLibrary(Fluent)
    InterfaceManager:SetLibrary(Fluent)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({})
    InterfaceManager:SetFolder("FluentScriptHub")
    SaveManager:SetFolder("FluentScriptHub/SlapRoyale")
    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
    SaveManager:BuildConfigSection(Tabs.Settings)
    Window:SelectTab(1)
end
