local ok, bl = pcall(require, "bufferline")
if not ok then
  print "bufferline is not installed."
  return
end

local palette = require("catppuccin.palettes").get_palette "latte"

bl.setup {
  options = {
    show_buffer_close_icons = false,
    show_close_icon = false,
    diagnostics = "nvim_lsp",
    indicator = {
      style = "none",
    },
  },
  highlights = {
    indicator_selected = {
      fg = palette.base,
      bg = palette.base,
    },
    indicator_visible = {
      fg = palette.base,
      bg = palette.base,
    },
    separator = {
      fg = palette.base,
      bg = palette.base,
    },
    separator_selected = {
      fg = palette.base,
      bg = palette.base,
    },
    separator_visible = {
      fg = palette.base,
      bg = palette.base,
    },
    fill = {
      fg = palette.base,
      bg = palette.base,
    },
    background = {
      bg = palette.base,
    },
  },
}
