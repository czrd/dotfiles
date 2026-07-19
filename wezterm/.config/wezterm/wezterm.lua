local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- color scheme
config.color_scheme = "dawnfox"
config.window_frame = {
	inactive_titlebar_bg = "#faf4ed",
	active_titlebar_bg = "#faf4ed",
	inactive_titlebar_fg = "#faf4ed",
	active_titlebar_fg = "#faf4ed",
	inactive_titlebar_border_bottom = "#faf4ed",
	active_titlebar_border_bottom = "#faf4ed",
	button_fg = "#575279",
	button_bg = "#faf4ed",
	button_hover_fg = "#575279",
	button_hover_bg = "#faf4ed",
}

-- font
config.font_size = 15
config.font = wezterm.font_with_fallback({
	"JetBrains Mono",
	"FiraMono Nerd Font",
	"Noto Sans CJK JP",
})

-- decoration
config.enable_wayland = true
config.enable_tab_bar = false
config.scrollback_lines = 100000

-- window
config.window_close_confirmation = "NeverPrompt"

return config
