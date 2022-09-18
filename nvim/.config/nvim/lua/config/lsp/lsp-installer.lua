local ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not ok then
  print "nvim-lsp-installer is not installed."
  return
end

lsp_installer.setup {
  ensure_installed = {
    "bashls",
    "clangd",
    "clojure_lsp",
    "cmake",
    "cssls",
    "dockerls",
    "dotls",
    "elixirls",
    "eslint",
    "fsautocomplete",
    "golangci_lint_ls",
    "gopls",
    "graphql",
    "html",
    "jdtls",
    "jedi_language_server",
    "jsonls",
    "remark_ls",
    "rescriptls",
    "rust_analyzer",
    "sqlls",
    "sumneko_lua",
    "svelte",
    "tailwindcss",
    "tsserver",
    "vimls",
    "vuels",
    "yamlls",
  },
}
