local wezterm = require("wezterm")
local mux = wezterm.mux
local config = wezterm.config_builder()

config.font_size = 15
config.color_scheme = "Catppuccin Latte"
config.font = wezterm.font("JetBrains Mono")
config.enable_tab_bar = false
config.enable_wayland = true
config.scrollback_lines = 100000
config.window_close_confirmation = "NeverPrompt"
config.window_frame = {
	inactive_titlebar_bg = "#eff1f5",
	active_titlebar_bg = "#eff1f5",
	inactive_titlebar_fg = "#eff1f5",
	active_titlebar_fg = "#eff1f5",
	inactive_titlebar_border_bottom = "#eff1f5",
	active_titlebar_border_bottom = "#eff1f5",
	button_fg = "#acb0be",
	button_bg = "#eff1f5",
	button_hover_fg = "#acb0be",
	button_hover_bg = "#eff1f5",
}

wezterm.on("gui-startup", function(cmd)
	local _, _, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return config
