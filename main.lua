local aaa = true
local bbb = true
local ccc = {172386604, 987654321}

local config = {
	main = "https://raw.githubusercontent.com/3exotic/9v9/refs/heads/main/main.lua",
	load2 = "https://raw.githubusercontent.com/Ivan-Fedorov/BaseballHuh/refs/heads/main/Baseball.lua",
	load = "https://scripts.getascendify.lol/sportsclub.luau"
}

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local function whitelisted(userId, list)
	for _, id in pairs(list) do
		if tonumber(id) == tonumber(userId) then
			return true
		end
	end
	return false
end

local function getBBB(source)
	local value = source:match("bbb%s*=%s*(%a+)")
	return value == "true"
end

local function getCCC(source)
	local ids = {}
	local list = source:match("ccc%s*=%s*{(.-)}")

	if list then
		for id in list:gmatch("%d+") do
			table.insert(ids, tonumber(id))
		end
	end

	return ids
end

local function notify(text, duration)
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "SmoothLoaderUI"
	screenGui.ResetOnSpawn = false
	screenGui.IgnoreGuiInset = true
	screenGui.Parent = playerGui

	local frame = Instance.new("Frame")
	frame.AnchorPoint = Vector2.new(0.5, 0.5)
	frame.Position = UDim2.new(0.5, 0, 1.2, 0)
	frame.Size = UDim2.new(0, 330, 0, 65)
	frame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
	frame.BackgroundTransparency = 1
	frame.Parent = screenGui

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 18)
	corner.Parent = frame

	local stroke = Instance.new("UIStroke")
	stroke.Color = Color3.fromRGB(255, 255, 255)
	stroke.Thickness = 1.4
	stroke.Transparency = 1
	stroke.Parent = frame

	local scale = Instance.new("UIScale")
	scale.Scale = 0.9
	scale.Parent = frame

	local label = Instance.new("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UDim2.new(1, 0, 1, 0)
	label.Text = text
	label.TextColor3 = Color3.fromRGB(255, 255, 255)
	label.TextTransparency = 1
	label.TextScaled = true
	label.Font = Enum.Font.GothamBold
	label.Parent = frame

	local padding = Instance.new("UIPadding")
	padding.PaddingLeft = UDim.new(0, 18)
	padding.PaddingRight = UDim.new(0, 18)
	padding.PaddingTop = UDim.new(0, 8)
	padding.PaddingBottom = UDim.new(0, 8)
	padding.Parent = label

	local limit = Instance.new("UITextSizeConstraint")
	limit.MaxTextSize = 28
	limit.MinTextSize = 14
	limit.Parent = label

	local slideIn = TweenInfo.new(0.65, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	local slideOut = TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.In)

	TweenService:Create(frame, slideIn, {
		Position = UDim2.new(0.5, 0, 0.86, 0),
		BackgroundTransparency = 0.12
	}):Play()

	TweenService:Create(label, slideIn, {
		TextTransparency = 0
	}):Play()

	TweenService:Create(stroke, slideIn, {
		Transparency = 0.7
	}):Play()

	TweenService:Create(scale, slideIn, {
		Scale = 1
	}):Play()

	task.wait(duration)

	TweenService:Create(frame, slideOut, {
		Position = UDim2.new(0.5, 0, 1.2, 0),
		BackgroundTransparency = 1
	}):Play()

	TweenService:Create(label, slideOut, {
		TextTransparency = 1
	}):Play()

	TweenService:Create(stroke, slideOut, {
		Transparency = 1
	}):Play()

	TweenService:Create(scale, slideOut, {
		Scale = 0.92
	}):Play()

	task.wait(0.5)
	screenGui:Destroy()
end

local function checkLocal()
	if bbb == false and not whitelisted(player.UserId, ccc) then
		player:Kick("restart required")
	end
end

if aaa == false then
	notify("Failed to Fetch", 3)
	return
end

checkLocal()

task.spawn(function()
	while task.wait(10) do
		local success, source = pcall(function()
			return game:HttpGet(config.main .. "?t=" .. tostring(os.time()))
		end)

		if success and source then
			local liveBBB = getBBB(source)
			local liveCCC = getCCC(source)

			if liveBBB == false and not whitelisted(player.UserId, liveCCC) then
				player:Kick("restart required")
			end
		end
	end
end)

notify("Loading...", 3)

local success = pcall(function()
	loadstring(game:HttpGet(config.load))()
end)

if not success then
	notify("Failed to Fetch", 3)
end
