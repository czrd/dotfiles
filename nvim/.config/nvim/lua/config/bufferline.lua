local ok, bl = pcall(require, "bufferline")
if not ok then
  print "bufferline is not installed."
  return
end

local palette = require("nightfox.palette").load "dawnfox"

local invisible = {
  bg = palette.bg1,
  fg = palette.bg1,
}

local normal = {
  bg = { attribute = "bg", highlight = "Normal" },
  fg = { attribute = "fg", highlight = "Normal" },
}

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
    fill = normal,
    background = normal,
    tab = normal,
    tab_selected = normal,
    tab_separator = invisible,
    tab_separator_selected = invisible,
    tab_close = normal,
    close_button = invisible,
    close_button_visible = invisible,
    close_button_selected = invisible,
    buffer_visible = normal,
    buffer_selected = normal,
    numbers = normal,
    numbers_visible = normal,
    numbers_selected = normal,
    diagnostic = normal,
    diagnostic_visible = normal,
    diagnostic_selected = normal,
    hint = normal,
    hint_visible = normal,
    hint_selected = normal,
    hint_diagnostic = normal,
    hint_diagnostic_visible = normal,
    hint_diagnostic_selected = normal,
    info = normal,
    info_visible = normal,
    info_selected = normal,
    info_diagnostic = normal,
    info_diagnostic_visible = normal,
    info_diagnostic_selected = normal,
    warning = normal,
    warning_visible = normal,
    warning_selected = normal,
    warning_diagnostic = normal,
    warning_diagnostic_visible = normal,
    warning_diagnostic_selected = normal,
    error = normal,
    error_visible = normal,
    error_selected = normal,
    error_diagnostic = normal,
    error_diagnostic_visible = normal,
    error_diagnostic_selected = normal,
    modified = normal,
    modified_visible = normal,
    modified_selected = normal,
    duplicate_selected = normal,
    duplicate_visible = normal,
    duplicate = normal,
    separator_selected = invisible,
    separator_visible = invisible,
    separator = invisible,
    indicator_visible = normal,
    indicator_selected = normal,
    pick_selected = normal,
    pick_visible = normal,
    pick = normal,
    offset_separator = invisible,
    trunc_marker = normal,
  },
}
