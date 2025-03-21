local bsslib = {}

function bsslib.getInventory()
    return game.ReplicatedStorage.Events.RetrievePlayerStats:InvokeServer().Eggs
end

function bsslib.Pollen()
    return tonumber(game.Players.LocalPlayer.Character:FindFirstChild("ProgressLabel", true).Text:match("%d+$"))
end

function bsslib.GetCooldown(mob)
    local cd = workspace.MonsterSpawners
    if cd:FindFirstChild(mob) then
        cd = cd:FindFirstChildOfClass("Attachment"):FindFirstChild("TimerGui") or cd:FindFirstChild("Attachment").TimerGui
        if cd.TimerLabel.Visible == false then
            return false
        else 
            return true
        end
    end
    return nil
end

function bsslib.Godmode(boolean)
    local camera = workspace.CurrentCamera
    local lp = game.Players.LocalPlayer
    local camerapos = camera.CFrame
    local character = lp.Character or workspace:FindFirstChild(lp.Name)
    local humanoid = character.Humanoid
    local copy = humanoid:Clone()
    if boolean == true then
        lp.Character = nil
        copy:SetStateEnabled(15, false)
        copy:SetStateEnabled(0, false)
        copy:SetStateEnabled(1, false)
        copy.Parent = character
        humanoid:Destroy()
        lp.Character = character
        camera.CameraSubject = copy
        camera.CFrame = camerapos
        copy.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
        character:FindFirstChild("Animate").Disabled = true
        character:FindFirstChild("Animate").Disabled = false
    else
        humanoid:SetStateEnabled(15, true)
        copy:SetStateEnabled(0, true)
        copy:SetStateEnabled(1, true)
        lp.Character = nil
        humanoid:ChangeState(15)
        lp.Character = character
        humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.Viewer
    end
end

getgenv().kocmoc = {
    toggles = {
        loopspeed = false,
    },
    vars = {
        walkspeed = 70,
        defaultWalkspeed = 40,
    }
}

local function createGUI()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "SimpleBSSGUI"
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    -- Кнопка скрытия/показа GUI вверху экрана
    local ToggleButton = Instance.new("TextButton")
    ToggleButton.Name = "ToggleGUIButton"
    ToggleButton.Size = UDim2.new(0, 50, 0, 30)
    ToggleButton.Position = UDim2.new(0.5, -25, 0, 40)
    ToggleButton.Text = "Hide"
    ToggleButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleButton.Font = Enum.Font.SourceSansBold
    ToggleButton.TextSize = 16
    ToggleButton.Parent = ScreenGui

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 200, 0, 320)
    Frame.Position = UDim2.new(0.5, -100, 0.5, -160)
    Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Frame.BorderSizePixel = 0
    Frame.Parent = ScreenGui

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, -30, 0, 30)
    Title.Position = UDim2.new(0, 0, 0, 0)
    Title.Text = "Bee Swarm Auto"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Title.BorderSizePixel = 0
    Title.Font = Enum.Font.SourceSansBold
    Title.TextSize = 20
    Title.Parent = Frame

    local CloseButton = Instance.new("TextButton")
    CloseButton.Size = UDim2.new(0, 30, 0, 30)
    CloseButton.Position = UDim2.new(1, -30, 0, 0)
    CloseButton.Text = "X"
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    CloseButton.BorderSizePixel = 0
    CloseButton.Font = Enum.Font.SourceSansBold
    CloseButton.TextSize = 20
    CloseButton.Parent = Frame

    local AutofarmButton = Instance.new("TextButton")
    AutofarmButton.Size = UDim2.new(0, 180, 0, 40)
    AutofarmButton.Position = UDim2.new(0, 10, 0, 40)
    AutofarmButton.Text = "Autofarm: OFF"
    AutofarmButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    AutofarmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    AutofarmButton.Font = Enum.Font.SourceSans
    AutofarmButton.TextSize = 18
    AutofarmButton.Parent = Frame

    local ViciousButton = Instance.new("TextButton")
    ViciousButton.Size = UDim2.new(0, 180, 0, 40)
    ViciousButton.Position = UDim2.new(0, 10, 0, 90)
    ViciousButton.Text = "Kill Vicious: OFF"
    ViciousButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    ViciousButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ViciousButton.Font = Enum.Font.SourceSans
    ViciousButton.TextSize = 18
    ViciousButton.Parent = Frame

    local StickBugButton = Instance.new("TextButton")
    StickBugButton.Size = UDim2.new(0, 180, 0, 40)
    StickBugButton.Position = UDim2.new(0, 10, 0, 140)
    StickBugButton.Text = "Kill Stick Bug: OFF"
    StickBugButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    StickBugButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    StickBugButton.Font = Enum.Font.SourceSans
    StickBugButton.TextSize = 18
    StickBugButton.Parent = Frame

    local MondoChickButton = Instance.new("TextButton")
    MondoChickButton.Size = UDim2.new(0, 180, 0, 40)
    MondoChickButton.Position = UDim2.new(0, 10, 0, 190)
    MondoChickButton.Text = "Kill Mondo Chick: OFF"
    MondoChickButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    MondoChickButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    MondoChickButton.Font = Enum.Font.SourceSans
    MondoChickButton.TextSize = 18
    MondoChickButton.Parent = Frame

    local SpeedToggle = Instance.new("TextButton")
    SpeedToggle.Size = UDim2.new(0, 180, 0, 30)
    SpeedToggle.Position = UDim2.new(0, 10, 0, 240)
    SpeedToggle.Text = "Loop Speed: OFF"
    SpeedToggle.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    SpeedToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    SpeedToggle.Font = Enum.Font.SourceSans
    SpeedToggle.TextSize = 16
    SpeedToggle.Parent = Frame

    local SpeedSlider = Instance.new("TextBox")
    SpeedSlider.Size = UDim2.new(0, 180, 0, 30)
    SpeedSlider.Position = UDim2.new(0, 10, 0, 280)
    SpeedSlider.Text = tostring(kocmoc.vars.walkspeed)
    SpeedSlider.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    SpeedSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
    SpeedSlider.Font = Enum.Font.SourceSans
    SpeedSlider.TextSize = 16
    SpeedSlider.Parent = Frame

    local UserInputService = game:GetService("UserInputService")
    
    -- Логика перетаскивания для ToggleButton
    local draggingToggle = false
    local dragStartToggle = nil
    local startPosToggle = nil

    ToggleButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            draggingToggle = true
            dragStartToggle = input.Position
            startPosToggle = ToggleButton.Position
        end
    end)

    ToggleButton.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            draggingToggle = false
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if draggingToggle and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStartToggle
            ToggleButton.Position = UDim2.new(
                startPosToggle.X.Scale,
                startPosToggle.X.Offset + delta.X,
                startPosToggle.Y.Scale,
                startPosToggle.Y.Offset + delta.Y
            )
        end
    end)

    -- Логика перетаскивания для основного окна
    local dragging = false
    local dragStart = nil
    local startPos = nil

    Title.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = Frame.Position
        end
    end)

    Title.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            Frame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)

    return ScreenGui, AutofarmButton, ViciousButton, StickBugButton, MondoChickButton, CloseButton, SpeedToggle, SpeedSlider, ToggleButton
end

local gui, autofarmButton, viciousButton, stickBugButton, mondoChickButton, closeButton, speedToggle, speedSlider, toggleButton = createGUI()

local isAutofarming = false
local isKillingVicious = false
local isKillingStickBug = false
local isKillingMondoChick = false
local viciousPlatform = nil
local stickBugPlatform = nil
local mondoChickPlatform = nil
local hasMovedToPlatform = false
local isGUIVisible = true

local function createPlatform(position, platformName)
    local existingPlatform
    if platformName == "ViciousPlatform" then
        existingPlatform = viciousPlatform
    elseif platformName == "StickBugPlatform" then
        existingPlatform = stickBugPlatform
    else
        existingPlatform = mondoChickPlatform
    end
    if existingPlatform then
        existingPlatform:Destroy()
    end
    local platform = Instance.new("Part")
    platform.Name = platformName
    platform.Size = Vector3.new(20, 2, 20)
    local height = (platformName == "StickBugPlatform" or platformName == "MondoChickPlatform") and 15 or 5
    platform.Position = position + Vector3.new(0, height, 0)
    platform.Anchored = true
    if platformName == "StickBugPlatform" or platformName == "MondoChickPlatform" then
        platform.Transparency = 0.5
        platform.BrickColor = BrickColor.new("Medium stone grey")
    else
        platform.Transparency = 1
    end
    platform.CanCollide = true
    platform.Parent = game.Workspace
    if platformName == "ViciousPlatform" then
        viciousPlatform = platform
    elseif platformName == "StickBugPlatform" then
        stickBugPlatform = platform
    else
        mondoChickPlatform = platform
    end
    return platform
end

local function removePlatform(platformName)
    if platformName == "ViciousPlatform" and viciousPlatform then
        viciousPlatform:Destroy()
        viciousPlatform = nil
    elseif platformName == "StickBugPlatform" and stickBugPlatform then
        stickBugPlatform:Destroy()
        stickBugPlatform = nil
    elseif platformName == "MondoChickPlatform" and mondoChickPlatform then
        mondoChickPlatform:Destroy()
        mondoChickPlatform = nil
    end
end

local function resetWalkSpeed()
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        player.Character.Humanoid.WalkSpeed = kocmoc.vars.defaultWalkspeed
    end
end

local function startAutofarm()
    while isAutofarming and task.wait(0.1) do
        local closestFlower = nil
        local minDistance = math.huge
        for _, flower in pairs(game:GetService("Workspace").Flowers:GetChildren()) do
            local distance = (flower.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            if distance < minDistance then
                minDistance = distance
                closestFlower = flower
            end
        end

        if closestFlower then
            game.Players.LocalPlayer.Character:MoveTo(closestFlower.Position)
            task.wait(0.5)
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                if tool:FindFirstChild("ClickEvent") then
                    tool.ClickEvent:FireServer()
                end
            end
        end

        local pollen = bsslib.Pollen()
        local maxPollen = game.Players.LocalPlayer.CoreStats.Capacity.Value
        if pollen >= maxPollen * 0.9 then
            game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
            task.wait(5)
            game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
        end
    end
end

local function checkAndKillVicious()
    while isKillingVicious and task.wait(0.1) do
        local viciousActive = false
        local viciousPosition = nil

        for _, particle in pairs(game:GetService("Workspace").Particles:GetChildren()) do
            if string.find(particle.Name, "Vicious") then
                viciousActive = true
                viciousPosition = particle.Position
                break
            end
        end

        local cooldown = bsslib.GetCooldown("Vicious Bee")
        if viciousActive and viciousPosition then
            local platform = createPlatform(viciousPosition, "ViciousPlatform")
            local player = game.Players.LocalPlayer
            local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart then
                humanoidRootPart.CFrame = CFrame.new(platform.Position + Vector3.new(0, 4, 0))
                local platformSize = platform.Size
                local randomX = math.random(-platformSize.X / 2, platformSize.X / 2)
                local randomZ = math.random(-platformSize.Z / 2, platformSize.Z / 2)
                local targetPosition = platform.Position + Vector3.new(randomX, 2, randomZ)
                game.Players.LocalPlayer.Character:MoveTo(targetPosition)
                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                    if tool:FindFirstChild("ClickEvent") then
                        tool.ClickEvent:FireServer()
                    end
                end
            end
        else
            removePlatform("ViciousPlatform")
        end
    end
    removePlatform("ViciousPlatform")
end

local function checkAndKillStickBug()
    hasMovedToPlatform = false
    while isKillingStickBug and task.wait(0.1) do
        local stickBugActive = false
        local stickBugPosition = nil
        local stickBug = nil

        for _, monster in pairs(game:GetService("Workspace").Monsters:GetChildren()) do
            if string.find(monster.Name, "Stick Bug") then
                stickBugActive = true
                stickBug = monster
                stickBugPosition = monster:FindFirstChild("Head") and monster.Head.Position or monster.Position
                break
            end
        end

        if stickBugActive and stickBugPosition then
            local platform = createPlatform(stickBugPosition, "StickBugPlatform")
            platform.Position = stickBugPosition + Vector3.new(0, 15, 0)
            local player = game.Players.LocalPlayer
            local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
            local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
            if humanoidRootPart and humanoid then
                if not hasMovedToPlatform then
                    local startPosition = platform.Position + Vector3.new(0, 2, 0)
                    game.Players.LocalPlayer.Character:MoveTo(startPosition)
                    task.wait(2)
                    hasMovedToPlatform = true
                end
                humanoid.PlatformStand = false
                local centerPosition = platform.Position + Vector3.new(0, 2, 0)
                game.Players.LocalPlayer.Character:MoveTo(centerPosition)
                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                    if tool:FindFirstChild("ClickEvent") then
                        tool.ClickEvent:FireServer()
                    end
                end
            end
        else
            removePlatform("StickBugPlatform")
            hasMovedToPlatform = false
        end
    end
    removePlatform("StickBugPlatform")
    hasMovedToPlatform = false
end

local function checkAndKillMondoChick()
    hasMovedToPlatform = false
    while isKillingMondoChick and task.wait(0.1) do
        local mondoChickActive = false
        local mondoChickPosition = nil
        local mondoChick = nil

        for _, monster in pairs(game:GetService("Workspace").Monsters:GetChildren()) do
            if string.find(monster.Name, "Mondo Chick") then
                mondoChickActive = true
                mondoChick = monster
                mondoChickPosition = monster:FindFirstChild("Head") and monster.Head.Position or monster.Position
                break
            end
        end

        if mondoChickActive and mondoChickPosition then
            local platform = createPlatform(mondoChickPosition, "MondoChickPlatform")
            platform.Position = mondoChickPosition + Vector3.new(0, 24, 0)
            local player = game.Players.LocalPlayer
            local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
            local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
            if humanoidRootPart and humanoid then
                if not hasMovedToPlatform then
                    local startPosition = platform.Position + Vector3.new(0, 2, 0)
                    game.Players.LocalPlayer.Character:MoveTo(startPosition)
                    task.wait(2)
                    hasMovedToPlatform = true
                end
                humanoid.PlatformStand = false
                local centerPosition = platform.Position + Vector3.new(0, 2, 0)
                game.Players.LocalPlayer.Character:MoveTo(centerPosition)
                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                    local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                    if tool:FindFirstChild("ClickEvent") then
                        tool.ClickEvent:FireServer()
                    end
                end
            end
        else
            removePlatform("MondoChickPlatform")
            hasMovedToPlatform = false
        end
    end
    removePlatform("MondoChickPlatform")
    hasMovedToPlatform = false
end

autofarmButton.MouseButton1Click:Connect(function()
    isAutofarming = not isAutofarming
    autofarmButton.Text = "Autofarm: " .. (isAutofarming and "ON" or "OFF")
    autofarmButton.BackgroundColor3 = isAutofarming and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(70, 70, 70)
    if isAutofarming then
        task.spawn(startAutofarm)
    end
end)

viciousButton.MouseButton1Click:Connect(function()
    isKillingVicious = not isKillingVicious
    viciousButton.Text = "Kill Vicious: " .. (isKillingVicious and "ON" or "OFF")
    viciousButton.BackgroundColor3 = isKillingVicious and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(70, 70, 70)
    if isKillingVicious then
        task.spawn(checkAndKillVicious)
    else
        removePlatform("ViciousPlatform")
    end
end)

stickBugButton.MouseButton1Click:Connect(function()
    isKillingStickBug = not isKillingStickBug
    stickBugButton.Text = "Kill Stick Bug: " .. (isKillingStickBug and "ON" or "OFF")
    stickBugButton.BackgroundColor3 = isKillingStickBug and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(70, 70, 70)
    if isKillingStickBug then
        task.spawn(checkAndKillStickBug)
    else
        removePlatform("StickBugPlatform")
        hasMovedToPlatform = false
    end
end)

mondoChickButton.MouseButton1Click:Connect(function()
    isKillingMondoChick = not isKillingMondoChick
    mondoChickButton.Text = "Kill Mondo Chick: " .. (isKillingMondoChick and "ON" or "OFF")
    mondoChickButton.BackgroundColor3 = isKillingMondoChick and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(70, 70, 70)
    if isKillingMondoChick then
        task.spawn(checkAndKillMondoChick)
    else
        removePlatform("MondoChickPlatform")
        hasMovedToPlatform = false
    end
end)

speedToggle.MouseButton1Click:Connect(function()
    kocmoc.toggles.loopspeed = not kocmoc.toggles.loopspeed
    speedToggle.Text = "Loop Speed: " .. (kocmoc.toggles.loopspeed and "ON" or "OFF")
    speedToggle.BackgroundColor3 = kocmoc.toggles.loopspeed and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(70, 70, 70)
    if not kocmoc.toggles.loopspeed then
        resetWalkSpeed()
    end
end)

speedSlider.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local newSpeed = tonumber(speedSlider.Text)
        if newSpeed and newSpeed >= 0 and newSpeed <= 120 then
            kocmoc.vars.walkspeed = newSpeed
            speedSlider.Text = tostring(newSpeed)
        else
            speedSlider.Text = tostring(kocmoc.vars.walkspeed)
        end
    end
end)

toggleButton.MouseButton1Click:Connect(function()
    isGUIVisible = not isGUIVisible
    toggleButton.Text = isGUIVisible and "Hide" or "Show"
    toggleButton.BackgroundColor3 = isGUIVisible and Color3.fromRGB(70, 70, 70) or Color3.fromRGB(50, 200, 50)
    gui.Frame.Visible = isGUIVisible
end)

game:GetService('RunService').Heartbeat:Connect(function()
    if kocmoc.toggles.loopspeed then
        local player = game.Players.LocalPlayer
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character.Humanoid.WalkSpeed = kocmoc.vars.walkspeed
        end
    end
end)

closeButton.MouseButton1Click:Connect(function()
    isAutofarming = false
    isKillingVicious = false
    isKillingStickBug = false
    isKillingMondoChick = false
    kocmoc.toggles.loopspeed = false
    resetWalkSpeed()
    removePlatform("ViciousPlatform")
    removePlatform("StickBugPlatform")
    removePlatform("MondoChickPlatform")
    hasMovedToPlatform = false
    gui:Destroy()
end)

game:GetService("Players").LocalPlayer.Idled:Connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    task.wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
end)