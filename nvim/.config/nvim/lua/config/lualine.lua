local ok, ll = pcall(require, "lualine")
if not ok then
  print "lualine is not installed"
  return
end

local palette = require("nightfox.palette").load "dawnfox"

local base = {
  a = { fg = palette.bg1, bg = palette.green.bright, gui = "bold" },
  b = { fg = palette.fg1, bg = palette.bg2 },
  c = { fg = palette.bg1, bg = palette.bg1 },
  x = { fg = palette.fg1, bg = palette.bg2 },
  y = { fg = palette.fg1, bg = palette.bg2 },
  z = { fg = palette.fg1, bg = palette.bg2 },
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
