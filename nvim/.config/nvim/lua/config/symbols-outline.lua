local ok, symbols_outline = pcall(require, "symbols-outline")
if not ok then
  print "symbols-outline is not installed"
  return
end

symbols_outline.setup {
  width = 30,
  show_symbol_details = false,
  auto_close = true,
}
