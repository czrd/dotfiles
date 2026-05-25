local wezterm = require("wezterm")
local mux = wezterm.mux
local config = wezterm.config_builder()

-- color scheme
local appearance = wezterm.gui.get_appearance()
if appearance:find("Dark") then
	config.color_scheme = "zero-dark"
	config.window_frame = {
		inactive_titlebar_bg = "#141519",
		active_titlebar_bg = "#141519",
		inactive_titlebar_fg = "#141519",
		active_titlebar_fg = "#141519",
		inactive_titlebar_border_bottom = "#141519",
		active_titlebar_border_bottom = "#141519",
		button_fg = "#f7f8fa",
		button_bg = "#141519",
		button_hover_fg = "#f7f8fa",
		button_hover_bg = "#141519",
	}
else
	config.color_scheme = "zero-light"
	config.window_frame = {
		inactive_titlebar_bg = "#f7f8fa",
		active_titlebar_bg = "#f7f8fa",
		inactive_titlebar_fg = "#f7f8fa",
		active_titlebar_fg = "#f7f8fa",
		inactive_titlebar_border_bottom = "#f7f8fa",
		active_titlebar_border_bottom = "#f7f8fa",
		button_fg = "#aab0bb",
		button_bg = "#f7f8fa",
		button_hover_fg = "#aab0bb",
		button_hover_bg = "#f7f8fa",
	}
end

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
