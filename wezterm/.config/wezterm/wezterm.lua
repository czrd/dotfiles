local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font_size = 15
config.color_scheme = "Catppuccin Latte"
config.font = wezterm.font("JetBrains Mono")
config.enable_tab_bar = false
config.enable_wayland = true
config.scrollback_lines = 99999

return config
