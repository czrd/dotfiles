local ok, ll = pcall(require, "lualine")
if not ok then
  print "lualine is not installed"
  return
end

local catppuccin = require "catppuccin.utils.lualine" "latte"
local palette = require("catppuccin.palettes").get_palette "latte"

local main_section = { fg = palette.base, bg = palette.red, gui = "bold" }
local sub_section = { fg = palette.text, bg = palette.crust }
local hidden_section = { fg = palette.base, bg = palette.base }

catppuccin.normal.a = main_section
catppuccin.normal.b = sub_section
catppuccin.normal.c = hidden_section
catppuccin.normal.z = sub_section

catppuccin.command.a = main_section
catppuccin.command.b = sub_section
catppuccin.command.c = hidden_section
catppuccin.command.z = sub_section

catppuccin.terminal.a = main_section
catppuccin.terminal.b = sub_section
catppuccin.terminal.c = hidden_section
catppuccin.terminal.z = sub_section

catppuccin.insert.a = main_section
catppuccin.insert.b = sub_section
catppuccin.insert.c = hidden_section
catppuccin.insert.z = sub_section

catppuccin.visual.a = main_section
catppuccin.visual.b = sub_section
catppuccin.visual.c = hidden_section
catppuccin.visual.z = sub_section

catppuccin.replace.a = main_section
catppuccin.replace.b = sub_section
catppuccin.replace.c = hidden_section
catppuccin.replace.z = sub_section

catppuccin.inactive.a = main_section
catppuccin.inactive.b = sub_section
catppuccin.inactive.c = hidden_section
catppuccin.inactive.z = sub_section

ll.setup {
  sections = {
    lualine_a = {
      { "mode", separator = { left = "", right = "" }, right_padding = 3 },
    },
    lualine_b = {
      "branch",
      "diff",
      { "diagnostics", symbols = { error = " ", warn = " ", info = " ", hint = " " } },
      "filename",
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {
      "encoding",
      "progress",
      "filetype",
    },
  },
  options = {
    theme = catppuccin,
    globalstatus = true,
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
  },
}
