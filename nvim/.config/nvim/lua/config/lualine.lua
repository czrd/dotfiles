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
  options = {
    globalstatus = true,
    theme = {
      normal = {
        a = { fg = colors.gray, bg = colors.normal },
        b = { fg = colors.fg, bg = colors.gray },
        c = { fg = colors.fg, bg = colors.gray },
      },
      insert = {
        a = { fg = colors.gray, bg = colors.insert },
      },
      visual = {
        a = { fg = colors.gray, bg = colors.visual },
      },
      command = {
        a = { fg = colors.gray, bg = colors.command },
      },
      replace = {
        a = { fg = colors.gray, bg = colors.bg },
      },
      inactive = {
        a = { fg = colors.gray, bg = colors.normal },
      },
    },
  },
}
