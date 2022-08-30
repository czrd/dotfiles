local ok, ll = pcall(require, "lualine")
if not ok then
  print "lualine is not installed"
  return
end

local colors = {
  fg = "#d4d4d4",
  bg = "#007fd4",
  gray = "#2c323d",
  normal = "#007fd4",
  insert = "#E53935",
  visual = "#ffcf1f",
  command = "#388E3C",
}

ll.setup {
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics", "filename" },
    lualine_c = {},
    lualine_x = { "encoding", "fileformat", "filetype", "progress", "location" },
    lualine_y = {},
    lualine_z = {},
  },
  options = {
    globalstatus = true,
    theme = {
      normal = {
        a = { fg = colors.gray, bg = colors.bg, gui = "bold" },
        b = { fg = colors.fg, bg = colors.gray },
        c = { fg = colors.fg, bg = colors.gray },
      },
      insert = {
        a = { fg = colors.gray, bg = colors.bg, gui = "bold" },
      },
      visual = {
        a = { fg = colors.gray, bg = colors.bg, gui = "bold" },
      },
      command = {
        a = { fg = colors.gray, bg = colors.bg, gui = "bold" },
      },
      replace = {
        a = { fg = colors.gray, bg = colors.bg, gui = "bold" },
      },
      inactive = {
        a = { fg = colors.gray, bg = colors.bg, gui = "bold" },
      },
    },
  },
}
