local wezterm = require("wezterm")
local mux = wezterm.mux
local config = wezterm.config_builder()

-- color scheme
config.color_scheme = "catppuccin-latte"
config.window_frame = {
	inactive_titlebar_bg = "#eff1f5",
	active_titlebar_bg = "#eff1f5",
	inactive_titlebar_fg = "#eff1f5",
	active_titlebar_fg = "#eff1f5",
	inactive_titlebar_border_bottom = "#eff1f5",
	active_titlebar_border_bottom = "#eff1f5",
	button_fg = "#ccd0da",
	button_bg = "#eff1f5",
	button_hover_fg = "#ccd0da",
	button_hover_bg = "#eff1f5",
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

wezterm.on("gui-startup", function(cmd)
	local _, _, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return config
