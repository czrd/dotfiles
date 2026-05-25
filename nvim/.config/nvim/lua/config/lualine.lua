local ok, ll = pcall(require, "lualine")
if not ok then
  print "lualine is not installed"
  return
end

local zero = require "zero.utils.lualine"
local palette = require("zero").get_palette()

local main1_section = { fg = palette.bg, bg = palette.green, gui = "bold" }
local main2_section = { fg = palette.fg, bg = palette.bg_dark }
local sub1_section = { fg = palette.fg, bg = palette.bg_dark }
local sub2_section = { fg = palette.fg, bg = palette.bg_dark }
local sub3_section = { fg = palette.fg, bg = palette.bg_dark }
local hidden_section = { fg = palette.bg, bg = palette.bg }

zero.normal.a = main1_section
zero.normal.b = main2_section
zero.normal.c = hidden_section
zero.normal.x = sub1_section
zero.normal.y = sub2_section
zero.normal.z = sub3_section

zero.command.a = main1_section
zero.command.b = main2_section
zero.command.c = hidden_section
zero.command.x = sub1_section
zero.command.y = sub2_section
zero.command.z = sub3_section

zero.terminal.a = main1_section
zero.terminal.b = main2_section
zero.terminal.c = hidden_section
zero.terminal.x = sub1_section
zero.terminal.y = sub2_section
zero.terminal.z = sub3_section

zero.insert.a = main1_section
zero.insert.b = main2_section
zero.insert.c = hidden_section
zero.insert.x = sub1_section
zero.insert.y = sub2_section
zero.insert.z = sub3_section

zero.visual.a = main1_section
zero.visual.b = main2_section
zero.visual.c = hidden_section
zero.visual.x = sub1_section
zero.visual.y = sub2_section
zero.visual.z = sub3_section

zero.replace.a = main1_section
zero.replace.b = main2_section
zero.replace.c = hidden_section
zero.replace.x = sub1_section
zero.replace.y = sub2_section
zero.replace.z = sub3_section

zero.inactive.a = main1_section
zero.inactive.b = main2_section
zero.inactive.c = hidden_section
zero.inactive.x = sub1_section
zero.inactive.y = sub2_section
zero.inactive.z = sub3_section

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
    theme = zero,
    globalstatus = true,
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
  },
}
