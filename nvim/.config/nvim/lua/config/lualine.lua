local ok, ll = pcall(require, "lualine")
if not ok then
  print "lualine is not installed"
  return
end

local palette = require("catppuccin.palettes").get_palette "latte"

local base = {
  a = { fg = palette.base, bg = palette.lavender, gui = "bold" },
  b = { fg = palette.text, bg = palette.crust },
  c = { fg = palette.base, bg = palette.base },
  x = { fg = palette.text, bg = palette.crust },
  y = { fg = palette.text, bg = palette.crust },
  z = { fg = palette.text, bg = palette.crust },
}

local theme = {
  normal = base,
  command = base,
  terminal = base,
  intert = base,
  visual = base,
  replace = base,
  inactive = base,
}

ll.setup {
  sections = {
    lualine_a = {
      { "mode", separator = { left = "", right = "" }, right_padding = 3 },
    },
    lualine_b = {
      "branch",
      "filename",
      "diff",
      { "diagnostics", symbols = { error = " ", warn = " ", info = " ", hint = " " } },
    },
    lualine_c = {},
    lualine_x = {
      { "progress", separator = { left = "", right = "" }, right_padding = 3 },
    },
    lualine_y = {
      { "encoding", separator = { left = "", right = "" }, right_padding = 3 },
    },
    lualine_z = {
      { "filetype", separator = { left = "", right = "" } },
      { "lsp_status", separator = { left = "", right = "" } },
    },
  },
  options = {
    theme = theme,
    globalstatus = true,
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
  },
}
