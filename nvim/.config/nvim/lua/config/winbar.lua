local ok, winbar = pcall(require, "winbar")
if not ok then
  print "winbar.nvim is not installed"
  return
end

winbar.setup {
  enabled = true,
  show_symbols = true,
  colors = {
    path = "#808080",
    file_name = "#808080",
    symbols = "#808080",
  },
}
