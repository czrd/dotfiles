local ok, ll = pcall(require, "lualine")
if not ok then
  print "lualine is not installed"
  return
end

local palette = require("catppuccin.palettes").get_palette "latte"

local catppuccin = require "catppuccin.utils.lualine" "latte"
catppuccin.normal.a.fg = palette.text
catppuccin.normal.a.bg = palette.surface2
catppuccin.normal.b.fg = palette.text
catppuccin.normal.b.bg = palette.surface1
catppuccin.normal.c.bg = palette.base

catppuccin.command.a.fg = palette.text
catppuccin.command.a.bg = palette.surface2
catppuccin.command.b.fg = palette.text
catppuccin.command.b.bg = palette.surface1

catppuccin.terminal.a.fg = palette.text
catppuccin.terminal.a.bg = palette.surface2
catppuccin.terminal.b.fg = palette.text
catppuccin.terminal.b.bg = palette.surface1

catppuccin.insert.a.fg = palette.text
catppuccin.insert.a.bg = palette.surface2
catppuccin.insert.b.fg = palette.text
catppuccin.insert.b.bg = palette.surface1

catppuccin.visual.a.fg = palette.text
catppuccin.visual.a.bg = palette.surface2
catppuccin.visual.b.fg = palette.text
catppuccin.visual.b.bg = palette.surface1

catppuccin.replace.a.fg = palette.text
catppuccin.replace.a.bg = palette.surface2
catppuccin.replace.b.fg = palette.text
catppuccin.replace.b.bg = palette.surface1

catppuccin.inactive.a.fg = palette.text
catppuccin.inactive.a.bg = palette.surface2
catppuccin.inactive.b.fg = palette.text
catppuccin.inactive.b.bg = palette.surface1
catppuccin.inactive.c.bg = palette.base

ll.setup {
  sections = {
    lualine_a = { "mode" },
    lualine_b = {
      "branch",
      "diff",
      { "diagnostics", symbols = { error = " ", warn = " ", info = " ", hint = " " } },
      "filename",
    },
    lualine_c = {},
    lualine_x = { "encoding", "fileformat", "filetype", "progress", "location" },
    lualine_y = {},
    lualine_z = {},
  },
  options = {
    theme = catppuccin,
    globalstatus = true,
  },
}
