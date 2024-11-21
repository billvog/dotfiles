local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 18.0

config.window_background_opacity = 0.9
config.macos_window_background_blur = 20

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
