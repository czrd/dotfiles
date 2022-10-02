local ok, lsp_signature = pcall(require, "lsp_signature")
if not ok then
  print "lsp_signature is not installed"
  return
end

lsp_signature.setup {
  hint_enable = false,
  transparency = 20,
  handler_opts = {
    border = "single",
  },
}
