--#region Globals
getgenv().autoTap = false

--#endregion

--#region Instances
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
local btnAutoClick = Instance.new("TextButton")
local btnAutoCollectChests = Instance.new("TextButton")
local btnAutoSpinFreeDaily = Instance.new("TextButton")
local btnAutoClaimAchievements = Instance.new("TextButton")
local btnAutoCraft = Instance.new("TextButton")
local btnUnlockDoubleClick = Instance.new("TextButton")
local btnUnlockFastAutoClick = Instance.new("TextButton")
local btnUnlockAutoRebirth = Instance.new("TextButton")
local btnUnlockTeleport = Instance.new("TextButton")
local btnMin = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
--#endregion

--#region Properties
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 170, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.412406713, 0, 0.279471546, 0)
Frame.Size = UDim2.new(0, 205, 0, 386)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(85, 255, 127)
Frame_2.BackgroundTransparency = 1.000
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 3
Frame_2.Position = UDim2.new(0, 0, 0.229110509, 0)
Frame_2.Size = UDim2.new(0, 205, 0, 284)

UIGridLayout.Parent = Frame_2
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIGridLayout.CellSize = UDim2.new(0, 200, 0, 25)
--#endregion

--#region Title
Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 3
Title.Size = UDim2.new(0, 205, 0, 85)
Title.Font = Enum.Font.Michroma
Title.Text = "Clicker  Simulator  Script's  by:  TwiggyTizzle"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 20.000
Title.TextWrapped = true
--#endregion

--#region AutoClick
btnAutoClick.Name = "btnAutoClick"
btnAutoClick.Parent = Frame_2
btnAutoClick.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
btnAutoClick.BorderColor3 = Color3.fromRGB(255, 255, 0)
btnAutoClick.Size = UDim2.new(0, 200, 0, 50)
btnAutoClick.Font = Enum.Font.Michroma
btnAutoClick.Text = "Auto  Click"
btnAutoClick.TextColor3 = Color3.fromRGB(255, 0, 0)
btnAutoClick.TextSize = 15.000
btnAutoClick.MouseButton1Up:Connect(function()
	EnableDisable(btnAutoClick)
	spawn(function()
		while autoTap == true do
			local args = {[1] = {["manual"] = {["3.097643966613091e+96"] = 150}}}
        	game:GetService("ReplicatedStorage").Clickerr:InvokeServer(unpack(args))
        	wait(1)
		end 
    end)
end)
--#endregion

--#region Auto Collect Chests
btnAutoCollectChests.Name = "btnAutoCollectChests"
btnAutoCollectChests.Parent = Frame_2
btnAutoCollectChests.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
btnAutoCollectChests.BorderColor3 = Color3.fromRGB(255, 255, 0)
btnAutoCollectChests.Size = UDim2.new(0, 200, 0, 50)
btnAutoCollectChests.Font = Enum.Font.Michroma
btnAutoCollectChests.Text = "Auto  Collect  Chests"
btnAutoCollectChests.TextColor3 = Color3.fromRGB(255, 0, 0)
btnAutoCollectChests.TextSize = 15.000
btnAutoCollectChests.MouseButton1Up:Connect(function()
	EnableDisable(btnAutoCollectChests)
end)
--#endregion

--#region Auto Spin Free Daily
btnAutoSpinFreeDaily.Name = "btnAutoSpinFreeDaily"
btnAutoSpinFreeDaily.Parent = Frame_2
btnAutoSpinFreeDaily.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
btnAutoSpinFreeDaily.BorderColor3 = Color3.fromRGB(255, 255, 0)
btnAutoSpinFreeDaily.Size = UDim2.new(0, 200, 0, 50)
btnAutoSpinFreeDaily.Font = Enum.Font.Michroma
btnAutoSpinFreeDaily.Text = "Auto  Spin  Free  Daily"
btnAutoSpinFreeDaily.TextColor3 = Color3.fromRGB(255, 0, 0)
btnAutoSpinFreeDaily.TextSize = 15.000
btnAutoSpinFreeDaily.MouseButton1Up:Connect(function()
	EnableDisable(btnAutoSpinFreeDaily)
end)
--#endregion

--#region Auto Claim Achievements
btnAutoClaimAchievements.Name = "btnAutoClaimAchievements"
btnAutoClaimAchievements.Parent = Frame_2
btnAutoClaimAchievements.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
btnAutoClaimAchievements.BorderColor3 = Color3.fromRGB(255, 255, 0)
btnAutoClaimAchievements.Size = UDim2.new(0, 200, 0, 50)
btnAutoClaimAchievements.Font = Enum.Font.Michroma
btnAutoClaimAchievements.Text = "Auto  Claim  Achievements"
btnAutoClaimAchievements.TextColor3 = Color3.fromRGB(255, 0, 0)
btnAutoClaimAchievements.TextSize = 15.000
btnAutoClaimAchievements.MouseButton1Up:Connect(function()
	EnableDisable(btnAutoClaimAchievements)
end)
--#endregion

--#region Auto Shiny Craft
btnAutoCraft.Name = "btnAutoCraft"
btnAutoCraft.Parent = Frame_2
btnAutoCraft.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
btnAutoCraft.BorderColor3 = Color3.fromRGB(255, 255, 0)
btnAutoCraft.Size = UDim2.new(0, 200, 0, 50)
btnAutoCraft.Font = Enum.Font.Michroma
btnAutoCraft.Text = "Auto  Shiny  Craft"
btnAutoCraft.TextColor3 = Color3.fromRGB(255, 0, 0)
btnAutoCraft.TextSize = 15.000
btnAutoCraft.MouseButton1Up:Connect(function()
	EnableDisable(btnAutoCraft)
end)
--#endregion

--#region Auto Golden Craft
btnUnlockDoubleClick.Name = "btnAutoGoldenCraft"
btnUnlockDoubleClick.Parent = Frame_2
btnUnlockDoubleClick.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
btnUnlockDoubleClick.BorderColor3 = Color3.fromRGB(255, 255, 0)
btnUnlockDoubleClick.Size = UDim2.new(0, 200, 0, 50)
btnUnlockDoubleClick.Font = Enum.Font.Michroma
btnUnlockDoubleClick.Text = "Unlock  Double  Clicks"
btnUnlockDoubleClick.TextColor3 = Color3.fromRGB(255, 0, 0)
btnUnlockDoubleClick.TextSize = 15.000
btnUnlockDoubleClick.MouseButton1Up:Connect(function()
	btnUnlockDoubleClick.TextColor3 = Color3.fromRGB(0, 0, 0)
	btnUnlockDoubleClick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	btnUnlockDoubleClick.BorderColor3 = Color3.fromRGB(0, 0, 0)
	game.Players.LocalPlayer.Data.gamepasses.Value = game.Players.LocalPlayer.Data.gamepasses.Value .. ";doubleclicks;"
	btnUnlockDoubleClick.TextSize = 13
	btnUnlockDoubleClick.Text = "Double  Clicks  UNLOCKED"
	-- wait(5)
	-- btnUnlockDoubleClick.Visible = false
end)
--#endregion

--#region Unlock Fast Auto Click
btnUnlockFastAutoClick.Name = "btnUnlockFastAutoClick"
btnUnlockFastAutoClick.Parent = Frame_2
btnUnlockFastAutoClick.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
btnUnlockFastAutoClick.BorderColor3 = Color3.fromRGB(255, 255, 0)
btnUnlockFastAutoClick.Size = UDim2.new(0, 200, 0, 50)
btnUnlockFastAutoClick.Font = Enum.Font.Michroma
btnUnlockFastAutoClick.Text = "Unlock  Fast  Auto  Click"
btnUnlockFastAutoClick.TextColor3 = Color3.fromRGB(255, 0, 0)
btnUnlockFastAutoClick.TextSize = 15.000
btnUnlockFastAutoClick.MouseButton1Up:Connect(function()
	btnUnlockFastAutoClick.TextColor3 = Color3.fromRGB(0, 0, 0)
	btnUnlockFastAutoClick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	btnUnlockFastAutoClick.BorderColor3 = Color3.fromRGB(0, 0, 0)
	game.Players.LocalPlayer.Data.gamepasses.Value = game.Players.LocalPlayer.Data.gamepasses.Value .. ";autoclicker;"
	btnUnlockFastAutoClick.TextSize = 13
	btnUnlockFastAutoClick.Text = "Fast  AutoClicker  UNLOCKED"
	-- wait(5)
	-- btnUnlockFastAutoClick.Visible = false
end)
--#endregion

--#region Unlock Auto Rebirth
btnUnlockAutoRebirth.Name = "btnUnlockAutoRebirth"
btnUnlockAutoRebirth.Parent = Frame_2
btnUnlockAutoRebirth.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
btnUnlockAutoRebirth.BorderColor3 = Color3.fromRGB(255, 255, 0)
btnUnlockAutoRebirth.Size = UDim2.new(0, 200, 0, 50)
btnUnlockAutoRebirth.Font = Enum.Font.Michroma
btnUnlockAutoRebirth.Text = "Unlock  Auto  Rebirth"
btnUnlockAutoRebirth.TextColor3 = Color3.fromRGB(255, 0, 0)
btnUnlockAutoRebirth.TextSize = 15.000
btnUnlockAutoRebirth.MouseButton1Up:Connect(function()
	btnUnlockAutoRebirth.TextColor3 = Color3.fromRGB(0, 0, 0)
	btnUnlockAutoRebirth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	btnUnlockAutoRebirth.BorderColor3 = Color3.fromRGB(0, 0, 0)
	game.Players.LocalPlayer.Data.gamepasses.Value = game.Players.LocalPlayer.Data.gamepasses.Value .. ";autorebirth;"
	btnUnlockAutoRebirth.TextSize = 13
	btnUnlockAutoRebirth.Text = "Auto  Rebirth  UNLOCKED"
	-- wait(5)
	-- btnUnlockAutoRebirth.Visible = false
end)
--#endregion

--#region Teleport
btnUnlockTeleport.Name = "btnUnlockTeleport"
btnUnlockTeleport.Parent = Frame_2
btnUnlockTeleport.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
btnUnlockTeleport.BorderColor3 = Color3.fromRGB(255, 255, 0)
btnUnlockTeleport.Size = UDim2.new(0, 200, 0, 50)
btnUnlockTeleport.Font = Enum.Font.Michroma
btnUnlockTeleport.Text = "Teleport"
btnUnlockTeleport.TextColor3 = Color3.fromRGB(255, 0, 0)
btnUnlockTeleport.TextSize = 15.000
btnUnlockTeleport.MouseButton1Up:Connect(function()
	btnUnlockTeleport.TextColor3 = Color3.fromRGB(0, 0, 0)
	btnUnlockTeleport.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	btnUnlockTeleport.BorderColor3 = Color3.fromRGB(0, 0, 0)
	game.Players.LocalPlayer.Data.gamepasses.Value = game.Players.LocalPlayer.Data.gamepasses.Value .. ";teleporter;" 
	btnUnlockTeleport.TextSize = 13
	btnUnlockTeleport.Text = "Teleporter  UNLOCKED"
	-- wait(5)
	-- btnUnlockTeleport.Visible = false
end)
--#endregion

--#region Minimize/Maximize Button
btnMin.Name = "btnMin"
btnMin.Parent = Frame
btnMin.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
btnMin.BorderColor3 = Color3.fromRGB(0, 0, 0)
btnMin.BorderSizePixel = 3
btnMin.Position = UDim2.new(0, 0, -0.0621761642, 0)
btnMin.Size = UDim2.new(0, 205, 0, 17)
btnMin.Font = Enum.Font.Michroma
btnMin.Text = "▪️▪️▪️▪️▪️  SHRINK  ▪️▪️▪️▪️▪️"
btnMin.TextColor3 = Color3.fromRGB(0, 0, 0)
btnMin.TextSize = 12.000
btnMin.MouseButton1Up:Connect(function()
	if Frame_2.Visible == true then
		Frame_2.Visible = false 
		btnMin.Text = "▪️▪️▪️▪️  EXPAND  ▪️▪️▪️▪️"
		wait(0.25)
		btnMin.Text = "▪️▪️▪️  EXPAND  ▪️▪️▪️"
		wait(0.25)
		btnMin.Text = "▪️▪️  EXPAND  ▪️▪️"
		wait(0.25)
		btnMin.Text = "▪️  EXPAND  ▪️"
		wait(0.25)
		btnMin.Text = "▪️  EXPAND  ▪️" else
			Frame_2.Visible = true 
			btnMin.Text = "▪️▪️  SHRINK  ▪️▪️"
			wait(0.25)
			btnMin.Text = "▪️▪️▪️  SHRINK  ▪️▪️▪️"
			wait(0.25)
			btnMin.Text = "▪️▪️▪️▪️  SHRINK  ▪️▪️▪️▪️"
			wait(0.25)
			btnMin.Text = "▪️▪️▪️▪️▪️  SHRINK  ▪️▪️▪️▪️▪️"
	end
end)
--#endregion

--#region Draggable
local function MGDRE_fake_script()
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(MGDRE_fake_script)()
--#endregion

--#region Enable/Disable Function
function EnableDisable(whatButton)
	if whatButton.TextColor3 == Color3.fromRGB(255, 0, 0) then
		whatButton.TextColor3 = Color3.fromRGB(85, 255, 0) 
		if whatButton == btnAutoClick then
		autoTap = true
		end
	else
		whatButton.TextColor3 = Color3.fromRGB(255, 0, 0)
		if whatButton == btnAutoClick then
			autoTap = false 
		end
	end
end
--#endregion