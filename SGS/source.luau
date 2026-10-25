--[[ teamcch/projects/SGS/source.luau | v1.1.2.0 | Scripts Gui Space
 _________  _______   ________  _____ ______   ________  ________  ___  ___     
|\___   ___\\  ___ \ |\   __  \|\   _ \  _   \|\   ____\|\   ____\|\  \|\  \    
\|___ \  \_\ \   __/|\ \  \|\  \ \  \\\__\ \  \ \  \___|\ \  \___|\ \  \\\  \   
     \ \  \ \ \  \_|/_\ \   __  \ \  \\|__| \  \ \  \    \ \  \    \ \   __  \  
      \ \  \ \ \  \_|\ \ \  \ \  \ \  \    \ \  \ \  \____\ \  \____\ \  \ \  \ 
       \ \__\ \ \_______\ \__\ \__\ \__\    \ \__\ \_______\ \_______\ \__\ \__\
        \|__|  \|_______|\|__|\|__|\|__|     \|__|\|_______|\|_______|\|__|\|__|

]]--

local UIS = game:GetService("UserInputService")
local TS = game:GetService("TweenService")
local RS = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local CAS = game:GetService("ContextActionService")

local RealInstance = Instance
local env = (getgenv and getgenv()) or _G

if env.SGS and env.SGS.Alive then
	return env.SGS
end

------------------------------------------------------------------ signals
local Signal = {}
Signal.__index = Signal

function Signal.new()
	return setmetatable({ _h = {} }, Signal)
end

function Signal:Connect(fn)
	local list = self._h
	local h = { fn = fn }
	table.insert(list, h)
	local conn = { Connected = true }
	function conn:Disconnect()
		self.Connected = false
		local i = table.find(list, h)
		if i then table.remove(list, i) end
	end
	return conn
end

function Signal:Once(fn)
	local c
	c = self:Connect(function(...)
		c:Disconnect()
		fn(...)
	end)
	return c
end

function Signal:Wait()
	local co = coroutine.running()
	self:Once(function(...) task.spawn(co, ...) end)
	return coroutine.yield()
end

function Signal:Fire(...)
	for _, h in ipairs({ table.unpack(self._h) }) do
		task.spawn(h.fn, ...)
	end
end

local Events = {
	Opened = Signal.new(), Closed = Signal.new(),
	ExplorerToggled = Signal.new(), SettingsToggled = Signal.new(),
	TabAdded = Signal.new(), TabRemoved = Signal.new(), TabToggled = Signal.new(),
	TabSelected = Signal.new(), TabMoved = Signal.new(),
	VariantChanged = Signal.new(), ThemeChanged = Signal.new(),
}

------------------------------------------------------------------ config
local CONFIG_ROOT = "teamCCH"
local CONFIG_DIR = "teamCCH/SGS"
local CONFIG_PATH = "teamCCH/SGS/config.json"

local FS = typeof(writefile) == "function" and typeof(readfile) == "function" and typeof(isfile) == "function"
	and typeof(isfolder) == "function" and typeof(makefolder) == "function"

-- иконки из rbxmx (Frame/Icon = логотип, Settings = шестерёнка)
local ICONS = {
	Logo = "rbxassetid://132304483868336",
	Settings = "rbxassetid://125242096497906",
}

------------------------------------------------------------------ keys
local KEY = {}
for _, k in ipairs(Enum.KeyCode:GetEnumItems()) do
	KEY[k.Name:lower()] = k
end

local ALIAS = {
	ctrl = "leftcontrol", control = "leftcontrol", lctrl = "leftcontrol", rctrl = "rightcontrol",
	shift = "leftshift", lshift = "leftshift", rshift = "rightshift",
	alt = "leftalt", lalt = "leftalt", ralt = "rightalt",
	["\\"] = "backslash", ["/"] = "slash", ["."] = "period", [";"] = "semicolon", ["'"] = "quote",
	["["] = "leftbracket", ["]"] = "rightbracket", ["-"] = "minus", ["="] = "equals", ["`"] = "backquote",
	esc = "escape", enter = "return", del = "delete", ins = "insert", pgup = "pageup", pgdn = "pagedown",
}
for i, n in ipairs({ "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" }) do
	ALIAS[tostring(i)] = n
end
ALIAS["0"] = "zero"

local KC = Enum.KeyCode
local GROUP = {
	[KC.LeftControl] = "ctrl", [KC.RightControl] = "ctrl",
	[KC.LeftShift] = "shift", [KC.RightShift] = "shift",
	[KC.LeftAlt] = "alt", [KC.RightAlt] = "alt",
}
local GROUP_KEYS = {
	ctrl = { KC.LeftControl, KC.RightControl },
	shift = { KC.LeftShift, KC.RightShift },
	alt = { KC.LeftAlt, KC.RightAlt },
}
local PRETTY = {
	[KC.LeftControl] = "CTRL", [KC.RightControl] = "RCTRL",
	[KC.LeftShift] = "SHIFT", [KC.RightShift] = "RSHIFT",
	[KC.LeftAlt] = "ALT", [KC.RightAlt] = "RALT",
}

local DIGITS = {
	[KC.One] = 1, [KC.Two] = 2, [KC.Three] = 3, [KC.Four] = 4, [KC.Five] = 5,
	[KC.Six] = 6, [KC.Seven] = 7, [KC.Eight] = 8, [KC.Nine] = 9,
	[KC.KeypadOne] = 1, [KC.KeypadTwo] = 2, [KC.KeypadThree] = 3, [KC.KeypadFour] = 4, [KC.KeypadFive] = 5,
	[KC.KeypadSix] = 6, [KC.KeypadSeven] = 7, [KC.KeypadEight] = 8, [KC.KeypadNine] = 9,
}
local FKEYS = {
	[KC.F1] = 1, [KC.F2] = 2, [KC.F3] = 3, [KC.F4] = 4, [KC.F5] = 5,
	[KC.F6] = 6, [KC.F7] = 7, [KC.F8] = 8, -- F9 = консоль Roblox
}

local function sameKey(a, b)
	if a == b then return true end
	local g = GROUP[a]
	return g ~= nil and g == GROUP[b]
end

local function groupDown(g)
	for _, k in ipairs(GROUP_KEYS[g]) do
		if UIS:IsKeyDown(k) then return true end
	end
	return false
end

local function keyDown(k)
	local g = GROUP[k]
	if g then return groupDown(g) end
	return UIS:IsKeyDown(k)
end

local function tokenKey(tok)
	tok = tok:lower()
	return KEY[ALIAS[tok] or tok]
end

local function parseCombo(text)
	local keys = {}
	for tok in tostring(text):gmatch("[^%+%s]+") do
		local kc = tokenKey(tok)
		if not kc then return nil end
		local dup = false
		for _, k in ipairs(keys) do
			if k == kc then dup = true end
		end
		if not dup then table.insert(keys, kc) end
	end
	if #keys == 0 or #keys > 3 then return nil end
	return keys
end

local function parseValue(v)
	if type(v) == "string" then return parseCombo(v) end
	if type(v) == "table" then return parseCombo(table.concat(v, "+")) end
	return nil
end

local function fmtCombo(combo)
	local out = {}
	for _, k in ipairs(combo) do
		table.insert(out, PRETTY[k] or k.Name)
	end
	return table.concat(out, " + ")
end

local function sameCombo(a, b)
	if #a ~= #b then return false end
	for _, k in ipairs(a) do
		local found = false
		for _, o in ipairs(b) do
			if sameKey(k, o) then found = true end
		end
		if not found then return false end
	end
	return true
end

-- нажатая клавиша должна входить в комбо, остальные зажаты, лишних модификаторов нет
local function matches(combo, pressed)
	local inCombo = false
	local mods = { ctrl = false, shift = false, alt = false }
	for _, k in ipairs(combo) do
		local isPressed = sameKey(k, pressed)
		if isPressed then inCombo = true end
		if not (isPressed or keyDown(k)) then return false end
		local g = GROUP[k]
		if g then mods[g] = true end
	end
	if not inCombo then return false end
	for g, want in pairs(mods) do
		if not want and groupDown(g) then return false end
	end
	return true
end

------------------------------------------------------------------ variants / sides
local VARIANTS = {
	default = { Title = "Old variant (v1)", Button = "DefaultButton", Sides = { "left", "right" } }, -- прижато к краю, как в v1
	floating = { Title = "New floating variant (v1.1)", Button = "FloatingDefaultButton", Sides = { "left", "right", "top", "bottom" } },
	icons = { Title = "Icons", Button = "IconsButton", Sides = { "left", "right", "top", "bottom" } },
	iconstext = { Title = "Icons and Text", Button = "IconsTextButton", Sides = { "left", "right" } },
}
local VARIANT_ORDER = { "default", "floating", "icons", "iconstext" }

local VARIANT_ALIAS = {
	default = "default", v1 = "default", old = "default", oldvariant = "default",
	floating = "floating", v11 = "floating", ["v1.1"] = "floating", new = "floating",
	icons = "icons", icon = "icons",
	iconstext = "iconstext", iconsandtext = "iconstext", ["icons&text"] = "iconstext", text = "iconstext",
}

local function parseVariant(v)
	local s = tostring(v):lower():gsub("[%s_%-]", "")
	return VARIANT_ALIAS[s]
end

local SIDE_ALIAS = {
	left = "left", l = "left", right = "right", r = "right",
	top = "top", t = "top", bottom = "bottom", b = "bottom",
}

local function parseSide(s)
	s = tostring(s):lower():gsub("%s", "")
	return SIDE_ALIAS[s]
end

local function sideAllowed(variant, side)
	for _, s in ipairs(VARIANTS[variant].Sides) do
		if s == side then return true end
	end
	return false
end

local SIDE_FALLBACK = { left = "top", top = "left", right = "bottom", bottom = "right" }

local function fitSide(variant, side)
	if sideAllowed(variant, side) then return side end
	local alt = SIDE_FALLBACK[side]
	if alt and sideAllowed(variant, alt) then return alt end
	return VARIANTS[variant].Sides[1]
end

------------------------------------------------------------------ theme
-- ключи и дефолты из блока Themes в rbxmx
local THEME_KEYS = { "Background", "SubBackground", "Button", "Stroke", "Scroll", "White", "Black", "Ok", "Bad" }
local DEFAULT_THEME = {
	Background = Color3.fromRGB(25, 25, 25),
	Transparency = 0.2,
	SubBackground = Color3.fromRGB(35, 35, 35),
	Button = Color3.fromRGB(25, 25, 25),
	Stroke = Color3.fromRGB(86, 86, 86),
	Scroll = Color3.fromRGB(91, 91, 91),
	White = Color3.new(1, 1, 1),
	Black = Color3.new(0, 0, 0),
	Ok = Color3.fromRGB(80, 200, 120),
	Bad = Color3.fromRGB(220, 70, 70),
}
local Theme = {}
for k, v in pairs(DEFAULT_THEME) do Theme[k] = v end

local function clamp255(n)
	return math.clamp(math.floor(n + 0.5), 0, 255)
end

-- Color3 | {r,g,b} (0-255) | "r,g,b" (0-255, либо все <=1 = 0-1) | "#rrggbb"
local function parseColor(v)
	if typeof(v) == "Color3" then return v end
	if type(v) == "table" then
		local r, g, b = tonumber(v[1]), tonumber(v[2]), tonumber(v[3])
		if r and g and b then return Color3.fromRGB(clamp255(r), clamp255(g), clamp255(b)) end
		return nil
	end
	local text = tostring(v):gsub("%s", "")
	local hex = text:match("^#(%x%x%x%x%x%x)$")
	if hex then
		return Color3.fromRGB(tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16))
	end
	local a, b, c = text:match("^([%d%.]+),([%d%.]+),([%d%.]+)$")
	a, b, c = tonumber(a), tonumber(b), tonumber(c)
	if not (a and b and c) then return nil end
	if a <= 1 and b <= 1 and c <= 1 then return Color3.new(a, b, c) end
	return Color3.fromRGB(clamp255(a), clamp255(b), clamp255(c))
end

local function fmtColor(c)
	return string.format("%d,%d,%d", clamp255(c.R * 255), clamp255(c.G * 255), clamp255(c.B * 255))
end

local function setThemeValues(t)
	local changed = false
	for _, k in ipairs(THEME_KEYS) do
		if t[k] ~= nil then
			local c = parseColor(t[k])
			if c then
				Theme[k] = c
				changed = true
			end
		end
	end
	if t.Transparency ~= nil then
		local n = tonumber(t.Transparency)
		if n then
			Theme.Transparency = math.clamp(n, 0, 1)
			changed = true
		end
	end
	return changed
end

------------------------------------------------------------------ config
local Config = {
	Keybinds = {
		Ui = { KC.BackSlash },
		Explorer = { KC.LeftControl, KC.BackSlash },
	},
	Variant = "default",
	Alignment = "left",
	UnlockCursor = true, -- пока меню открыто: курсор разблокирован
}

local function saveConfig()
	if not FS then return end
	pcall(function()
		if not isfolder(CONFIG_ROOT) then makefolder(CONFIG_ROOT) end
		if not isfolder(CONFIG_DIR) then makefolder(CONFIG_DIR) end
		local out = {
			Keybinds = {}, Variant = Config.Variant, Alignment = Config.Alignment,
			UnlockCursor = Config.UnlockCursor,
			Theme = { Transparency = Theme.Transparency },
		}
		for name, combo in pairs(Config.Keybinds) do
			local names = {}
			for _, k in ipairs(combo) do table.insert(names, k.Name) end
			out.Keybinds[name] = names
		end
		for _, k in ipairs(THEME_KEYS) do
			local c = Theme[k]
			out.Theme[k] = { clamp255(c.R * 255), clamp255(c.G * 255), clamp255(c.B * 255) }
		end
		writefile(CONFIG_PATH, HttpService:JSONEncode(out))
	end)
end

local function loadConfig()
	if not FS then return end
	local ok, data = pcall(function()
		if isfile(CONFIG_PATH) then
			return HttpService:JSONDecode(readfile(CONFIG_PATH))
		end
	end)
	if ok and type(data) == "table" then
		if type(data.Keybinds) == "table" then
			for name in pairs(Config.Keybinds) do
				local parsed = parseValue(data.Keybinds[name])
				if parsed then Config.Keybinds[name] = parsed end
			end
		end
		local variant = data.Variant ~= nil and parseVariant(data.Variant)
		if variant then Config.Variant = variant end
		local side = data.Alignment ~= nil and parseSide(data.Alignment)
		if side then Config.Alignment = side end
		if type(data.Theme) == "table" then setThemeValues(data.Theme) end
		if type(data.UnlockCursor) == "boolean" then Config.UnlockCursor = data.UnlockCursor end
	end
	Config.Alignment = fitSide(Config.Variant, Config.Alignment)
	saveConfig() -- создаёт файл при первом запуске / чинит битый
end
loadConfig()

------------------------------------------------------------------ ui helpers
local HA = Enum.HorizontalAlignment
local VA = Enum.VerticalAlignment
local FD = Enum.FillDirection

-- в rbxmx: окна/табы/Title = BorderStrokePosition Inner, всё внутри Settings = Outer (дефолт)
local INNER = (function()
	local ok, v = pcall(function() return Enum.BorderStrokePosition.Inner end)
	return ok and v or nil
end)()

-- роли цветов -> текущая тема
local ROLE = {
	bg = function() return Theme.Background end,
	sub = function() return Theme.SubBackground end,
	lbl = function() return Theme.Background:Lerp(Theme.Black, 0.2) end, -- 25 -> 20 как в rbxmx
	btn = function() return Theme.Button end,
	black = function() return Theme.Black end,
	text = function() return Theme.White end,
	stroke = function() return Theme.Stroke end,
	scroll = function() return Theme.Scroll end,
}

local painted = {}
-- красит obj.prop по роли; tr=true -> BackgroundTransparency следует Theme.Transparency
local function paint(obj, prop, role, tr)
	table.insert(painted, { obj, prop, role, tr })
	obj[prop] = ROLE[role]()
	if tr then obj.BackgroundTransparency = Theme.Transparency end
end

local function repaint()
	local alive = {}
	for _, p in ipairs(painted) do
		local o = p[1]
		if o.Parent ~= nil then
			o[p[2]] = ROLE[p[3]]()
			if p[4] then o.BackgroundTransparency = Theme.Transparency end
			table.insert(alive, p)
		end
	end
	painted = alive
end

local function new(class, props)
	local o = RealInstance.new(class)
	local parent
	for k, v in pairs(props or {}) do
		if k == "Parent" then parent = v else o[k] = v end
	end
	if parent then o.Parent = parent end
	return o
end

-- в rbxmx везде Individual Corners = 4px; у Titlebar снизу 0 (corner(p, tl, tr, bl, br))
local function corner(p, tl, tr, bl, br)
	tl = tl or 4
	tr = tr or tl
	bl = bl or tl
	br = br or tl
	local c = new("UICorner", { CornerRadius = UDim.new(0, math.max(tl, tr, bl, br)), Parent = p })
	pcall(function()
		c.TopLeftRadius = UDim.new(0, tl)
		c.TopRightRadius = UDim.new(0, tr)
		c.BottomLeftRadius = UDim.new(0, bl)
		c.BottomRightRadius = UDim.new(0, br)
	end)
	return c
end
local function pad(p, n)
	return new("UIPadding", {
		PaddingLeft = UDim.new(0, n), PaddingRight = UDim.new(0, n),
		PaddingTop = UDim.new(0, n), PaddingBottom = UDim.new(0, n), Parent = p,
	})
end
local function stroke(p, pos)
	local s = new("UIStroke", {
		Thickness = 1, Transparency = 0.8,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = p,
	})
	paint(s, "Color", "stroke")
	if pos then pcall(function() s.BorderStrokePosition = pos end) end
	return s
end

local function shadow(p)
	-- значения из rbxmx: Blur 20, Spread 10, Transparency 0.5, ZIndex -1
	pcall(function()
		local sh = RealInstance.new("UIShadow")
		pcall(function() sh.BlurRadius = UDim.new(0, 20) end)
		pcall(function() sh.Spread = UDim2.fromOffset(10, 10) end)
		pcall(function() sh.Transparency = 0.5 end)
		pcall(function() sh.Color = Color3.new(0, 0, 0) end)
		pcall(function() sh.ZIndex = -1 end)
		sh.Parent = p
	end)
end

local function tw(obj, t, props, style, dir)
	local tween = TS:Create(obj, TweenInfo.new(t, style or Enum.EasingStyle.Quint, dir or Enum.EasingDirection.Out), props)
	tween:Play()
	return tween
end

-- шрифты из rbxmx: почти всё на rbxassetid://12187365559, Settings/Title, Apply, variant-кнопки и Search на SourceSansPro
local FONT_MAIN = Font.new("rbxassetid://12187365559", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
local FONT_ALT = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
local function setFont(o, f)
	pcall(function() o.FontFace = f end)
end

-- o = { role, tr (число = фикс, nil = тема), font, pad, sp }
local function label(parent, name, text, size, order, o)
	o = o or {}
	local l = new("TextLabel", {
		Name = name, Text = text, Size = size, LayoutOrder = order or 0, BorderSizePixel = 0,
		TextScaled = true, TextWrapped = true, Parent = parent,
	})
	paint(l, "BackgroundColor3", o.role or "lbl", o.tr == nil)
	if o.tr ~= nil then l.BackgroundTransparency = o.tr end
	paint(l, "TextColor3", "text")
	setFont(l, o.font or FONT_MAIN)
	corner(l); pad(l, o.pad or 5); stroke(l, o.sp)
	return l
end

local function button(parent, name, text, size, order, o)
	o = o or {}
	local b = new("TextButton", {
		Name = name, Text = text, Size = size, LayoutOrder = order or 0, AutoButtonColor = false,
		BorderSizePixel = 0, TextScaled = true, TextWrapped = true, Parent = parent,
	})
	paint(b, "BackgroundColor3", o.role or "lbl", o.tr == nil)
	if o.tr ~= nil then b.BackgroundTransparency = o.tr end
	paint(b, "TextColor3", "text")
	setFont(b, o.font or FONT_MAIN)
	corner(b); pad(b, o.pad or 5); stroke(b, o.sp)
	return b
end

local function listLayout(parent, dir, halign, wraps)
	return new("UIListLayout", {
		FillDirection = dir, SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 5),
		HorizontalAlignment = halign or HA.Left,
		VerticalAlignment = VA.Top, Wraps = wraps or false, Parent = parent,
	})
end

local function normImage(id)
	if type(id) == "number" then return "rbxassetid://" .. tostring(id) end
	if type(id) == "string" and id ~= "" then
		if id:match("^%d+$") then return "rbxassetid://" .. id end
		return id
	end
	return nil
end

-- иконка таба/логотипа: ImageLabel (Crop), без картинки = буква
local function makeIcon(parent, name, size, order, image, letter)
	local img = new("ImageLabel", {
		Name = name, Size = size, LayoutOrder = order or 0, BackgroundTransparency = 1, BorderSizePixel = 0,
		ScaleType = Enum.ScaleType.Crop, ResampleMode = Enum.ResamplerMode.Default, Parent = parent,
	})
	corner(img)
	local ltr = new("TextLabel", {
		Name = "Letter", Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = letter or "",
		TextScaled = true, Parent = img,
	})
	paint(ltr, "TextColor3", "text")
	setFont(ltr, FONT_MAIN)
	pad(ltr, 3)
	local function update(image2, letter2)
		local id = normImage(image2)
		img.Image = id or ""
		ltr.Text = letter2 or ltr.Text
		ltr.Visible = id == nil
	end
	update(image, letter)
	return img, ltr, update
end

------------------------------------------------------------------ build ui (mirror of SGSUI rbxmx)
local EDGE = 10
local OFF = 70
local SET_SIZE = UDim2.fromOffset(500, 500)
local ZERO = UDim2.fromOffset(0, 0)

local Gui = new("ScreenGui", {
	Name = "SGS", ResetOnSpawn = false, IgnoreGuiInset = true, DisplayOrder = 10000,
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
})
pcall(function() Gui.ScreenInsets = Enum.ScreenInsets.None end)
pcall(function() if syn and syn.protect_gui then syn.protect_gui(Gui) end end)

do
	local parented = false
	if typeof(gethui) == "function" then
		parented = pcall(function() Gui.Parent = gethui() end) and Gui.Parent ~= nil
	end
	if not parented then
		parented = pcall(function() Gui.Parent = game:GetService("CoreGui") end) and Gui.Parent ~= nil
	end
	if not parented then
		Gui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
	end
end

local InputSink = new("Frame", {
	Name = "InputSink", Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, BorderSizePixel = 0,
	Active = true, Visible = false, Parent = Gui,
})

-- Container: фон на весь экран + хосты табов. Вылетает из Explorer и влетает обратно в него.
local Container = new("Frame", {
	Name = "Container", AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5),
	Size = UDim2.fromScale(0, 0), BorderSizePixel = 0, ClipsDescendants = true, Visible = false, Parent = Gui,
})
paint(Container, "BackgroundColor3", "black", true)
local ContainerCorner = new("UICorner", { CornerRadius = UDim.new(0, 0), Parent = Container })

-- Tip: тултип таба (только вариант Icons — там имени не видно)
local Tip = new("TextLabel", {
	Name = "Tooltip", AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.fromOffset(0, 0), ZIndex = 30,
	AutomaticSize = Enum.AutomaticSize.XY, Size = UDim2.fromOffset(0, 0), BorderSizePixel = 0, Text = "",
	TextSize = 16, Visible = false, Active = false, Parent = Gui,
})
paint(Tip, "BackgroundColor3", "bg", false)
Tip.BackgroundTransparency = 0.05
paint(Tip, "TextColor3", "text")
setFont(Tip, FONT_MAIN)
corner(Tip); pad(Tip, 7); stroke(Tip, INNER)
local tipSeq = 0
local function hideTip()
	tipSeq += 1
	Tip.Visible = false
end

-- ModalBtn: Modal=true на видимой кнопке освобождает курсор (shift-lock / first person)
local ModalBtn = new("TextButton", {
	Name = "CursorUnlock", Text = "", Size = UDim2.fromOffset(1, 1), BackgroundTransparency = 1, BorderSizePixel = 0,
	Modal = true, Visible = false, Parent = Gui,
})

-- клавиши, которые НЕ глотаем пока меню открыто (изменяемый список; читается при каждом открытии)
local PassKeys = { KC.F9 }

------------------------------------------------------------------ explorer builder
local Explorer -- текущий Explorer (X), пересобирается при смене variant/alignment
local toggleSettings -- forward
local searchQuery = ""
local applySearch -- forward
local selectFirstMatch -- forward

-- size, anchor, shown, hidden
local function geometry(variant, side)
	local H = 60
	local size, anchor, shown, hidden
	if variant == "default" then
		-- Old v1: прижато к краю, на всю высоту, без отступов
		local W = 250
		size = UDim2.new(0, W, 1, 0)
		if side == "left" then
			anchor = Vector2.new(0, 0)
			shown = UDim2.new(0, 0, 0, 0)
			hidden = UDim2.new(0, -(W + OFF), 0, 0)
		else
			anchor = Vector2.new(1, 0)
			shown = UDim2.new(1, 0, 0, 0)
			hidden = UDim2.new(1, W + OFF, 0, 0)
		end
	elseif variant == "floating" and (side == "left" or side == "right") then
		-- SGSWindow из rbxmx: плавающее вертикальное окно с отступом 10px
		local W = 250
		size = UDim2.new(0, W, 1, -EDGE * 2)
		if side == "left" then
			anchor = Vector2.new(0, 0)
			shown = UDim2.new(0, EDGE, 0, EDGE)
			hidden = UDim2.new(0, -(W + OFF), 0, EDGE)
		else
			anchor = Vector2.new(1, 0)
			shown = UDim2.new(1, -EDGE, 0, EDGE)
			hidden = UDim2.new(1, W + OFF, 0, EDGE)
		end
	elseif variant == "floating" then
		size = UDim2.new(1, -EDGE * 2, 0, H)
		if side == "top" then
			anchor = Vector2.new(0, 0)
			shown = UDim2.new(0, EDGE, 0, EDGE)
			hidden = UDim2.new(0, EDGE, 0, -(H + OFF))
		else
			anchor = Vector2.new(0, 1)
			shown = UDim2.new(0, EDGE, 1, -EDGE)
			hidden = UDim2.new(0, EDGE, 1, H + OFF)
		end
	else -- icons / iconstext: авто-размер, по центру своей стороны
		local W = variant == "iconstext" and 200 or 60
		if side == "left" then
			size = UDim2.new(0, W, 0, 0)
			anchor = Vector2.new(0, 0.5)
			shown = UDim2.new(0, EDGE, 0.5, 0)
			hidden = UDim2.new(0, -(W + OFF), 0.5, 0)
		elseif side == "right" then
			size = UDim2.new(0, W, 0, 0)
			anchor = Vector2.new(1, 0.5)
			shown = UDim2.new(1, -EDGE, 0.5, 0)
			hidden = UDim2.new(1, W + OFF, 0.5, 0)
		elseif side == "top" then
			size = UDim2.new(0, 0, 0, H)
			anchor = Vector2.new(0.5, 0)
			shown = UDim2.new(0.5, 0, 0, EDGE)
			hidden = UDim2.new(0.5, 0, 0, -(H + OFF))
		else
			size = UDim2.new(0, 0, 0, H)
			anchor = Vector2.new(0.5, 1)
			shown = UDim2.new(0.5, 0, 1, -EDGE)
			hidden = UDim2.new(0.5, 0, 1, H + OFF)
		end
	end
	return size, anchor, shown, hidden
end

local function windowName(variant, side)
	local cap = side:sub(1, 1):upper() .. side:sub(2)
	if variant == "default" then return "SGSWindowV1" end
	if variant == "floating" then
		return (side == "left" or side == "right") and "SGSWindow" or ("SGSWindowHorizontal" .. cap)
	end
	if variant == "icons" then
		return (side == "left" or side == "right") and "SGSWindowIcons" or ("SGSWindowIcons" .. cap)
	end
	return "SGSWindowIconsText" .. cap
end

-- поле поиска (SearchBar из rbxmx): фильтрует табы по имени, Enter = открыть первый найденный
local function makeSearch(parent, name, size, order, role, padN)
	local box = new("TextBox", {
		Name = name, Size = size, LayoutOrder = order, BorderSizePixel = 0, TextScaled = true, TextWrapped = true,
		ClearTextOnFocus = false, Text = searchQuery, PlaceholderText = "search...",
		PlaceholderColor3 = Color3.fromRGB(128, 128, 128), Parent = parent,
	})
	paint(box, "BackgroundColor3", role, false)
	box.BackgroundTransparency = 0
	paint(box, "TextColor3", "text")
	setFont(box, FONT_ALT)
	corner(box); pad(box, padN or 5); stroke(box, INNER)
	box:GetPropertyChangedSignal("Text"):Connect(function()
		if searchQuery ~= box.Text then
			searchQuery = box.Text
			applySearch()
		end
	end)
	box.FocusLost:Connect(function(enter)
		if enter then selectFirstMatch() end
	end)
	return box
end

local function buildExplorer(variant, side)
	local v = side == "left" or side == "right" -- вертикальное окно
	local X = {
		Variant = variant, Side = side, Orient = v and "v" or "h", Conns = {},
		Mode = (variant == "icons" and "icon") or (variant == "iconstext" and "icontext") or "text",
	}
	local size, anchor, shown, hidden = geometry(variant, side)
	X.Shown, X.Hidden = shown, hidden

	local frame = new("Frame", {
		Name = windowName(variant, side), AnchorPoint = anchor, Position = hidden, Size = size, ZIndex = 10,
		BorderSizePixel = 0, Parent = Gui,
	})
	paint(frame, "BackgroundColor3", "bg", true)
	if X.Mode ~= "text" then
		frame.AutomaticSize = v and Enum.AutomaticSize.Y or Enum.AutomaticSize.X
	end
	pad(frame, 5)
	if variant == "default" then
		stroke(frame) -- v1: без corner, обычный stroke
	else
		stroke(frame, INNER); corner(frame)
	end
	listLayout(frame, v and FD.Vertical or FD.Horizontal, HA.Left)
	shadow(frame) -- новый класс, на старых клиентах просто пропустится
	X.Frame = frame

	-- сторона scrollbar'а: left-окно -> Left, right-окно -> Right (горизонтальные: дефолт Right)
	local sbPos = (side == "left") and Enum.VerticalScrollBarPosition.Left or Enum.VerticalScrollBarPosition.Right

	local function newScroll(sz, order, thickness)
		local s = new("ScrollingFrame", {
			Name = "Container", Size = sz, LayoutOrder = order, Active = true, BorderSizePixel = 0, ClipsDescendants = true,
			CanvasSize = UDim2.fromOffset(0, 0),
			AutomaticCanvasSize = v and Enum.AutomaticSize.Y or Enum.AutomaticSize.X,
			ScrollingDirection = v and Enum.ScrollingDirection.Y or Enum.ScrollingDirection.X,
			ScrollBarThickness = thickness, VerticalScrollBarPosition = sbPos, Parent = frame,
		})
		paint(s, "BackgroundColor3", "lbl", true)
		paint(s, "ScrollBarImageColor3", "scroll")
		return s
	end

	if X.Mode == "text" then
		---------------------------------------------------------- default / floating
		local hasSearch = variant == "floating"
		local fixed = v and UDim2.new(1, 0, 0, 50) or UDim2.new(0, 240, 1, 0)
		local n = hasSearch and 4 or 3 -- элементов кроме скролла: Title, [Search], Settings, Keybind
		local order = 0

		label(frame, "Title", "Script Gui Space (SGS)", fixed, order, { sp = INNER })
		order += 1
		if hasSearch then
			X.Search = makeSearch(frame, "Search", fixed, order, "lbl", 5)
			order += 1
		end

		-- ScrollingFrame: Size scale считается от области внутри UIPadding => вычитаем (размер + gap) каждого соседа
		local scroll = newScroll(
			v and UDim2.new(1, 0, 1, -55 * n) or UDim2.new(1, -245 * n, 1, 0),
			order, v and 5 or 2)
		order += 1
		listLayout(scroll, v and FD.Vertical or FD.Horizontal, v and HA.Center or HA.Left)
		pad(scroll, 5); corner(scroll); stroke(scroll, INNER)
		X.TabParent = scroll

		local toggle = button(frame, "SettingsToggleButton", "Show settings", fixed, order, { role = "lbl", tr = 0, sp = INNER })
		order += 1
		X.SettingsBtn = toggle
		table.insert(X.Conns, toggle.MouseButton1Click:Connect(function() toggleSettings() end))

		X.Hint = label(frame, "Keybind", "", fixed, order, { sp = INNER })
		function X.SetSettingsOpen(open)
			toggle.Text = open and "Hide settings" or "Show settings"
		end
	else
		---------------------------------------------------------- icons / icons+text
		local isText = X.Mode == "icontext"
		local rightSide = side == "right"
		local fixedSum = 0 -- высота/ширина всех соседей скролла + gaps (для fit)
		local order = 0

		-- логотип
		if isText then
			local head = new("Frame", {
				Name = "Name", Size = UDim2.new(1, 0, 0, 50), LayoutOrder = order, BorderSizePixel = 0, Parent = frame,
			})
			paint(head, "BackgroundColor3", "btn", false)
			head.BackgroundTransparency = 0
			pad(head, 5); stroke(head, INNER); corner(head)
			listLayout(head, FD.Horizontal, HA.Left)
			makeIcon(head, "Icon", UDim2.fromOffset(40, 40), rightSide and 1 or 0, ICONS.Logo, "S")
			local t = new("TextLabel", {
				Name = "TextLabel", Text = "SGS", Size = UDim2.fromOffset(135, 40), LayoutOrder = rightSide and 0 or 1,
				BackgroundTransparency = 1, TextScaled = true, TextWrapped = true, Parent = head,
			})
			paint(t, "TextColor3", "text")
			setFont(t, FONT_MAIN)
			fixedSum += 50 + 5
		else
			local head = new("Frame", {
				Name = "Frame", Size = UDim2.fromOffset(50, 50), LayoutOrder = order, BorderSizePixel = 0, Parent = frame,
			})
			paint(head, "BackgroundColor3", "btn", false)
			head.BackgroundTransparency = 0
			pad(head, 5); stroke(head, INNER); corner(head)
			makeIcon(head, "Icon", UDim2.fromScale(1, 1), 0, ICONS.Logo, "S")
			fixedSum += 50 + 5
		end
		order += 1

		-- поиск: в icons только у горизонтальных (SearchBar 90px), в icons+text — отдельная плашка
		if isText then
			local sf = new("Frame", {
				Name = "Search", Size = UDim2.new(1, 0, 0, 50), LayoutOrder = order, BorderSizePixel = 0, Parent = frame,
			})
			paint(sf, "BackgroundColor3", "btn", false)
			sf.BackgroundTransparency = 0
			pad(sf, 5); stroke(sf, INNER); corner(sf)
			X.Search = makeSearch(sf, "SearchBar", UDim2.fromScale(1, 1), 0, "btn", 5)
			order += 1
			fixedSum += 50 + 5
		elseif not v then
			X.Search = makeSearch(frame, "SearchBar", UDim2.new(0, 90, 1, 0), order, "btn", 10)
			order += 1
			fixedSum += 90 + 5
		end

		-- settings
		local setStroke
		if isText then
			local sb = new("TextButton", {
				Name = "Settings", Text = "", Size = UDim2.new(1, 0, 0, 50), LayoutOrder = order, AutoButtonColor = false,
				BorderSizePixel = 0, Parent = frame,
			})
			paint(sb, "BackgroundColor3", "btn", false)
			sb.BackgroundTransparency = 0
			pad(sb, 5); corner(sb); setStroke = stroke(sb, INNER)
			listLayout(sb, FD.Horizontal, HA.Left)
			local gear = new("ImageButton", {
				Name = "Settings", Size = UDim2.fromOffset(40, 40), LayoutOrder = rightSide and 1 or 0,
				BackgroundTransparency = 1, BorderSizePixel = 0, Image = ICONS.Settings, AutoButtonColor = false, Parent = sb,
			})
			corner(gear)
			local t = new("TextLabel", {
				Name = "TextLabel", Text = "Settings", Size = UDim2.fromOffset(135, 40), LayoutOrder = rightSide and 0 or 1,
				BackgroundTransparency = 1, TextScaled = true, TextWrapped = true, Parent = sb,
			})
			paint(t, "TextColor3", "text")
			setFont(t, FONT_MAIN)
			table.insert(X.Conns, sb.MouseButton1Click:Connect(function() toggleSettings() end))
			table.insert(X.Conns, gear.MouseButton1Click:Connect(function() toggleSettings() end))
		else
			local w = new("Frame", {
				Name = "Settings", Size = UDim2.fromOffset(50, 50), LayoutOrder = order, BorderSizePixel = 0, Parent = frame,
			})
			paint(w, "BackgroundColor3", "btn", false)
			w.BackgroundTransparency = 0
			pad(w, 5); corner(w); setStroke = stroke(w, INNER)
			local gear = new("ImageButton", {
				Name = "Settings", Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, BorderSizePixel = 0,
				Image = ICONS.Settings, AutoButtonColor = false, Parent = w,
			})
			corner(gear)
			table.insert(X.Conns, gear.MouseButton1Click:Connect(function() toggleSettings() end))
		end
		order += 1
		fixedSum += 50 + 5
		function X.SetSettingsOpen(open)
			setStroke.Color = open and Theme.White or Theme.Stroke
			setStroke.Transparency = open and 0.4 or 0.8
		end

		-- табы: авто-размер до края экрана, дальше скролл
		local scroll = newScroll(v and UDim2.new(1, 0, 0, 30) or UDim2.new(0, 30, 1, 0), order, 2)
		local lay = listLayout(scroll, v and FD.Vertical or FD.Horizontal, HA.Left)
		pad(scroll, 5); corner(scroll); stroke(scroll, INNER)
		X.TabParent = scroll

		local function fit()
			local screen = Gui.AbsoluteSize
			if v then
				local maxH = math.max(60, screen.Y - EDGE * 2 - 10 - fixedSum)
				scroll.Size = UDim2.new(1, 0, 0, math.clamp(lay.AbsoluteContentSize.Y + 10, 30, maxH))
			else
				local maxW = math.max(60, screen.X - EDGE * 2 - 10 - fixedSum)
				scroll.Size = UDim2.new(0, math.clamp(lay.AbsoluteContentSize.X + 10, 30, maxW), 1, 0)
			end
		end
		table.insert(X.Conns, lay:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(fit))
		table.insert(X.Conns, Gui:GetPropertyChangedSignal("AbsoluteSize"):Connect(fit))
		fit()
	end

	return X
end

local function destroyExplorer(X)
	hideTip()
	for _, c in ipairs(X.Conns) do c:Disconnect() end
	X.Frame:Destroy()
end

------------------------------------------------------------------ settings window (SGSSettingsWindow)
local Settings = new("Frame", {
	Name = "SGSSettingsWindow", AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5),
	Size = ZERO, ZIndex = 20, BorderSizePixel = 0, ClipsDescendants = true, Visible = false, Parent = Gui,
})
paint(Settings, "BackgroundColor3", "bg", true)
stroke(Settings, INNER); corner(Settings)
pcall(function() new("UIDragDetector", { Parent = Settings }) end)
shadow(Settings)

local Titlebar = new("Frame", {
	Name = "Titlebar", Size = UDim2.new(1, 0, 0, 35), BorderSizePixel = 0, Parent = Settings,
})
paint(Titlebar, "BackgroundColor3", "lbl", true)
corner(Titlebar, 4, 4, 0, 0); stroke(Titlebar, INNER)
do
	local tl = new("TextLabel", {
		Name = "Title", Text = "Settings", Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1,
		TextScaled = true, Parent = Titlebar,
	})
	paint(tl, "TextColor3", "text")
	setFont(tl, FONT_ALT)
	pad(tl, 5)
end

-- Content: ScrollingFrame под Titlebar, скролл по Y, scrollbar слева, канвас растёт сам
local Content = new("ScrollingFrame", {
	Name = "Content", Position = UDim2.fromOffset(0, 35), Size = UDim2.new(1, 0, 1, -35), Active = true,
	BackgroundTransparency = 1, BorderSizePixel = 0, ClipsDescendants = true,
	CanvasSize = UDim2.fromOffset(0, 0), AutomaticCanvasSize = Enum.AutomaticSize.Y,
	ScrollingDirection = Enum.ScrollingDirection.Y, ElasticBehavior = Enum.ElasticBehavior.Always,
	ScrollBarThickness = 5, VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left,
	Parent = Settings,
})
paint(Content, "ScrollBarImageColor3", "stroke")
pad(Content, 10); listLayout(Content, FD.Vertical, HA.Left)

local function section(name, order)
	local f = new("Frame", {
		Name = name, Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = order,
		BorderSizePixel = 0, ClipsDescendants = true, Parent = Content,
	})
	paint(f, "BackgroundColor3", "sub", true)
	listLayout(f, FD.Horizontal, HA.Left, true)
	pad(f, 5); corner(f); stroke(f)
	return f
end

-- порядок из rbxmx: Themes 0, Keybind 1, SGSInterfaceVariants 2, Aligment 3, Socials 15
local ThemeFrame = section("Themes", 0)
label(ThemeFrame, "ThemeLabel", "Theme", UDim2.new(1, 0, 0, 35), 0)

local KeybindFrame = section("Keybind", 1)
label(KeybindFrame, "KeybindLabel", "Keybinds", UDim2.new(1, 0, 0, 35), 0)

local VariantFrame = section("SGSInterfaceVariants", 2)
label(VariantFrame, "KeybindLabel", "SGS Interface variants", UDim2.new(1, 0, 0, 35), 0)
label(VariantFrame, "Explorer", "Explorer", UDim2.new(1, 0, 0, 35), 1)

local AlignFrame = section("Aligment", 3)
label(AlignFrame, "KeybindLabel", "Aligment", UDim2.new(1, 0, 0, 35), 0)

local InputFrame = section("Input", 4)
label(InputFrame, "InterfaceModulesLabel", "Interface modules", UDim2.new(1, 0, 0, 35), 0)

local SocialsFrame = section("Socials", 15)
label(SocialsFrame, "Developer", "https://github.com/teamCCH/projects", UDim2.new(1, 0, 0, 35), 0)
label(SocialsFrame, "Developer", "Developed by teamCCH", UDim2.new(1, 0, 0, 35), 1)
label(SocialsFrame, "Developer1", "Project Cheesy", UDim2.new(1, 0, 0, 35), 2)

------------------------------------------------------------------ state + animations
local uiOpen = false
local explorerWanted = true  -- состояние Ctrl+\ (помнится между открытиями)
local explorerVisible = false
local settingsOpen = false
local seq = 0
local layoutSeq = 0
local Destroyed = false

local Tabs = {}
local tabCounter = 0
local currentTab = nil -- последний выбранный таб (его двигает Ctrl+F1..F8)
local themeRefresh = {}

-- захват ввода пока меню открыто: курсор + клавиши
local cursorOn, sinkOn, prevIcon = false, false, true
local function setCursor(on)
	if on == cursorOn then return end
	cursorOn = on
	if on then
		prevIcon = UIS.MouseIconEnabled
		ModalBtn.Visible = true
		pcall(function()
			RS:BindToRenderStep("SGS_Cursor", Enum.RenderPriority.Last.Value + 1, function()
				UIS.MouseBehavior = Enum.MouseBehavior.Default -- после камеры игры, перебиваем LockCenter
				UIS.MouseIconEnabled = true
			end)
		end)
	else
		pcall(function() RS:UnbindFromRenderStep("SGS_Cursor") end)
		ModalBtn.Visible = false
		pcall(function() UIS.MouseIconEnabled = prevIcon end)
	end
end

local function applyCapture()
	setCursor(uiOpen and Config.UnlockCursor)
end

local playIntro -- forward
local buildTabVisual -- forward
local refreshTexts -- forward
local tabVisual -- forward

-- прямоугольник Explorer на экране (в его "показанной" позиции): центр и размер в пикселях
local function collapsedRect()
	local X = Explorer
	local screen = Gui.AbsoluteSize
	local sz = X.Frame.AbsoluteSize
	local p = X.Shown
	local a = X.Frame.AnchorPoint
	local px = screen.X * p.X.Scale + p.X.Offset
	local py = screen.Y * p.Y.Scale + p.Y.Offset
	local tl = Vector2.new(px - a.X * sz.X, py - a.Y * sz.Y)
	return tl + sz / 2, sz
end

local function flushTabs()
	local i = 0
	for _, e in ipairs(Tabs) do
		if not e.Introduced then
			i += 1
			task.delay(0.15 + (i - 1) * 0.08, function() playIntro(e) end)
		end
	end
end

local function showExplorer()
	explorerVisible = true
	tw(Explorer.Frame, 0.5, { Position = Explorer.Shown }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	flushTabs()
	Events.ExplorerToggled:Fire(true)
end

local function hideExplorer()
	explorerVisible = false
	tw(Explorer.Frame, 0.4, { Position = Explorer.Hidden }, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
	Events.ExplorerToggled:Fire(false)
end

-- смена variant/стороны: если Explorer на экране — уезжает по старой стороне, новый приезжает по новой
local function applyLayout()
	layoutSeq += 1
	local my = layoutSeq
	local old = Explorer

	local function rebuild()
		if layoutSeq ~= my or Destroyed then return end
		destroyExplorer(old)
		Explorer = buildExplorer(Config.Variant, Config.Alignment)
		Explorer.SetSettingsOpen(settingsOpen)
		for _, e in ipairs(Tabs) do buildTabVisual(e) end
		refreshTexts()
		if explorerVisible then showExplorer() end
		Events.VariantChanged:Fire(Config.Variant, Config.Alignment)
	end

	if explorerVisible then
		local t = tw(old.Frame, 0.3, { Position = old.Hidden }, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
		t.Completed:Connect(rebuild)
	else
		rebuild()
	end
end

local function showSettings()
	settingsOpen = true
	Explorer.SetSettingsOpen(true)
	Settings.Visible = true
	tw(Settings, 0.45, { Size = SET_SIZE }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	Events.SettingsToggled:Fire(true)
end

local function hideSettings()
	settingsOpen = false
	Explorer.SetSettingsOpen(false)
	local t = tw(Settings, 0.3, { Size = ZERO }, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
	t.Completed:Connect(function()
		if not settingsOpen then Settings.Visible = false end
	end)
	Events.SettingsToggled:Fire(false)
end

-- открытие: Explorer выезжает, затем фон (Container) вылетает ИЗ него на весь экран
local function openUi()
	if uiOpen or Destroyed then return end
	uiOpen = true
	seq += 1
	local my = seq
	InputSink.Visible = true
	applyCapture()
	local wait = 0
	if explorerWanted and not explorerVisible then
		showExplorer()
		wait = 0.3
	end
	task.delay(wait, function()
		if seq ~= my or not uiOpen then return end
		if not Container.Visible then
			local c, s = collapsedRect()
			Container.AnchorPoint = Vector2.new(0.5, 0.5)
			Container.Position = UDim2.fromOffset(c.X, c.Y)
			Container.Size = UDim2.fromOffset(s.X, s.Y)
			Container.BackgroundTransparency = 1
			ContainerCorner.CornerRadius = UDim.new(0, 8)
			Container.Visible = true
		end
		tw(Container, 0.6, {
			Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = Theme.Transparency,
		}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
		tw(ContainerCorner, 0.6, { CornerRadius = UDim.new(0, 0) }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
	end)
	Events.Opened:Fire()
end

-- закрытие: фон влетает обратно в Explorer, потом Explorer уезжает
local function closeUi()
	if not uiOpen then return end
	uiOpen = false
	seq += 1
	local my = seq
	applyCapture()
	hideTip()
	if settingsOpen then hideSettings() end
	local c, s = collapsedRect()
	local t = tw(Container, 0.5, {
		Position = UDim2.fromOffset(c.X, c.Y), Size = UDim2.fromOffset(s.X, s.Y), BackgroundTransparency = 1,
	}, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
	tw(ContainerCorner, 0.5, { CornerRadius = UDim.new(0, 8) }, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
	t.Completed:Connect(function()
		if seq ~= my then return end
		Container.Visible = false
		local wasVisible = explorerVisible
		if wasVisible then hideExplorer() end
		task.delay(wasVisible and 0.4 or 0, function()
			if seq == my then InputSink.Visible = false end
		end)
	end)
	Events.Closed:Fire()
end

local function toggleUi()
	if uiOpen then closeUi() else openUi() end
end

local function toggleExplorer()
	if not uiOpen then return end -- ctrl+\ работает только пока ui открыт
	explorerWanted = not explorerWanted
	if explorerWanted then showExplorer() else hideExplorer() end
end

toggleSettings = function()
	if not uiOpen then return end
	if settingsOpen then hideSettings() else showSettings() end
end

-- первый Explorer (после объявления всех forward'ов)
Explorer = buildExplorer(Config.Variant, Config.Alignment)

------------------------------------------------------------------ tabs
tabVisual = function(e, dur)
	if not e.Introduced or e.Dead or not e.Stroke then return end
	tw(e.Stroke, dur or 0.2, {
		Color = e.Active and Theme.White or Theme.Stroke,
		Transparency = e.Active and 0.4 or 0.8,
	})
end

local function indexOf(e)
	for i, o in ipairs(Tabs) do
		if o == e then return i end
	end
	return nil
end

local function reindex()
	for i, o in ipairs(Tabs) do
		if o.Holder then o.Holder.LayoutOrder = i end
	end
end

local function setActive(e, on)
	local changed = e.Active ~= on
	e.Active = on
	e.Host.Visible = on
	tabVisual(e)
	if changed then Events.TabToggled:Fire(e.Host, on) end
end

local function markCurrent(e)
	if currentTab ~= e then
		currentTab = e
		Events.TabSelected:Fire(e.Host)
	end
end

-- exclusive (обычный клик): закрывает остальные; если были открыты другие — этот остаётся открытым, иначе toggle
-- не exclusive (Ctrl+клик): просто toggle этого таба, остальные не трогаем
local function selectTab(e, exclusive)
	if exclusive then
		local others = false
		for _, o in ipairs(Tabs) do
			if o ~= e and o.Active then
				setActive(o, false)
				others = true
			end
		end
		setActive(e, others or not e.Active)
	else
		setActive(e, not e.Active)
	end
	if e.Active then markCurrent(e) end
end

-- хоткеи / API: открыть таб эксклюзивно (без toggle)
local function selectOnly(e)
	for _, o in ipairs(Tabs) do
		if o ~= e and o.Active then setActive(o, false) end
	end
	setActive(e, true)
	markCurrent(e)
end

local function holderSize(X)
	if X.Variant == "default" then return UDim2.new(1, 0, 0, 45) end
	if X.Variant == "floating" then
		return X.Orient == "v" and UDim2.new(1, 0, 0, 45) or UDim2.new(0, 230, 1, 0)
	end
	if X.Variant == "icons" then
		return X.Orient == "v" and UDim2.new(1, 0, 0, 40) or UDim2.new(0, 40, 1, 0)
	end
	return UDim2.new(1, 0, 0, 40) -- iconstext
end

applySearch = function()
	local q = searchQuery:lower()
	for _, e in ipairs(Tabs) do
		if e.Holder then
			e.Holder.Visible = q == "" or e.Host.Name:lower():find(q, 1, true) ~= nil
		end
	end
end

selectFirstMatch = function()
	local q = searchQuery:lower()
	for _, e in ipairs(Tabs) do
		if q == "" or e.Host.Name:lower():find(q, 1, true) then
			selectOnly(e)
			return
		end
	end
end

local function showTip(e)
	local X = Explorer
	if e.Dead or X.Mode ~= "icon" or not e.Button or not e.Button.Parent then return end
	local i = indexOf(e)
	Tip.Text = e.Host.Name .. ((i and i <= 9) and ("   [Ctrl+" .. i .. "]") or "")
	local p, sz = e.Button.AbsolutePosition, e.Button.AbsoluteSize
	local side = X.Side
	if side == "left" then
		Tip.AnchorPoint = Vector2.new(0, 0.5)
		Tip.Position = UDim2.fromOffset(p.X + sz.X + 10, p.Y + sz.Y / 2)
	elseif side == "right" then
		Tip.AnchorPoint = Vector2.new(1, 0.5)
		Tip.Position = UDim2.fromOffset(p.X - 10, p.Y + sz.Y / 2)
	elseif side == "top" then
		Tip.AnchorPoint = Vector2.new(0.5, 0)
		Tip.Position = UDim2.fromOffset(p.X + sz.X / 2, p.Y + sz.Y + 10)
	else
		Tip.AnchorPoint = Vector2.new(0.5, 1)
		Tip.Position = UDim2.fromOffset(p.X + sz.X / 2, p.Y - 10)
	end
	Tip.Visible = true
end

local function fadeTarget(f)
	if f[3] == "T" then return Theme.Transparency end
	return f[3]
end

-- (пере)собирает визуал таба под текущий Explorer; состояние (Active/Host) живёт в e
buildTabVisual = function(e)
	local X = Explorer
	if e.Holder then e.Holder:Destroy() end
	for _, c in ipairs(e.VConns) do c:Disconnect() end
	e.VConns = {}
	e.Fade = {}
	e.Introduced = false
	e.SetIcon, e.SetName = nil, nil

	local holder = new("Frame", {
		Name = "Tab" .. e.Id, Size = holderSize(X), LayoutOrder = indexOf(e) or e.Id,
		BackgroundTransparency = 1, BorderSizePixel = 0, Parent = X.TabParent,
	})
	local btn = button(holder, "ScriptGui", X.Mode == "text" and e.Host.Name or "", UDim2.fromScale(1, 1), 0,
		{ role = "sub", sp = INNER })
	btn.Visible = false -- появится в playIntro
	local st = btn:FindFirstChildOfClass("UIStroke")
	e.Holder, e.Button, e.Stroke = holder, btn, st
	table.insert(e.Fade, { btn, "BackgroundTransparency", "T" })

	if X.Mode == "text" then
		table.insert(e.Fade, { btn, "TextTransparency", 0 })
		e.SetName = function(n) btn.Text = n end
	else
		local rightSide = X.Side == "right"
		local nm
		local img, ltr, update
		if X.Mode == "icon" then
			img, ltr, update = makeIcon(btn, "ImageLabel", UDim2.fromScale(1, 1), 0, nil, "")
		else
			listLayout(btn, FD.Horizontal, HA.Left)
			img, ltr, update = makeIcon(btn, "TabIconLabel", UDim2.fromOffset(30, 30), rightSide and 1 or 0, nil, "")
			nm = new("TextLabel", {
				Name = "TabNameLabel", Text = e.Host.Name, Size = UDim2.fromOffset(135, 30), LayoutOrder = rightSide and 0 or 1,
				BackgroundTransparency = 1, TextScaled = true, TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left, Parent = btn,
			})
			paint(nm, "TextColor3", "text")
			setFont(nm, FONT_MAIN)
			table.insert(e.Fade, { nm, "TextTransparency", 0 })
		end
		table.insert(e.Fade, { img, "ImageTransparency", 0 })
		table.insert(e.Fade, { ltr, "TextTransparency", 0 })
		local function applyIcon()
			update(e.Host:GetAttribute("SGSIcon"), e.Host.Name:sub(1, 1):upper())
		end
		applyIcon()
		e.SetIcon = applyIcon
		e.SetName = function(n)
			if nm then nm.Text = n end
			applyIcon()
		end
	end

	table.insert(e.VConns, btn.MouseButton1Click:Connect(function()
		local multi = UIS:IsKeyDown(Enum.KeyCode.LeftControl) or UIS:IsKeyDown(Enum.KeyCode.RightControl)
		selectTab(e, not multi)
	end))

	if X.Mode == "icon" then
		table.insert(e.VConns, btn.MouseEnter:Connect(function()
			tipSeq += 1
			local my = tipSeq
			task.delay(0.25, function()
				if tipSeq == my then showTip(e) end
			end)
		end))
		table.insert(e.VConns, btn.MouseLeave:Connect(hideTip))
	end

	applySearch()
	if uiOpen and explorerVisible then playIntro(e) end
end

playIntro = function(e)
	if e.Introduced or e.Dead then return end
	e.Introduced = true
	task.spawn(function()
		RS.Heartbeat:Wait() -- ждём пока UIListLayout посчитает позицию
		if e.Dead or not e.Button or not e.Button.Parent then return end
		local scroll = Explorer.TabParent
		if Explorer.Orient == "v" then
			local rel = e.Holder.AbsolutePosition.Y - scroll.AbsolutePosition.Y
			local dist = math.clamp(scroll.AbsoluteSize.Y - rel + 20, 80, 400)
			e.Button.Position = UDim2.fromOffset(0, dist)
		else
			local rel = e.Holder.AbsolutePosition.X - scroll.AbsolutePosition.X
			local dist = math.clamp(scroll.AbsoluteSize.X - rel + 20, 80, 400)
			e.Button.Position = UDim2.fromOffset(dist, 0)
		end
		for _, f in ipairs(e.Fade) do f[1][f[2]] = 1 end
		e.Button.Visible = true
		-- Back/Out: прилетает снизу (сбоку у горизонтальных), проскакивает мимо слота и откатывается обратно
		tw(e.Button, 0.7, { Position = UDim2.fromOffset(0, 0) }, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
		for _, f in ipairs(e.Fade) do tw(f[1], 0.3, { [f[2]] = fadeTarget(f) }) end
		tabVisual(e, 0.3)
	end)
end

-- перестановка таба: FLIP-анимация (запоминаем позиции, меняем порядок, возвращаем кнопки плавно на место)
local function moveTab(e, index)
	local cur = indexOf(e)
	if not cur then return false end
	index = math.clamp(math.floor(index), 1, #Tabs)
	if index == cur then return true end

	local before = {}
	for _, o in ipairs(Tabs) do
		if o.Holder and o.Holder.Parent then before[o] = o.Holder.AbsolutePosition end
	end
	table.remove(Tabs, cur)
	table.insert(Tabs, index, e)
	reindex()

	task.spawn(function()
		RS.Heartbeat:Wait()
		for _, o in ipairs(Tabs) do
			if o.Introduced and not o.Dead and o.Button and o.Button.Parent and before[o] then
				local d = before[o] - o.Holder.AbsolutePosition
				if d.Magnitude > 1 then
					o.Button.Position = UDim2.fromOffset(d.X, d.Y)
					tw(o.Button, 0.5, { Position = UDim2.fromOffset(0, 0) }, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
				end
			end
		end
	end)
	Events.TabMoved:Fire(e.Host, index)
	return true
end

local function removeTab(e)
	if e.Dead then return end
	e.Dead = true
	hideTip()
	local i = indexOf(e)
	if i then table.remove(Tabs, i) end
	if currentTab == e then currentTab = nil end
	for _, c in ipairs(e.Conns) do c:Disconnect() end
	for _, c in ipairs(e.VConns) do c:Disconnect() end
	reindex()
	Events.TabRemoved:Fire(e.Host)
	local holder = e.Holder
	if Destroyed or not holder or not holder.Parent then return end
	for _, f in ipairs(e.Fade) do tw(f[1], 0.25, { [f[2]] = 1 }) end
	tw(e.Stroke, 0.25, { Transparency = 1 })
	local hs = holder.Size
	local goal = Explorer.Orient == "v"
		and UDim2.new(hs.X.Scale, hs.X.Offset, 0, 0)
		or UDim2.new(0, 0, hs.Y.Scale, hs.Y.Offset)
	local t = tw(holder, 0.3, { Size = goal }, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
	t.Completed:Connect(function() holder:Destroy() end)
end

local function register(host, extraConns, icon)
	tabCounter += 1
	host.Visible = false
	host:SetAttribute("SGS", true)
	if icon ~= nil then host:SetAttribute("SGSIcon", icon) end

	local e = {
		Id = tabCounter, Host = host, Active = false, Introduced = false, Dead = false,
		Conns = extraConns or {}, VConns = {}, Fade = {},
	}
	table.insert(Tabs, e)
	buildTabVisual(e)

	table.insert(e.Conns, host:GetPropertyChangedSignal("Name"):Connect(function()
		if e.SetName then e.SetName(host.Name) end
		applySearch()
	end))
	table.insert(e.Conns, host:GetAttributeChangedSignal("SGSIcon"):Connect(function()
		if e.SetIcon then e.SetIcon() end
	end))
	-- скрипты любят ScreenGui.Parent = CoreGui — возвращаем хост в Container; nil = Destroy -> убираем таб
	table.insert(e.Conns, host.AncestryChanged:Connect(function(_, parent)
		if e.Dead or Destroyed or parent == Container then return end
		if parent == nil then
			removeTab(e)
		else
			task.defer(function()
				if not e.Dead and not Destroyed then host.Parent = Container end
			end)
		end
	end))

	host.Parent = Container
	if uiOpen and explorerVisible then playIntro(e) end
	Events.TabAdded:Fire(host)

	local anyActive = false
	for _, o in ipairs(Tabs) do
		if o.Active then anyActive = true end
	end
	if not anyActive then
		setActive(e, true)
		markCurrent(e)
	end
	return host
end

local function findTab(target)
	for _, e in ipairs(Tabs) do
		if e.Host == target or e.Host.Name == target then return e end
	end
	return nil
end

-- Ctrl+Tab / Ctrl+Shift+Tab
local function cycleTab(dir)
	if #Tabs == 0 then return end
	local cur = currentTab and indexOf(currentTab)
	if not cur then
		for i, o in ipairs(Tabs) do
			if o.Active then cur = i break end
		end
	end
	cur = cur or 0
	local nxt = ((cur - 1 + dir) % #Tabs) + 1
	selectOnly(Tabs[nxt])
end

-- Ctrl+F: фокус в поиск (Explorer, где он есть)
local function focusSearch()
	local box = Explorer and Explorer.Search
	if not box then return false end
	local keep = box.Text
	task.defer(function()
		box:CaptureFocus()
		task.wait(0.03)
		if box.Text ~= keep then box.Text = keep end -- убираем "f", попавшее в поле от самого хоткея
	end)
	return true
end

local function applyTheme()
	repaint()
	if Container.Visible and uiOpen then Container.BackgroundTransparency = Theme.Transparency end
	if Explorer then Explorer.SetSettingsOpen(settingsOpen) end
	for _, e in ipairs(Tabs) do tabVisual(e, 0.15) end
	for _, r in ipairs(themeRefresh) do r() end
	Events.ThemeChanged:Fire(Theme)
end

------------------------------------------------------------------ settings rows
refreshTexts = function()
	if Explorer and Explorer.Hint then
		Explorer.Hint.Text = "Keybind show/hide " .. fmtCombo(Config.Keybinds.Explorer)
	end
end

local function flash(strokeObj, color)
	strokeObj.Color = color
	strokeObj.Transparency = 0.2
	tw(strokeObj, 0.7, { Color = Theme.Stroke, Transparency = 0.8 }, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
end

-- общий ряд: [label (title)] + TextBox + Apply. handle(text) -> ok, msg. labelText=nil -> без label
-- возвращает refresh() — перечитать placeholder
local function inputRow(parent, labelName, labelText, boxName, applyName, firstOrder, placeholder, handle)
	if labelText then
		label(parent, labelName, labelText, UDim2.new(1, 0, 0, 35), firstOrder)
	end
	local box = new("TextBox", {
		Name = boxName, Size = UDim2.new(0.5, -3, 0, 40), LayoutOrder = firstOrder + 1, BorderSizePixel = 0,
		PlaceholderColor3 = Color3.fromRGB(128, 128, 128),
		TextScaled = true, TextWrapped = true, ClearTextOnFocus = false, Text = "", Parent = parent,
	})
	paint(box, "BackgroundColor3", "btn", true)
	paint(box, "TextColor3", "text")
	setFont(box, FONT_MAIN)
	corner(box); pad(box, 5)
	local boxStroke = stroke(box)
	local apply = button(parent, applyName, "Apply", UDim2.new(0.5, -3, 0, 40), firstOrder + 2,
		{ role = "btn", font = FONT_ALT })

	local function refreshPlaceholder()
		box.PlaceholderText = placeholder()
	end
	refreshPlaceholder()

	local function doApply()
		if box.Text == "" then return end
		local ok, msg = handle(box.Text)
		if ok then
			box.Text = ""
			refreshPlaceholder()
			flash(boxStroke, Theme.Ok)
		else
			flash(boxStroke, Theme.Bad)
			if msg then
				box.Text = ""
				box.PlaceholderText = msg
			end
		end
	end

	apply.MouseButton1Click:Connect(doApply)
	box.FocusLost:Connect(function(enter)
		if enter then doApply() end
	end)
	return refreshPlaceholder
end

-- Theme: Background(+Transparency), SubBackground, Button, Stroke, Scroll, White, Black, Ok, Bad
local function themeColorRow(key, title, first)
	local r = inputRow(ThemeFrame, key .. "Label", title, key .. "Box", key .. "Button", first,
		function() return "(current " .. fmtColor(Theme[key]) .. ")" end,
		function(text)
			local c = parseColor(text)
			if not c then return false, "(r,g,b | #rrggbb)" end
			Theme[key] = c
			saveConfig()
			applyTheme()
			return true
		end)
	table.insert(themeRefresh, r)
end

themeColorRow("Background", "Background", 1)
table.insert(themeRefresh, inputRow(ThemeFrame, "TransparencyLabel", nil, "BackgoundTransparencyBox", "BackgoundTransparencyButton", 3,
	function() return "(transparency current " .. tostring(math.floor(Theme.Transparency * 100 + 0.5) / 100) .. ")" end,
	function(text)
		local n = tonumber(text)
		if not n then return false, "(0 .. 1)" end
		Theme.Transparency = math.clamp(n, 0, 1)
		saveConfig()
		applyTheme()
		return true
	end))
themeColorRow("SubBackground", "SubBackground (label bg)", 6)
themeColorRow("Button", "Button", 9)
themeColorRow("Stroke", "Stroke", 12)
themeColorRow("Scroll", "Scroll", 15)
themeColorRow("White", "White", 18)
themeColorRow("Black", "Black", 21)
themeColorRow("Ok", "Ok", 24)
themeColorRow("Bad", "Bad", 27)

local function resetTheme()
	for k, v in pairs(DEFAULT_THEME) do Theme[k] = v end
	saveConfig()
	applyTheme()
end
do
	local rb = button(ThemeFrame, "ResetThemeButton", "Reset theme", UDim2.new(1, 0, 0, 40), 30, { role = "btn", font = FONT_ALT })
	rb.MouseButton1Click:Connect(resetTheme)
end

local function bindRow(bindName, labelName, labelText, boxName, applyName, firstOrder)
	inputRow(KeybindFrame, labelName, labelText, boxName, applyName, firstOrder,
		function() return "(current " .. fmtCombo(Config.Keybinds[bindName]) .. ")" end,
		function(text)
			local combo = parseCombo(text)
			if not combo then return false end
			for other, c in pairs(Config.Keybinds) do
				if other ~= bindName and sameCombo(c, combo) then
					return false, "(already used by " .. other .. ")"
				end
			end
			Config.Keybinds[bindName] = combo
			saveConfig()
			refreshTexts()
			return true
		end)
end

bindRow("Explorer", "Explorer", "Explorer", "ExplorerKeybindEnterBox", "ExplorerKeybindApplyButton", 1)
bindRow("Ui", "SGSKeybindLabel", "SGS Ui", "SGSKeybindEnterBox", "SGSKeybindApplyButton", 4)

-- Interface variants: 4 кнопки (Old v1 / floating v1.1 / Icons / Icons and Text), активная подсвечена
local variantButtons = {}
local alignRefresh

local function refreshVariantButtons()
	for key, b in pairs(variantButtons) do
		local st = b:FindFirstChildOfClass("UIStroke")
		local on = key == Config.Variant
		tw(st, 0.2, { Color = on and Theme.White or Theme.Stroke, Transparency = on and 0.4 or 0.8 })
	end
end
table.insert(themeRefresh, function() refreshVariantButtons() end)

local function setVariant(v)
	if v == Config.Variant then return true end
	Config.Variant = v
	Config.Alignment = fitSide(v, Config.Alignment)
	saveConfig()
	refreshVariantButtons()
	if alignRefresh then alignRefresh() end
	applyLayout()
	return true
end

local function setAlignment(side)
	if not sideAllowed(Config.Variant, side) then return false end
	if side ~= Config.Alignment then
		Config.Alignment = side
		saveConfig()
		applyLayout()
	end
	return true
end

for i, key in ipairs(VARIANT_ORDER) do
	local def = VARIANTS[key]
	local b = button(VariantFrame, def.Button, def.Title, UDim2.new(1, 0, 0, 40), 2 + i,
		{ role = "btn", font = FONT_ALT, pad = 10 })
	variantButtons[key] = b
	b.MouseButton1Click:Connect(function() setVariant(key) end)
end
refreshVariantButtons()

-- Aligment: сторона Explorer (left / right / top / bottom — что из этого доступно, решает variant)
alignRefresh = inputRow(AlignFrame, "Explorer", "Explorer", "ExplorerKeybindEnterBox", "ExplorerKeybindApplyButton", 1,
	function() return "(current " .. Config.Alignment .. ")" end,
	function(text)
		local side = parseSide(text)
		if not side then
			return false, "(" .. table.concat(VARIANTS[Config.Variant].Sides, " / ") .. ")"
		end
		if not sideAllowed(Config.Variant, side) then
			return false, "(this variant: " .. table.concat(VARIANTS[Config.Variant].Sides, " / ") .. ")"
		end
		return setAlignment(side)
	end)

-- Input: переключатели захвата ввода
do
	local function toggleRow(name, order, title, key)
		local b = button(InputFrame, name, "", UDim2.new(1, 0, 0, 40), order, { role = "btn", font = FONT_ALT, pad = 10 })
		local function refresh()
			b.Text = title .. ": " .. (Config[key] and "ON" or "OFF")
		end
		refresh()
		b.MouseButton1Click:Connect(function()
			Config[key] = not Config[key]
			saveConfig()
			refresh()
			applyCapture()
		end)
	end
	toggleRow("UnlockCursorButton", 1, "Unlock cursor", "UnlockCursor")

end

refreshTexts()
Explorer.SetSettingsOpen(false)

------------------------------------------------------------------ input
local conns = {}
table.insert(conns, UIS.InputBegan:Connect(function(input)
	if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
	if UIS:GetFocusedTextBox() then return end

	local bestName, bestLen = nil, 0
	for name, combo in pairs(Config.Keybinds) do
		if #combo > bestLen and matches(combo, input.KeyCode) then
			bestName, bestLen = name, #combo -- самый специфичный бинд побеждает (Ctrl+\ бьёт \)
		end
	end

	if bestName == "Ui" then
		toggleUi()
		return
	elseif bestName == "Explorer" then
		toggleExplorer()
		return
	end

	-- хоткеи табов (как в браузере) — только пока SGS открыт
	if not uiOpen then return end
	local ctrl, shift, alt = groupDown("ctrl"), groupDown("shift"), groupDown("alt")
	local kc = input.KeyCode
	if ctrl and not alt then
		local n = DIGITS[kc]
		local f = FKEYS[kc]
		if n and not shift then
			local e = (n == 9) and Tabs[#Tabs] or Tabs[n] -- Ctrl+9 = последний, как в браузере
			if e then selectOnly(e) end
		elseif f and not shift then
			if currentTab then moveTab(currentTab, f) end -- Ctrl+F2: текущий таб -> позиция 2
		elseif kc == KC.Tab then
			cycleTab(shift and -1 or 1)
		elseif kc == KC.F and not shift then
			focusSearch()
		end
	end
end))

------------------------------------------------------------------ public api
local SGSInstance = setmetatable({}, {
	__index = function(_, k) return RealInstance[k] end,
})

function SGSInstance.new(class, parent)
	if class == "ScreenGui" then
		local host = new("Frame", {
			Name = "ScreenGui", Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, BorderSizePixel = 0,
		})
		return register(host)
	end
	return RealInstance.new(class, parent)
end

local SGS = {
	Version = "1.2",
	Alive = true,
	Instance = SGSInstance,
	Config = Config,
	Theme = Theme,
	Icons = ICONS,
	Events = Events,
	PassKeys = PassKeys,
	Gui = Gui,
	Container = Container,
}

function SGS:Mount(obj, name, icon)
	assert(typeof(obj) == "Instance", "SGS:Mount expects an Instance")
	local host, extra
	if obj:IsA("ScreenGui") then
		host = new("Frame", {
			Name = name or obj.Name, Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, BorderSizePixel = 0,
		})
		for _, ch in ipairs(obj:GetChildren()) do ch.Parent = host end
		extra = { obj.ChildAdded:Connect(function(ch) ch.Parent = host end) }
		pcall(function() obj.Enabled = false end)
	elseif obj:IsA("GuiObject") then
		host = obj
		if name then host.Name = name end
	else
		error("SGS:Mount expects ScreenGui or GuiObject", 2)
	end
	return register(host, extra, icon)
end

function SGS:SetIcon(target, image)
	local e = findTab(target)
	if not e then return false end
	e.Host:SetAttribute("SGSIcon", image)
	return true
end

function SGS:Select(target)
	local e = findTab(target)
	if not e then return false end
	selectOnly(e)
	return true
end

function SGS:MoveTab(target, index)
	local e = findTab(target)
	if not e then return false end
	return moveTab(e, index)
end

function SGS:GetTabs()
	local out = {}
	for _, e in ipairs(Tabs) do table.insert(out, e.Host) end
	return out
end

function SGS:SetVariant(v)
	local key = parseVariant(v)
	if not key then return false end
	return setVariant(key)
end

function SGS:SetAlignment(s)
	local side = parseSide(s)
	if not side then return false end
	return setAlignment(side)
end

function SGS:SetTheme(t)
	if type(t) ~= "table" then return false end
	if not setThemeValues(t) then return false end
	saveConfig()
	applyTheme()
	return true
end

function SGS:ResetTheme()
	resetTheme()
end

function SGS:Open() openUi() end
function SGS:Close() closeUi() end
function SGS:Toggle() toggleUi() end

function SGS:Destroy()
	if Destroyed then return end
	Destroyed = true
	self.Alive = false
	uiOpen = false
	applyCapture()
	for _, c in ipairs(conns) do c:Disconnect() end
	for _, e in ipairs({ table.unpack(Tabs) }) do removeTab(e) end
	if Explorer then
		for _, c in ipairs(Explorer.Conns) do c:Disconnect() end
	end
	Gui:Destroy()
	if env.SGS == self then env.SGS = nil end
end

env.SGS = SGS
return SGS
