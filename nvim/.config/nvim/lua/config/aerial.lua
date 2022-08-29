local ok, aerial = pcall(require, "aerial")
if not ok then
  print "aerial.nvim is not installed"
  return
end

aerial.setup {
  layout = {
    width = 40,
  },
  close_on_select = true,
  show_guides = true,
  highlight_on_hover = true,
  highlight_mode = "split_width",
}
