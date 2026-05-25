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
		button_fg = "#f4f5f7",
		button_bg = "#141519",
		button_hover_fg = "#f4f5f7",
		button_hover_bg = "#141519",
	}
else
	config.color_scheme = "zero-light"
	config.window_frame = {
		inactive_titlebar_bg = "#f4f5f7",
		active_titlebar_bg = "#f4f5f7",
		inactive_titlebar_fg = "#f4f5f7",
		active_titlebar_fg = "#f4f5f7",
		inactive_titlebar_border_bottom = "#f4f5f7",
		active_titlebar_border_bottom = "#f4f5f7",
		button_fg = "#9ba2ad",
		button_bg = "#f4f5f7",
		button_hover_fg = "#9ba2ad",
		button_hover_bg = "#f4f5f7",
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
