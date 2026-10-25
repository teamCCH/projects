--[[ teamcch/projects/Scripts/UAimbot/source.luau | v1.0.0.0| UAimbot
 _________  _______   ________  _____ ______   ________  ________  ___  ___     
|\___   ___\\  ___ \ |\   __  \|\   _ \  _   \|\   ____\|\   ____\|\  \|\  \    
\|___ \  \_\ \   __/|\ \  \|\  \ \  \\\__\ \  \ \  \___|\ \  \___|\ \  \\\  \   
     \ \  \ \ \  \_|/_\ \   __  \ \  \\|__| \  \ \  \    \ \  \    \ \   __  \  
      \ \  \ \ \  \_|\ \ \  \ \  \ \  \    \ \  \ \  \____\ \  \____\ \  \ \  \ 
       \ \__\ \ \_______\ \__\ \__\ \__\    \ \__\ \_______\ \_______\ \__\ \__\
        \|__|  \|_______|\|__|\|__|\|__|     \|__|\|_______|\|_______|\|__|\|__|

]]--

local CONFIG = {
	AimButton = Enum.UserInputType.MouseButton2,
	Highlight = true,
	Accent    = Color3.fromRGB(86,86,86),
	Default   = {
		Fov = 0.25, FovColor = Color3.new(1, 1, 1), Smooth = 0.5,
		Limb = "Head", AimType = "CFrame",
	},
}

local Players    = game:GetService("Players")
local RunService = game:GetService("RunService")
local UIS        = game:GetService("UserInputService")
local Workspace  = game:GetService("Workspace")
local CoreGui    = game:GetService("CoreGui")

local lp   = Players.LocalPlayer
local env  = (getgenv and getgenv()) or _G
local BIND = "UAimbot_Step"
local cam  = Workspace.CurrentCamera

if env.UAimbot and env.UAimbot.Destroy then
	pcall(env.UAimbot.Destroy)
end

local function guiRoot()
	if gethui then
		local ok, r = pcall(gethui)
		if ok and r then return r end
	end
	return CoreGui
end

-- UI
local function buildUI()
	local AS  = Enum.AutomaticSize
	local TXA = Enum.TextXAlignment
	local FD  = Enum.FillDirection
	local HA  = Enum.HorizontalAlignment
	local SS  = Enum.Font.SourceSans

	local WHITE    = Color3.new(1, 1, 1)
	local C_BG     = Color3.fromRGB(20, 20, 20)
	local C_STR_A  = Color3.fromRGB(86, 86, 86) -- window / buttons / boxes
	local C_STR_B  = Color3.fromRGB(55, 55, 55) -- labels

	local function new(class, props, parent)
		local o = Instance.new(class)
		for k, v in pairs(props or {}) do o[k] = v end
		o.Parent = parent
		return o
	end
	local function pad(o, t, r, b, l)
		new("UIPadding", {
			PaddingTop = UDim.new(0, t), PaddingRight = UDim.new(0, r),
			PaddingBottom = UDim.new(0, b), PaddingLeft = UDim.new(0, l),
		}, o)
	end
	local function corner(o)
		return new("UICorner", { CornerRadius = UDim.new(0, 4) }, o)
	end
	local function stroke(o, col)
		new("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Color = col, Thickness = 1, Transparency = 0.8,
		}, o)
	end
	local function frame(parent, name, lo, w, h, auto)
		return new("Frame", {
			Name = name, LayoutOrder = lo, Size = UDim2.fromOffset(w, h), AutomaticSize = auto or AS.None,
			BackgroundColor3 = WHITE, BackgroundTransparency = 1, BorderSizePixel = 0,
		}, parent)
	end
	local function list(parent, fill, ha, wraps)
		return new("UIListLayout", {
			Padding = UDim.new(0, 5), FillDirection = fill or FD.Horizontal, HorizontalAlignment = ha or HA.Center,
			VerticalAlignment = Enum.VerticalAlignment.Top, SortOrder = Enum.SortOrder.LayoutOrder, Wraps = wraps ~= false,
		}, parent)
	end
	local function label(parent, name, text, lo, padL, align)
		local l = new("TextLabel", {
			Name = name, Text = text, LayoutOrder = lo, Size = UDim2.fromOffset(280, 20),
			BackgroundColor3 = C_BG, BackgroundTransparency = 0.2, BorderSizePixel = 0,
			TextColor3 = WHITE, Font = SS, TextSize = 14,
			TextXAlignment = align or TXA.Left, TextYAlignment = Enum.TextYAlignment.Center,
		}, parent)
		pad(l, 5, 5, 5, padL or 5); corner(l); stroke(l, C_STR_B)
		return l
	end
	local function button(parent, name, text, lo, w)
		local b = new("TextButton", {
			Name = name, Text = text, LayoutOrder = lo, Size = UDim2.fromOffset(w or 137, 30),
			BackgroundColor3 = C_BG, BackgroundTransparency = 0.2, BorderSizePixel = 0,
			TextColor3 = WHITE, Font = SS, TextSize = 14, TextScaled = true, TextWrapped = true,
			TextXAlignment = TXA.Center, TextYAlignment = Enum.TextYAlignment.Center,
		}, parent)
		corner(b); stroke(b, C_STR_A); pad(b, 5, 5, 5, 5)
		return b
	end
	local function box(parent, name, placeholder, lo, w)
		local b = new("TextBox", {
			Name = name, Text = "", PlaceholderText = placeholder, PlaceholderColor3 = Color3.fromRGB(127, 127, 127),
			ClearTextOnFocus = true, LayoutOrder = lo, Size = UDim2.fromOffset(w or 137, 30),
			BackgroundColor3 = C_BG, BackgroundTransparency = 0.2, BorderSizePixel = 0,
			TextColor3 = WHITE, Font = SS, TextSize = 14, TextScaled = true, TextWrapped = true,
			TextXAlignment = TXA.Center, TextYAlignment = Enum.TextYAlignment.Center,
		}, parent)
		stroke(b, C_STR_A); pad(b, 5, 5, 5, 5); corner(b)
		return b
	end

	local gui = new("ScreenGui", { Name = "UAimbot", ResetOnSpawn = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling })

	local window = new("Frame", {
		Name = "Window", BackgroundColor3 = Color3.fromRGB(25, 25, 25), BackgroundTransparency = 0.1,
		BorderSizePixel = 0, ClipsDescendants = true,
		Position = UDim2.new(0.488029361, 0, 0.219709203, 0), Size = UDim2.fromOffset(305, 500),
	}, gui)
	corner(window); stroke(window, C_STR_A)

	local okSh, shadow = pcall(Instance.new, "UIShadow")
	if okSh then
		for k, v in pairs({
			BlurRadius = UDim.new(0, 20), Color = Color3.new(0, 0, 0), Enabled = true, Inset = false,
			ShowBehindParent = true, Spread = UDim2.fromOffset(10, 10), Transparency = 0.5, ZIndex = -1,
		}) do pcall(function() shadow[k] = v end) end
		shadow.Parent = window
	end

	local tb = new("Frame", {
		Name = "Titlebar", BackgroundColor3 = C_BG, BackgroundTransparency = 0.2, BorderSizePixel = 0,
		Size = UDim2.fromOffset(305, 30),
	}, window)
	stroke(tb, C_STR_A)
	local tbc = corner(tb)
	pcall(function() tbc.BottomLeftRadius = UDim.new(0, 0); tbc.BottomRightRadius = UDim.new(0, 0) end)
	local title = new("TextLabel", {
		Name = "Title", Text = "UAimbot", TextScaled = true, TextWrapped = true, TextColor3 = WHITE, Font = SS, TextSize = 14,
		TextXAlignment = TXA.Center, TextYAlignment = Enum.TextYAlignment.Center,
		BackgroundTransparency = 1, BorderSizePixel = 0, Size = UDim2.fromScale(1, 1),
	}, tb)
	pad(title, 5, 5, 5, 5)

	local content = new("ScrollingFrame", {
		Name = "Content", Active = true, BackgroundTransparency = 1, BorderSizePixel = 0, ClipsDescendants = true,
		Position = UDim2.new(0, 0, 0.06, 0), Size = UDim2.fromOffset(305, 470),
		AutomaticCanvasSize = AS.Y, CanvasSize = UDim2.new(),
		ScrollBarThickness = 5, ScrollBarImageColor3 = C_STR_A, ScrollBarImageTransparency = 0,
		ScrollingDirection = Enum.ScrollingDirection.XY,
		VerticalScrollBarInset = Enum.ScrollBarInset.Always, VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left,
	}, window)
	pad(content, 10, 10, 10, 10)
	list(content, FD.Horizontal, HA.Center, true)

	local aim = frame(content, "AimbotFrame", 0, 279, 55)
	label(aim, "AimbotLabel", "Aimbot", 0)
	button(aim, "EnableAimbotButton", "Enable", 1)
	button(aim, "DisableAimbotButton", "Disable", 2)
	list(aim)

	local sm = frame(content, "SmoothnessFrame", 1, 280, 55, AS.Y)
	label(sm, "SmoothnessLabel", "Smoothness", 4)
	box(sm, "EnterSmoothnessBox", "0 - 1", 5)
	button(sm, "ApplySmoothnessButton", "Apply", 6)
	list(sm)

	local fov = frame(content, "FovFrame", 2, 280, 50, AS.Y)
	label(fov, "FovLabel", "Fov", 0)
	box(fov, "EnterFovBox", "0 - 1", 1)
	button(fov, "ApplyFovButton", "Apply", 2)
	button(fov, "ShowHideFovButton", "Show Fov", 3, 280)
	label(fov, "ColorLabel", "Color", 4, 10)
	box(fov, "EnterColorBox", "0 - 1", 5)
	button(fov, "ApplyColorButton", "Apply", 6)
	list(fov)

	local at = frame(content, "AimTypeFrame", 3, 280, 50, AS.Y)
	label(at, "FovLabel", "Aim type", 0)
	button(at, "ShowHideFovButton", "CFrame", 3, 280)
	button(at, "ShowHideFovButton1", "mousemoverel", 3, 280)
	button(at, "ShowHideFovButton2", "mousemoveabs", 3, 280)
	list(at)

	local ck = frame(content, "CheckersFrame", 4, 280, 50, AS.Y)
	label(ck, "FovLabel", "Checkers", 0)
	label(ck, "WallcheckLabel", "Wallcheck", 1, 10)
	button(ck, "EnableWallcheckButton", "Enable", 2, 138)
	button(ck, "DisableWallcheckButton", "Disable", 3)
	label(ck, "TeamcheckLabel", "Teamcheck", 4, 10)
	button(ck, "EnableTeamcheckButton", "Enable", 5, 138)
	button(ck, "DisableTeamcheckButton", "Disable", 6)
	label(ck, "AlivecheckLabel", "Alivecheck", 7, 10)
	button(ck, "EnableAlivecheckButton", "Enable", 8, 138)
	button(ck, "DisableAlivecheckButton", "Disable", 9)
	list(ck)

	local tg = frame(content, "TargetFrame", 5, 280, 490, AS.Y)
	label(tg, "TargetLabel", "Target to aim", 0)

	local lf = frame(tg, "TargetLimbFrame", 1, 280, 100, AS.Y)
	label(lf, "TargetLimbLabel", "Limb", 12, 10)
	label(lf, "TargetLimbR6Label", "R6", 13, 15)
	for _, d in ipairs({
		{ "Head", 14 }, { "Torso", 15 }, { "LeftArm", 16 }, { "RightArm", 17 }, { "LeftLeg", 18 }, { "RightLeg", 19 },
	}) do
		button(lf, "TargetLimbR6" .. d[1] .. "Button", d[1], d[2])
	end
	label(lf, "TargetLimbR15Label", "R15", 20, 15)
	button(lf, "TargetLimbR15Head", "Head", 21, 280)
	for _, d in ipairs({
		{ "UpperTorso", 22 }, { "LowerTorso", 23 }, { "LeftUpperArm ", 24 }, { "RightUpperArm ", 25 },
		{ "LeftLowerArm", 26 }, { "RightLowerArm", 27 }, { "LeftHand", 28 }, { "RightHand", 29 },
		{ "LeftUpperLeg", 30 }, { "RightUpperLeg", 31 }, { "LeftLowerLeg", 32 }, { "RightLowerLeg", 33 },
		{ "LeftFoot", 34 }, { "RightFoot", 35 },
	}) do
		button(lf, "TargetLimbR15" .. d[1]:gsub("%s", "") .. "Button", d[1], d[2])
	end
	button(lf, "TargetLimbR15HumanoidRootPartButton", "HumanoidRootPart", 36, 279)
	local lfl = list(lf, FD.Horizontal, HA.Left, true)
	pcall(function() lfl.HorizontalFlex = Enum.UIFlexAlignment.Fill end)

	local pf = frame(tg, "TargetPlayerFrame", 2, 280, 55, AS.Y)
	label(pf, "TargetPlayer", "Player", 1554, 10)
	box(pf, "EnterTargetPlayerBox", "NickName or Username", 1555, 138)
	button(pf, "ApplyTargetPlayerButton", "Apply", 1556)
	list(pf)

	list(tg, FD.Vertical, HA.Left, false)

	local dv = frame(content, "Devs", 6924, 280, 55, AS.XY)
	label(dv, "ScriptName", "UAimbot v1.0", 6924, 5, TXA.Center)
	label(dv, "Developers", "Developed by teamCCH. Project Cheesy", 6925, 5, TXA.Center)
	label(dv, "Link", "https://github.com/teamCCH/projects/", 6926, 5, TXA.Center)
	list(dv, FD.Vertical, HA.Center, true)
	pcall(function() Instance.new("UIDragDetector").Parent = window end)
	return gui
end

-- state
local S = {
	Enabled    = false,
	ShowFov    = false,
	Fov        = CONFIG.Default.Fov,
	FovColor   = CONFIG.Default.FovColor,
	Smooth     = CONFIG.Default.Smooth,
	Limb       = CONFIG.Default.Limb,
	AimType    = CONFIG.Default.AimType,
	TargetName = nil,
	Wall       = false,
	Team       = false,
	Alive      = false,
}

local conns = {}
local function track(c) conns[#conns + 1] = c; return c end

-- mount
local gui = buildUI()
local SGS = env.SGS
local host
if SGS and SGS.Alive then
	host = SGS:Mount(gui, "UAimbot", "rbxassetid://70658848566895")
else
	warn("[UAimbot] SGS is not running -> standalone mode")
	gui.Enabled = true
	gui.Parent = guiRoot()
	host = gui
end

local function at(root, ...)
	local cur = root
	for _, n in ipairs({ ... }) do
		cur = cur:WaitForChild(n, 5)
		assert(cur, "[UAimbot] missing UI element '" .. n .. "'")
	end
	return cur
end

local window  = at(host, "Window")
local content = at(window, "Content")

local fovFrame   = at(content, "FovFrame")
local aimFrame   = at(content, "AimbotFrame")
local smoothFrm  = at(content, "SmoothnessFrame")
local limbFrame  = at(content, "TargetFrame", "TargetLimbFrame")
local plrFrame   = at(content, "TargetFrame", "TargetPlayerFrame")
local checkFrame = at(content, "CheckersFrame")
local typeFrame  = at(content, "AimTypeFrame")

-- button feedback helpers
local origStroke = {}
local function mark(btn, on)
	if not CONFIG.Highlight then return end
	local st = btn:FindFirstChildOfClass("UIStroke")
	if not st then return end
	if not origStroke[st] then origStroke[st] = { st.Color, st.Transparency } end
	st.Color        = on and CONFIG.Accent or origStroke[st][1]
	st.Transparency = on and 0 or origStroke[st][2]
end

local function bindToggle(onBtn, offBtn, key)
	local function refresh()
		mark(onBtn, S[key])
		mark(offBtn, not S[key])
	end
	track(onBtn.MouseButton1Click:Connect(function() S[key] = true; refresh() end))
	track(offBtn.MouseButton1Click:Connect(function() S[key] = false; refresh() end))
	refresh()
end

local function bindRadio(map, key, onPick)
	local function refresh()
		for v, btns in pairs(map) do
			for _, b in ipairs(btns) do mark(b, S[key] == v) end
		end
	end
	for v, btns in pairs(map) do
		for _, b in ipairs(btns) do
			track(b.MouseButton1Click:Connect(function()
				if onPick and onPick(v) == false then return end
				S[key] = v
				refresh()
			end))
		end
	end
	refresh()
end

local function bindApply(btn, box, fn)
	local function go() fn(box.Text) end
	track(btn.MouseButton1Click:Connect(go))
	track(box.FocusLost:Connect(function(enter) if enter then go() end end))
end

-- FOV overlay
local overlay = Instance.new("ScreenGui")
overlay.Name = "UAimbotFov"
overlay.IgnoreGuiInset = true
overlay.ResetOnSpawn = false
overlay.DisplayOrder = 999
if syn and syn.protect_gui then pcall(syn.protect_gui, overlay) end
if not pcall(function() overlay.Parent = guiRoot() end) then
	overlay.Parent = lp:WaitForChild("PlayerGui")
end

local circle = Instance.new("Frame")
circle.AnchorPoint = Vector2.new(0.5, 0.5)
circle.BackgroundTransparency = 1
circle.BorderSizePixel = 0
circle.Visible = false
circle.Parent = overlay
local cCorner = Instance.new("UICorner")
cCorner.CornerRadius = UDim.new(1, 0)
cCorner.Parent = circle
local cStroke = Instance.new("UIStroke")
cStroke.Thickness = 1.5
cStroke.Color = S.FovColor
cStroke.Parent = circle

-- FovFrame: fov value, color, show/hide
local fovBox   = at(fovFrame, "EnterFovBox")
local fovApply = at(fovFrame, "ApplyFovButton")
local fovShow  = at(fovFrame, "ShowHideFovButton")
local colBox   = at(fovFrame, "EnterColorBox")
local colApply = at(fovFrame, "ApplyColorButton")

bindApply(fovApply, fovBox, function(t)
	local n = tonumber((t:gsub(",", ".")))
	if n then S.Fov = math.clamp(n, 0, 1) else fovBox.Text = "" end
end)

local function parseColor(t)
	t = t:gsub("%s", "")
	local hex = t:match("^#(%x%x%x%x%x%x)$")
	if hex then return Color3.fromHex(hex) end
	local r, g, b = t:match("^(%d+),(%d+),(%d+)$")
	if r then
		return Color3.fromRGB(math.min(255, tonumber(r)), math.min(255, tonumber(g)), math.min(255, tonumber(b)))
	end
	local h = tonumber((t:gsub(",", ".")))
	if h then return Color3.fromHSV(math.clamp(h, 0, 1), 1, 1) end
end

bindApply(colApply, colBox, function(t)
	local c = parseColor(t)
	if c then
		S.FovColor = c
		cStroke.Color = c
	else
		colBox.Text = ""
	end
end)

local function refreshFovShow()
	fovShow.Text = S.ShowFov and "Hide Fov" or "Show Fov"
	mark(fovShow, S.ShowFov)
end
track(fovShow.MouseButton1Click:Connect(function()
	S.ShowFov = not S.ShowFov
	refreshFovShow()
end))
refreshFovShow()

-- Aimbot enable/disable, smoothness
bindToggle(at(aimFrame, "EnableAimbotButton"), at(aimFrame, "DisableAimbotButton"), "Enabled")

local smoothBox = at(smoothFrm, "EnterSmoothnessBox")
bindApply(at(smoothFrm, "ApplySmoothnessButton"), smoothBox, function(t)
	local n = tonumber((t:gsub(",", ".")))
	if n then S.Smooth = math.clamp(n, 0, 1) else smoothBox.Text = "" end
end)

-- Target limb 
local limbMap = {}
for _, b in ipairs(limbFrame:GetChildren()) do
	if b:IsA("TextButton") then
		local limb = (b.Text:gsub("%s+", ""))
		limbMap[limb] = limbMap[limb] or {}
		table.insert(limbMap[limb], b)
	end
end
bindRadio(limbMap, "Limb")

-- Target player
local plrBox = at(plrFrame, "EnterTargetPlayerBox")
local plrApplyBtn = at(plrFrame, "ApplyTargetPlayerButton")
bindApply(plrApplyBtn, plrBox, function(t)
	t = t:gsub("^%s+", ""):gsub("%s+$", "")
	S.TargetName = (t ~= "") and t or nil
	mark(plrApplyBtn, S.TargetName ~= nil)
end)

local function resolvePlayer(q)
	q = q:lower()
	local partial
	for _, p in ipairs(Players:GetPlayers()) do
		local n, d = p.Name:lower(), p.DisplayName:lower()
		if n == q or d == q then return p end
		if not partial and (n:sub(1, #q) == q or d:sub(1, #q) == q) then partial = p end
	end
	return partial
end

-- Checkers
bindToggle(at(checkFrame, "EnableWallcheckButton"),  at(checkFrame, "DisableWallcheckButton"),  "Wall")
bindToggle(at(checkFrame, "EnableTeamcheckButton"),  at(checkFrame, "DisableTeamcheckButton"),  "Team")
bindToggle(at(checkFrame, "EnableAlivecheckButton"), at(checkFrame, "DisableAlivecheckButton"), "Alive")

-- Aim type
local function mouseFn(name)
	if name == "mousemoverel" then return mousemoverel end
	if name == "mousemoveabs" then return mousemoveabs end
end

bindRadio({
	CFrame       = { at(typeFrame, "ShowHideFovButton") },
	mousemoverel = { at(typeFrame, "ShowHideFovButton1") },
	mousemoveabs = { at(typeFrame, "ShowHideFovButton2") },
}, "AimType", function(v)
	if v ~= "CFrame" and type(mouseFn(v)) ~= "function" then
		warn("[UAimbot] " .. v .. " is not supported by this executor")
		return false
	end
end)

-- targeting
local rayParams = RaycastParams.new()
rayParams.FilterType = Enum.RaycastFilterType.Exclude
rayParams.IgnoreWater = true

local function visible(part, char)
	local origin = cam.CFrame.Position
	rayParams.FilterDescendantsInstances = { lp.Character, char }
	return Workspace:Raycast(origin, part.Position - origin, rayParams) == nil
end

local function sameTeam(plr)
	return plr.Team ~= nil and plr.Team == lp.Team
end

local function pickTarget(mouse)
	local forced, list
	if S.TargetName then
		forced = resolvePlayer(S.TargetName)
		if not forced then return end
		list = { forced }
	else
		list = Players:GetPlayers()
	end

	local radius = S.Fov * cam.ViewportSize.Y / 2
	local best, bestD
	for _, plr in ipairs(list) do
		if plr ~= lp and not (S.Team and sameTeam(plr)) then
			local char = plr.Character
			local hum = char and char:FindFirstChildOfClass("Humanoid")
			if hum and (not S.Alive or hum.Health > 0) then
				local part = char:FindFirstChild(S.Limb) or char:FindFirstChild("Head") or char:FindFirstChild("HumanoidRootPart")
				if part and part:IsA("BasePart") then
					local sp, on = cam:WorldToViewportPoint(part.Position)
					if on then
						local d = (Vector2.new(sp.X, sp.Y) - mouse).Magnitude
						if (forced or d <= radius) and (not bestD or d < bestD) and (not S.Wall or visible(part, char)) then
							best, bestD = part, d
						end
					end
				end
			end
		end
	end
	return best
end

local function aimAt(part, mouse)
	local alpha = 1 - math.clamp(S.Smooth, 0, 0.99)
	if S.AimType == "CFrame" then
		local cf = cam.CFrame
		cam.CFrame = cf:Lerp(CFrame.lookAt(cf.Position, part.Position), alpha)
		return
	end
	local f = mouseFn(S.AimType)
	if not f then return end
	local sp = cam:WorldToViewportPoint(part.Position)
	local dx, dy = (sp.X - mouse.X) * alpha, (sp.Y - mouse.Y) * alpha
	if S.AimType == "mousemoverel" then
		f(dx, dy)
	else
		f(mouse.X + dx, mouse.Y + dy)
	end
end

RunService:BindToRenderStep(BIND, Enum.RenderPriority.Camera.Value + 1, function()
	cam = Workspace.CurrentCamera
	if not cam then return end
	local mouse = UIS:GetMouseLocation()

	if S.ShowFov then
		local r = S.Fov * cam.ViewportSize.Y / 2
		circle.Size = UDim2.fromOffset(r * 2, r * 2)
		circle.Position = UDim2.fromOffset(mouse.X, mouse.Y)
		circle.Visible = true
	else
		circle.Visible = false
	end

	if not S.Enabled or not UIS:IsMouseButtonPressed(CONFIG.AimButton) then return end
	local part = pickTarget(mouse)
	if part then aimAt(part, mouse) end
end)

-- lifecycle
local api = { Settings = S }
local destroyed = false

function api.Destroy()
	if destroyed then return end
	destroyed = true
	pcall(function() RunService:UnbindFromRenderStep(BIND) end)
	for _, c in ipairs(conns) do pcall(function() c:Disconnect() end) end
	pcall(function() overlay:Destroy() end)
	pcall(function() host:Destroy() end)
	pcall(function() gui:Destroy() end)
	if env.UAimbot == api then env.UAimbot = nil end
end

track(host.Destroying:Connect(api.Destroy))
env.UAimbot = api
print("[Cheesy.UAimbot] connected" .. ((SGS and SGS.Alive) and " to SGS" or " (standalone)"))
