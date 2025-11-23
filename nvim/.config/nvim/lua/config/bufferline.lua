local ok, bl = pcall(require, "bufferline")
if not ok then
  print "bufferline is not installed."
  return
end

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
      fg = "#eff1f5",
    },
    indicator_visible = {
      fg = "#eff1f5",
    },
    separator = {
      fg = "#eff1f5",
    },
    separator_selected = {
      fg = "#eff1f5",
    },
    separator_visible = {
      fg = "#eff1f5",
    },
    fill = {
      bg = "#eff1f5",
    },
  },
}
