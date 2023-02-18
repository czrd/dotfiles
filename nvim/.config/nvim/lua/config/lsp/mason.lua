local ok, mason = pcall(require, "mason")
if not ok then
  print "mason is not installed."
  return
end

mason.setup {
  ui = {
    border = "single",
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
}
