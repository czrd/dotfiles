local filetypes = {
  "bash",
  "c",
  "cpp",
  "css",
  "csv",
  "dockerfile",
  "go",
  "html",
  "javascript",
  "json",
  "jsx",
  "lua",
  "markdown",
  "ocaml",
  "ocaml_interface",
  "ocamllex",
  "perl",
  "python",
  "rescript",
  "ruby",
  "rust",
  "sql",
  "terraform",
  "tsx",
  "typescript",
  "yaml",
  "zig",
  "zsh",
}

require("nvim-treesitter").install(filetypes)

vim.api.nvim_create_autocmd("FileType", {
  pattern = filetypes,
  callback = function()
    vim.treesitter.start()
  end,
})
