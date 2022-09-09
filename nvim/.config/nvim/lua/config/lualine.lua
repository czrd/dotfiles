local ok, ll = pcall(require, "lualine")
if not ok then
  print "lualine is not installed"
  return
end

local colors = {
  white = "#cdcdcd",
  accent = "#febd69",
  navy = "#1f2938",
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
        a = { fg = colors.navy, bg = colors.accent, gui = "bold" },
        b = { fg = colors.white, bg = colors.navy },
        c = { fg = colors.white, bg = colors.navy },
      },
    },
  },
}
