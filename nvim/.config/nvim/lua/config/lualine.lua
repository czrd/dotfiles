local ok, ll = pcall(require, "lualine")
if not ok then
  print "lualine is not installed"
  return
end

local catppuccin = require "catppuccin.utils.lualine" "latte"
local palette = require("catppuccin.palettes").get_palette "latte"

local main1_section = { fg = palette.base, bg = palette.lavender, gui = "bold" }
local main2_section = { fg = palette.text, bg = palette.crust }
local hidden_section = { fg = palette.base, bg = palette.base }
local sub1_section = { fg = palette.text, bg = palette.surface2 }
local sub2_section = { fg = palette.text, bg = palette.surface1 }
local sub3_section = { fg = palette.text, bg = palette.surface0 }

catppuccin.normal.a = main1_section
catppuccin.normal.b = main2_section
catppuccin.normal.c = hidden_section
catppuccin.normal.x = sub1_section
catppuccin.normal.y = sub2_section
catppuccin.normal.z = sub3_section

catppuccin.command.a = main1_section
catppuccin.command.b = main2_section
catppuccin.command.c = hidden_section
catppuccin.command.x = sub1_section
catppuccin.command.y = sub2_section
catppuccin.command.z = sub3_section

catppuccin.terminal.a = main1_section
catppuccin.terminal.b = main2_section
catppuccin.terminal.c = hidden_section
catppuccin.terminal.x = sub1_section
catppuccin.terminal.y = sub2_section
catppuccin.terminal.z = sub3_section

catppuccin.insert.a = main1_section
catppuccin.insert.b = main2_section
catppuccin.insert.c = hidden_section
catppuccin.insert.x = sub1_section
catppuccin.insert.y = sub2_section
catppuccin.insert.z = sub3_section

catppuccin.visual.a = main1_section
catppuccin.visual.b = main2_section
catppuccin.visual.c = hidden_section
catppuccin.visual.x = sub1_section
catppuccin.visual.y = sub2_section
catppuccin.visual.z = sub3_section

catppuccin.replace.a = main1_section
catppuccin.replace.b = main2_section
catppuccin.replace.c = hidden_section
catppuccin.replace.x = sub1_section
catppuccin.replace.y = sub2_section
catppuccin.replace.z = sub3_section

catppuccin.inactive.a = main1_section
catppuccin.inactive.b = main2_section
catppuccin.inactive.c = hidden_section
catppuccin.inactive.x = sub1_section
catppuccin.inactive.y = sub2_section
catppuccin.inactive.z = sub3_section

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
      { "encoding", separator = { left = "", right = "" }, right_padding = 3 },
    },
    lualine_y = {
      { "progress", separator = { left = "", right = "" }, right_padding = 3 },
    },
    lualine_z = {
      { "filetype", separator = { left = "", right = "" } },
      { "lsp_status", separator = { left = "", right = "" } },
    },
  },
  options = {
    theme = catppuccin,
    globalstatus = true,
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
  },
}
