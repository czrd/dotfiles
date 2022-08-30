local ok, so = pcall(require, "symbols-outline")
if not ok then
  print "symbols-outline is not installed"
  return
end

so.setup {
  width = 40,
  auto_close = true,
  show_symbol_details = false,
  keymaps = {
    close = { "<Esc>", "q", "T" },
  },
}
