local ok, ll = pcall(require, "lualine")
if not ok then
  print "lualine is not installed"
  return
end

local theme = require "catppuccin.utils.lualine" "latte"
local palette = require("catppuccin.palettes").get_palette "latte"

local main1_section = { fg = palette.base, bg = palette.green, gui = "bold" }
local main2_section = { fg = palette.text, bg = palette.crust }
local sub1_section = { fg = palette.text, bg = palette.crust }
local sub2_section = { fg = palette.text, bg = palette.crust }
local sub3_section = { fg = palette.text, bg = palette.crust }
local hidden_section = { fg = palette.base, bg = palette.base }

theme.normal.a = main1_section
theme.normal.b = main2_section
theme.normal.c = hidden_section
theme.normal.x = sub1_section
theme.normal.y = sub2_section
theme.normal.z = sub3_section

theme.command.a = main1_section
theme.command.b = main2_section
theme.command.c = hidden_section
theme.command.x = sub1_section
theme.command.y = sub2_section
theme.command.z = sub3_section

theme.terminal.a = main1_section
theme.terminal.b = main2_section
theme.terminal.c = hidden_section
theme.terminal.x = sub1_section
theme.terminal.y = sub2_section
theme.terminal.z = sub3_section

theme.insert.a = main1_section
theme.insert.b = main2_section
theme.insert.c = hidden_section
theme.insert.x = sub1_section
theme.insert.y = sub2_section
theme.insert.z = sub3_section

theme.visual.a = main1_section
theme.visual.b = main2_section
theme.visual.c = hidden_section
theme.visual.x = sub1_section
theme.visual.y = sub2_section
theme.visual.z = sub3_section

theme.replace.a = main1_section
theme.replace.b = main2_section
theme.replace.c = hidden_section
theme.replace.x = sub1_section
theme.replace.y = sub2_section
theme.replace.z = sub3_section

theme.inactive.a = main1_section
theme.inactive.b = main2_section
theme.inactive.c = hidden_section
theme.inactive.x = sub1_section
theme.inactive.y = sub2_section
theme.inactive.z = sub3_section

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
