--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 42 | Scripts: 2 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.AdminGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[AdminGui]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.AdminGui.OpenButton
G2L["2"] = Instance.new("TextButton", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 2;
G2L["2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["TextSize"] = 15;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["2"]["Size"] = UDim2.new(0, 90, 0, 30);
G2L["2"]["BackgroundTransparency"] = 0.4;
G2L["2"]["Name"] = [[OpenButton]];
G2L["2"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["Text"] = [[open]];
G2L["2"]["Position"] = UDim2.new(0.455, 0, -0.04, 0);


-- StarterGui.AdminGui.OpenButton.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);



-- StarterGui.AdminGui.OpenButton.LocalScript
G2L["4"] = Instance.new("LocalScript", G2L["2"]);



-- StarterGui.AdminGui.OpenButton.ImageLabel
G2L["5"] = Instance.new("ImageLabel", G2L["2"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["Image"] = [[rbxassetid://85966336736261]];
G2L["5"]["Size"] = UDim2.new(0, 20, 0, 18);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["Position"] = UDim2.new(0.07278, 0, 0.20667, 0);


-- StarterGui.AdminGui.PasswordFrame
G2L["6"] = Instance.new("Frame", G2L["1"]);
G2L["6"]["Visible"] = false;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
G2L["6"]["Size"] = UDim2.new(0, 600, 0, 300);
G2L["6"]["Position"] = UDim2.new(0.217, 0, 0.309, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Name"] = [[PasswordFrame]];
G2L["6"]["BackgroundTransparency"] = 0.4;


-- StarterGui.AdminGui.PasswordFrame.Frame
G2L["7"] = Instance.new("Frame", G2L["6"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(40, 40, 49);
G2L["7"]["ClipsDescendants"] = true;
G2L["7"]["Size"] = UDim2.new(0, 588, 0, 288);
G2L["7"]["Position"] = UDim2.new(0.01, 0, 0.02, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.AdminGui.PasswordFrame.Frame.UICorner
G2L["8"] = Instance.new("UICorner", G2L["7"]);



-- StarterGui.AdminGui.PasswordFrame.Frame.Frame
G2L["9"] = Instance.new("Frame", G2L["7"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 64);
G2L["9"]["Size"] = UDim2.new(0, 599, 0, 25);
G2L["9"]["Position"] = UDim2.new(-0.0102, 0, 0.91319, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.AdminGui.PasswordFrame.Frame.Frame.UICorner
G2L["a"] = Instance.new("UICorner", G2L["9"]);



-- StarterGui.AdminGui.PasswordFrame.Frame.Frame
G2L["b"] = Instance.new("Frame", G2L["7"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 64);
G2L["b"]["Size"] = UDim2.new(0, 599, 0, 25);
G2L["b"]["Position"] = UDim2.new(-0.0102, 0, -0.00097, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.AdminGui.PasswordFrame.Frame.Frame.UICorner
G2L["c"] = Instance.new("UICorner", G2L["b"]);



-- StarterGui.AdminGui.PasswordFrame.UICorner
G2L["d"] = Instance.new("UICorner", G2L["6"]);



-- StarterGui.AdminGui.PasswordFrame.GuiA
G2L["e"] = Instance.new("Frame", G2L["6"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(74, 74, 91);
G2L["e"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["e"]["Position"] = UDim2.new(0.94667, 0, 0.03333, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Name"] = [[GuiA]];


-- StarterGui.AdminGui.PasswordFrame.GuiA.UICorner
G2L["f"] = Instance.new("UICorner", G2L["e"]);



-- StarterGui.AdminGui.PasswordFrame.CloseButton
G2L["10"] = Instance.new("TextButton", G2L["6"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["TextColor3"] = Color3.fromRGB(107, 107, 131);
G2L["10"]["TextSize"] = 33;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["10"]["BackgroundTransparency"] = 1;
G2L["10"]["Name"] = [[CloseButton]];
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Text"] = [[-]];
G2L["10"]["Position"] = UDim2.new(0.94667, 0, 0.0288, 0);


-- StarterGui.AdminGui.PasswordFrame.PasswordInput
G2L["11"] = Instance.new("TextBox", G2L["6"]);
G2L["11"]["Name"] = [[PasswordInput]];
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextSize"] = 16;
G2L["11"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 131);
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["11"]["Position"] = UDim2.new(0.33333, 0, 0.36333, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Text"] = [[]];


-- StarterGui.AdminGui.PasswordFrame.PasswordInput.UICorner
G2L["12"] = Instance.new("UICorner", G2L["11"]);



-- StarterGui.AdminGui.PasswordFrame.ImageLabel
G2L["13"] = Instance.new("ImageLabel", G2L["6"]);
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["Image"] = [[rbxassetid://85966336736261]];
G2L["13"]["Size"] = UDim2.new(0, 20, 0, 18);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["BackgroundTransparency"] = 1;
G2L["13"]["Position"] = UDim2.new(0.02278, 0, 0.03333, 0);


-- StarterGui.AdminGui.PasswordFrame.ConfirmButton
G2L["14"] = Instance.new("TextButton", G2L["6"]);
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["TextSize"] = 16;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 131);
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14"]["Size"] = UDim2.new(0, 120, 0, 30);
G2L["14"]["Name"] = [[ConfirmButton]];
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[Log In]];
G2L["14"]["Position"] = UDim2.new(0.39667, 0, 0.73333, 0);


-- StarterGui.AdminGui.PasswordFrame.ConfirmButton.UICorner
G2L["15"] = Instance.new("UICorner", G2L["14"]);



-- StarterGui.AdminGui.PasswordFrame.AvatarImage
G2L["16"] = Instance.new("ImageLabel", G2L["6"]);
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
G2L["16"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["16"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["Name"] = [[AvatarImage]];
G2L["16"]["Position"] = UDim2.new(0.02278, 0, 0.90222, 0);


-- StarterGui.AdminGui.PasswordFrame.AvatarImage.UICorner
G2L["17"] = Instance.new("UICorner", G2L["16"]);



-- StarterGui.AdminGui.PasswordFrame.WelcomeLabel
G2L["18"] = Instance.new("TextLabel", G2L["6"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextSize"] = 10;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["18"]["TextColor3"] = Color3.fromRGB(107, 107, 131);
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["Size"] = UDim2.new(0, 88, 0, 25);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[Welcome Admin]];
G2L["18"]["Name"] = [[WelcomeLabel]];
G2L["18"]["Position"] = UDim2.new(0.055, 0, 0.899, 0);


-- StarterGui.AdminGui.PasswordFrame.GetKeyButton
G2L["19"] = Instance.new("TextButton", G2L["6"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["TextSize"] = 16;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 131);
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19"]["Size"] = UDim2.new(0, 150, 0, 30);
G2L["19"]["Name"] = [[GetKeyButton]];
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Text"] = [[Get Key]];
G2L["19"]["Position"] = UDim2.new(0.37667, 0, 0.59, 0);


-- StarterGui.AdminGui.PasswordFrame.GetKeyButton.UICorner
G2L["1a"] = Instance.new("UICorner", G2L["19"]);



-- StarterGui.AdminGui.MainFrame
G2L["1b"] = Instance.new("Frame", G2L["1"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
G2L["1b"]["Size"] = UDim2.new(0, 600, 0, 300);
G2L["1b"]["Position"] = UDim2.new(0.217, 0, 0.309, 0);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Name"] = [[MainFrame]];
G2L["1b"]["BackgroundTransparency"] = 0.4;


-- StarterGui.AdminGui.MainFrame.Frame2
G2L["1c"] = Instance.new("Frame", G2L["1b"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(40, 40, 49);
G2L["1c"]["ClipsDescendants"] = true;
G2L["1c"]["Size"] = UDim2.new(0, 588, 0, 288);
G2L["1c"]["Position"] = UDim2.new(0.01, 0, 0.02, 0);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Name"] = [[Frame2]];


-- StarterGui.AdminGui.MainFrame.Frame2.UICorner
G2L["1d"] = Instance.new("UICorner", G2L["1c"]);



-- StarterGui.AdminGui.MainFrame.Frame2.Frame
G2L["1e"] = Instance.new("Frame", G2L["1c"]);
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 64);
G2L["1e"]["Size"] = UDim2.new(0, 599, 0, 25);
G2L["1e"]["Position"] = UDim2.new(-0.0102, 0, 0.91319, 0);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.AdminGui.MainFrame.Frame2.Frame.UICorner
G2L["1f"] = Instance.new("UICorner", G2L["1e"]);



-- StarterGui.AdminGui.MainFrame.Frame2.Frame
G2L["20"] = Instance.new("Frame", G2L["1c"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 64);
G2L["20"]["Size"] = UDim2.new(0, 599, 0, 25);
G2L["20"]["Position"] = UDim2.new(-0.0102, 0, -0.00097, 0);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.AdminGui.MainFrame.Frame2.Frame.UICorner
G2L["21"] = Instance.new("UICorner", G2L["20"]);



-- StarterGui.AdminGui.MainFrame.UICorner
G2L["22"] = Instance.new("UICorner", G2L["1b"]);



-- StarterGui.AdminGui.MainFrame.GuiA2
G2L["23"] = Instance.new("Frame", G2L["1b"]);
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(74, 74, 91);
G2L["23"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["23"]["Position"] = UDim2.new(0.94667, 0, 0.03333, 0);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Name"] = [[GuiA2]];


-- StarterGui.AdminGui.MainFrame.GuiA2.UICorner
G2L["24"] = Instance.new("UICorner", G2L["23"]);



-- StarterGui.AdminGui.MainFrame.CloseButton
G2L["25"] = Instance.new("TextButton", G2L["1b"]);
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["TextColor3"] = Color3.fromRGB(107, 107, 131);
G2L["25"]["TextSize"] = 33;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["25"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["25"]["BackgroundTransparency"] = 1;
G2L["25"]["Name"] = [[CloseButton]];
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Text"] = [[-]];
G2L["25"]["Position"] = UDim2.new(0.94667, 0, 0.0288, 0);


-- StarterGui.AdminGui.MainFrame.ImageLabel
G2L["26"] = Instance.new("ImageLabel", G2L["1b"]);
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["Image"] = [[rbxassetid://85966336736261]];
G2L["26"]["Size"] = UDim2.new(0, 20, 0, 18);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["BackgroundTransparency"] = 1;
G2L["26"]["Position"] = UDim2.new(0.02278, 0, 0.03333, 0);


-- StarterGui.AdminGui.MainFrame.MainAvatarImage
G2L["27"] = Instance.new("ImageLabel", G2L["1b"]);
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(61, 61, 75);
G2L["27"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["27"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["BackgroundTransparency"] = 1;
G2L["27"]["Name"] = [[MainAvatarImage]];
G2L["27"]["Position"] = UDim2.new(0.02278, 0, 0.90222, 0);


-- StarterGui.AdminGui.MainFrame.MainAvatarImage.UICorner
G2L["28"] = Instance.new("UICorner", G2L["27"]);



-- StarterGui.AdminGui.MainFrame.WelcomeLabel2
G2L["29"] = Instance.new("TextLabel", G2L["1b"]);
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["TextSize"] = 10;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["29"]["TextColor3"] = Color3.fromRGB(107, 107, 131);
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["Size"] = UDim2.new(0, 88, 0, 25);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Text"] = [[Welcome Admin]];
G2L["29"]["Name"] = [[WelcomeLabel2]];
G2L["29"]["Position"] = UDim2.new(0.055, 0, 0.899, 0);


-- StarterGui.AdminGui.LocalScript
G2L["2a"] = Instance.new("LocalScript", G2L["1"]);



-- StarterGui.AdminGui.OpenButton.LocalScript
local function C_4()
local script = G2L["4"];
	
end;
task.spawn(C_4);
-- StarterGui.AdminGui.LocalScript
local function C_2a()
local script = G2L["2a"];
	local TweenService = game:GetService("TweenService")
	local Players = game:GetService("Players")
	local screenGui = script.Parent
	local openButton = screenGui:WaitForChild("OpenButton")
	local passwordFrame = screenGui:WaitForChild("PasswordFrame")
	local closeButton = passwordFrame:WaitForChild("CloseButton")
	local passwordInput = passwordFrame:WaitForChild("PasswordInput")
	local confirmButton = passwordFrame:WaitForChild("ConfirmButton")
	local avatarImage = passwordFrame:WaitForChild("AvatarImage")
	local welcomeLabel = passwordFrame:WaitForChild("WelcomeLabel")
	local getKeyButton = passwordFrame:WaitForChild("GetKeyButton")
	local mainFrame = screenGui:WaitForChild("MainFrame")
	
	local isOpen = false
	local isLoggedIn = false
	local isMainFrameOpen = false
	
	local correctPassword = "AlphaTest"
	local discordLink = "https://discord.gg/RDnKC4bbHq"
	
	local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local startPosition = UDim2.new(0.5, 0, 1.5, 0)
	local endPosition = UDim2.new(0.5, 0, 0.5, 0)
	
	passwordFrame.Position = startPosition
	passwordFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	passwordFrame.Visible = false
	passwordFrame.ZIndex = 1
	openButton.Visible = true
	openButton.ZIndex = 2
	
	mainFrame.Position = startPosition
	mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	mainFrame.Visible = false
	mainFrame.ClipsDescendants = true
	
	local openTween = TweenService:Create(passwordFrame, tweenInfo, {Position = endPosition})
	local closeTween = TweenService:Create(passwordFrame, tweenInfo, {Position = startPosition})
	local openMainTween = TweenService:Create(mainFrame, tweenInfo, {Position = endPosition})
	local closeMainTween = TweenService:Create(mainFrame, tweenInfo, {Position = startPosition})
	
	local function savePasswordToExecutorWorkspace(password)
		if not writefile or not makefolder then
			return
		end
	
		local folderPath = "solohub"
		if not isfolder(folderPath) then
			makefolder(folderPath)
		end
	
		local filePath = folderPath .. "/solokey.txt"
		writefile(filePath, password)
	end
	
	local function loadPasswordFromExecutorWorkspace()
		if not isfile or not readfile then
			return nil
		end
	
		local filePath = "solohub/solokey.txt"
		if isfile(filePath) then
			return readfile(filePath)
		end
		return nil
	end
	
	local function checkAndAutoLogin()
		local savedPassword = loadPasswordFromExecutorWorkspace()
		if savedPassword and savedPassword == correctPassword then
			isLoggedIn = true
			mainFrame.Visible = true
			openMainTween:Play()
			isMainFrameOpen = true
		else
			savePasswordToExecutorWorkspace(correctPassword)
		end
	end
	
	checkAndAutoLogin()
	
	openButton.MouseButton1Click:Connect(function()
		if not isLoggedIn then
			if not isOpen then
				local player = Players.LocalPlayer
				local userId = player.UserId
				local thumbType = Enum.ThumbnailType.HeadShot
				local thumbSize = Enum.ThumbnailSize.Size100x100
				local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
				avatarImage.Image = isReady and content or "rbxasset://textures/ui/GuiImagePlaceholder.png"
	
				local playerName = player.Name
				local halfLength = math.floor(#playerName / 2)
				local maskedName = string.rep("*", halfLength) .. string.sub(playerName, halfLength + 1)
				welcomeLabel.Text = "Welcome, " .. maskedName
	
				passwordFrame.Visible = true
				openTween:Play()
				isOpen = true
			else
				closeTween:Play()
				closeTween.Completed:Wait()
				passwordFrame.Visible = false
				isOpen = false
			end
		else
			if not isMainFrameOpen then
				mainFrame.Visible = true
				openMainTween:Play()
				isMainFrameOpen = true
			else
				closeMainTween:Play()
				closeMainTween.Completed:Wait()
				mainFrame.Visible = false
				isMainFrameOpen = false
			end
		end
	end)
	
	closeButton.MouseButton1Click:Connect(function()
		if isOpen then
			closeTween:Play()
			closeTween.Completed:Wait()
			passwordFrame.Visible = false
			isOpen = false
		end
	end)
	
	getKeyButton.MouseButton1Click:Connect(function()
		if setclipboard then
			setclipboard(discordLink)
			getKeyButton.Text = "Link Copied!"
			wait(1)
			getKeyButton.Text = "Get Key"
		else
			getKeyButton.Text = "Clipboard not supported!"
			wait(1)
			getKeyButton.Text = "Get Key"
		end
	end)
	
	confirmButton.MouseButton1Click:Connect(function()
		local enteredPassword = passwordInput.Text
		if enteredPassword == correctPassword then
			savePasswordToExecutorWorkspace(enteredPassword)
	
			closeTween:Play()
			closeTween.Completed:Wait()
			passwordFrame.Visible = false
			isOpen = false
			isLoggedIn = true
	
			mainFrame.Visible = true
			openMainTween:Play()
			isMainFrameOpen = true
		else
			passwordInput.Text = "Wrong password!"
			wait(1)
			passwordInput.Text = ""
		end
	end)
end;
task.spawn(C_2a);

return G2L["1"], require;
