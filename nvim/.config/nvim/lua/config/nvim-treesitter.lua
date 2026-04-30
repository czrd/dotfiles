require("nvim-treesitter").install { "go", "javascript", "typescript", "rust", "python", "zig" }

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go", "javascript", "typescript", "rust", "python", "zig" },
  callback = function()
    vim.treesitter.start()
  end,
})
