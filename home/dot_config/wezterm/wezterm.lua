local wezterm = require("wezterm")
local act = wezterm.action

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "tokyonight"
	else
		return "tokyonight-day"
	end
end

wezterm.on("update-right-status", function(window, pane)
	window:set_right_status(window:active_workspace())
end)

local key_bindings = {
	-- Send regular leader key
	{
		key = "a",
		mods = "LEADER|CTRL",
		action = act.SendString("\x01"),
	},
	-- Launcher
	{
		key = "l",
		mods = "LEADER|SHIFT",
		action = act.ShowLauncher,
	},
	-- Workspaces
	{
		key = "n",
		mods = "LEADER",
		action = act.SwitchToWorkspace,
	},
	{
		key = "d",
		mods = "LEADER",
		action = act.SwitchToWorkspace({
			name = "default",
		}),
	},
	{
		key = "f",
		mods = "LEADER",
		action = act.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }),
	},
	-- Panes
	{
		key = "w",
		mods = "LEADER",
		action = act.CloseCurrentPane({ confirm = false }),
	},
	{
		key = "s",
		mods = "LEADER",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "v",
		mods = "LEADER",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Right"),
	},
	-- Misc. actions
	{
		key = "c",
		mods = "LEADER",
		action = act.ActivateCopyMode,
	},
	{
		key = "q",
		mods = "LEADER",
		action = act.QuickSelect,
	},
}

local mouse_bindings = {
	-- Ctrl-click will open the link under the mouse cursor
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = act.OpenLinkAtMouseCursor,
	},
}

return {
	-- appearance
	color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
	font = wezterm.font_with_fallback({
		"Berkeley Mono",
		"MesloLGS Nerd Font Mono",
		"JetBrains Mono",
	}),
	font_size = 14.0,
	line_height = 1.2,
	window_background_opacity = 0.975,
	--bindings
	leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 },
	keys = key_bindings,
	mouse_bindings = mouse_bindings,
	window_decorations = "RESIZE",
}
