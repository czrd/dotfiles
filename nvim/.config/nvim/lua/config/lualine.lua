local ok, ll = pcall(require, "lualine")
if not ok then
  print "lualine is not installed"
  return
end

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
    globalstatus = true,
    theme = {
      normal = {
        a = { fg = "#ffffff", bg = "#3760bf", gui = "bold" },
        b = { bg = "#c4c8da" },
        c = { bg = "#c4c8da" },
      },
    },
  },
}
