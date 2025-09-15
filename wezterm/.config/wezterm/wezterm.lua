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

wezterm.on("gui-startup", function(cmd)
	local _, _, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return config
