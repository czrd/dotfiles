local ok, nt = pcall(require, "nvim-tree")
if not ok then
  print "nvim-tree is not installed."
  return
end

nt.setup {
  auto_reload_on_write = true,
  filters = {
    custom = { ".git" },
    exclude = { ".gitignore" },
  },
  view = {
    width = 50,
    mappings = {
      list = {
        { key = "<C-e>", action = "close" },
      },
    },
  },
}
