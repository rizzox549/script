-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local esp = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Workspace
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.362252653, 0, 0.220048904, 0)
Frame.Size = UDim2.new(0, 494, 0, 318)

UICorner.Parent = Frame

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0222672056, 0, 0.213836476, 0)
TextButton.Size = UDim2.new(0, 109, 0, 42)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "visuals"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

UICorner_2.Parent = TextButton

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 494, 0, 52)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "zxlep"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 59.000

UICorner_3.Parent = TextLabel

esp.Name = "esp"
esp.Parent = Frame
esp.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
esp.BorderColor3 = Color3.fromRGB(0, 0, 0)
esp.BorderSizePixel = 0
esp.Position = UDim2.new(0.291497976, 0, 0.18238993, 0)
esp.Size = UDim2.new(0, 84, 0, 28)
esp.Font = Enum.Font.SourceSans
esp.Text = "esp"
esp.TextColor3 = Color3.fromRGB(0, 0, 0)
esp.TextSize = 14.000

UICorner_4.Parent = esp

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.291497976, 0, 0.298742145, 0)
TextButton_2.Size = UDim2.new(0, 84, 0, 28)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "lock"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

UICorner_5.Parent = TextButton_2

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.291497976, 0, 0.421383649, 0)
TextButton_3.Size = UDim2.new(0, 84, 0, 28)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "spinbot"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000

UICorner_6.Parent = TextButton_3

-- Scripts:

local function QZPWFR_fake_script() -- esp.LocalScript 
	local script = Instance.new('LocalScript', esp)

	local function highlightPlayers()
		for _, player in pairs(Players:GetPlayers()) do
			if player ~= Players.LocalPlayer and player.Character then
				for _, part in pairs(player.Character:GetChildren()) do
					if part:IsA("BasePart") then
						local highlight = Instance.new("BoxHandleAdornment", part)
						highlight.Adornee = part
						highlight.Size = part.Size + Vector3.new(0.1, 0.1, 0.1)
						highlight.Color3 = Color3.new(1, 0, 0)
						highlight.AlwaysOnTop = true
						highlight.ZIndex = 5
						highlight.Transparency = 0.5
						local function clearHighlights()
							for _, player in pairs(Players:GetPlayers()) do
								if player ~= Players.LocalPlayer and player.Character then
									for _, part in pairs(player.Character:GetChildren()) do
										if part:IsA("BasePart") then
											for _, adornment in pairs(part:GetChildren()) do
												if adornment:IsA("BoxHandleAdornment") then
													adornment:Destroy()
													highlightButton.MouseButton1Click:Connect(function()
														if highlighted then
															clearHighlights()
															highlighted = false
														else
															highlightPlayers()
															highlighted = true
															local function getNearestPlayer()
																local closestDistance = math.huge
																local closestPlayer = nil
	
																for _, player in pairs(Players:GetPlayers()) do
																	if player ~= Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
																		local distance = (Players.LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).magnitude
																		if distance < closestDistance then
																			closestDistance = distance
																			closestPlayer = player
																		end
																	end
																end
	
																return closestPlayer
															end
end
coroutine.wrap(QZPWFR_fake_script)()
local function OHNCFSR_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	lockButton.MouseButton1Click:Connect(function()
		lockOnEnabled = not lockOnEnabled
		if lockOnEnabled then
			lockButton.Text = "Lock-on: ON"
			lockButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		else
			lockButton.Text = "Lock-on: OFF"
			lockButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
			currentTarget = nil
		end
	end)
	
	
	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.Q and lockOnEnabled then
			if currentTarget then
				currentTarget = nil
			else
				currentTarget = getNearestPlayer()
			end
		elseif input.KeyCode == Enum.KeyCode.K then
			-- Toggle visibility of the mainFrame when 'K' is pressed
			mainFrame.Visible = not mainFrame.Visible
		end
	end)
end
coroutine.wrap(OHNCFSR_fake_script)()
local function NBXTMO_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	spinbotButton.MouseButton1Click:Connect(function()
		spinbotEnabled = not spinbotEnabled
		if spinbotEnabled then
			spinbotButton.Text = "Spinbot: ON"
			spinbotButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		else
			spinbotButton.Text = "Spinbot: OFF"
			spinbotButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		end
	end)
	
	RunService.RenderStepped:Connect(function()
		if spinbotEnabled then
			local character = player.Character
			if character and character:FindFirstChild("HumanoidRootPart") then
				character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(20), 0)
			end
		end
	end)
	
end
coroutine.wrap(NBXTMO_fake_script)()
