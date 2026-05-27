local ok, bl = pcall(require, "bufferline")
if not ok then
  print "bufferline is not installed."
  return
end

local zero = require("zero").get_palette()

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
      fg = zero.bg,
    },
    indicator_visible = {
      fg = zero.bg,
    },
    separator = {
      fg = zero.bg,
    },
    separator_selected = {
      fg = zero.bg,
    },
    separator_visible = {
      fg = zero.bg,
    },
    fill = {
      fg = zero.bg,
    },
    background = {
      bg = zero.bg_dark,
    },
  },
}
