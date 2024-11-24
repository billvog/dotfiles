local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 16.0

local my_theme = wezterm.color.get_default_colors()
my_theme.background = "#111111"

config.color_schemes = {
	["Bill's Theme"] = my_theme,
}

config.color_scheme = "Bill's Theme"

config.hide_tab_bar_if_only_one_tab = true

config.keys = {
	{
		key = "LeftArrow",
		mods = "CMD",
		action = wezterm.action({ SendString = "\x1bOH" }),
	},
	{
		key = "RightArrow",
		mods = "CMD",
		action = wezterm.action({ SendString = "\x1bOF" }),
	},
	-- Open settings with 'CMD+,'
	{
		key = ",",
		mods = "CMD",
		action = wezterm.action.SpawnCommandInNewTab({
			cwd = "$HOME",
			args = { "/opt/homebrew/bin/nvim", ".config/wezterm/wezterm.lua" },
		}),
	},
}

return config
