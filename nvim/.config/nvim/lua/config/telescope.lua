local ok, telescope = pcall(require, "telescope")
if not ok then
  print "telescope is not installed."
  return
end

telescope.setup {
  defaults = {
    winblend = 20,
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--smart-case",
      "--with-filename",
      "--line-number",
      "--column",
      "--hidden",
      "--glob=!.git/",
    },
  },
}
