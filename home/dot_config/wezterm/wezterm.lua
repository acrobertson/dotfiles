local wezterm = require("wezterm")
local act = wezterm.action

-- wezterm.gui is not available to the mux server, so take care to
-- do something reasonable when this config is evaluated by the mux
function get_appearance()
	if wezterm.gui then
		return wezterm.gui.get_appearance()
	end
	return "Dark"
end

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "tokyonight"
	else
		return "tokyonight-day"
	end
end

wezterm.on("update-right-status", function(window)
	local workspace = window:active_workspace()

	if workspace == "default" then
		window:set_right_status("")
	else
		window:set_right_status(window:active_workspace())
	end
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

	-- Map meh bindings to ALT for zellij
	{
		key = "c",
		mods = "CTRL|ALT|SHIFT",
		action = act.SendKey({
			key = "c",
			mods = "ALT",
		}),
	},
	{
		key = "r",
		mods = "CTRL|ALT|SHIFT",
		action = act.SendKey({
			key = "r",
			mods = "ALT",
		}),
	},
	{
		key = "p",
		mods = "CTRL|ALT|SHIFT",
		action = act.SendKey({
			key = "p",
			mods = "ALT",
		}),
	},
	{
		key = "m",
		mods = "CTRL|ALT|SHIFT",
		action = act.SendKey({
			key = "m",
			mods = "ALT",
		}),
	},
	{
		key = "t",
		mods = "CTRL|ALT|SHIFT",
		action = act.SendKey({
			key = "t",
			mods = "ALT",
		}),
	},
	{
		key = "v",
		mods = "CTRL|ALT|SHIFT",
		action = act.SendKey({
			key = "v",
			mods = "ALT",
		}),
	},
	{
		key = "f",
		mods = "CTRL|ALT|SHIFT",
		action = act.SendKey({
			key = "f",
			mods = "ALT",
		}),
	},
	{
		key = "s",
		mods = "CTRL|ALT|SHIFT",
		action = act.SendKey({
			key = "s",
			mods = "ALT",
		}),
	},
	{
		key = "z",
		mods = "CTRL|ALT|SHIFT",
		action = act.SendKey({
			key = "z",
			mods = "ALT",
		}),
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
	adjust_window_size_when_changing_font_size = false,
	color_scheme = scheme_for_appearance(get_appearance()),
	font = wezterm.font_with_fallback({
		"Berkeley Mono",
		"MesloLGS Nerd Font Mono",
		"JetBrains Mono",
	}),
	font_size = 15.0,
	hide_tab_bar_if_only_one_tab = true,
	line_height = 1.2,
	window_background_opacity = 0.975,
	--bindings
	leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 },
	keys = key_bindings,
	mouse_bindings = mouse_bindings,
	window_decorations = "RESIZE",
}
