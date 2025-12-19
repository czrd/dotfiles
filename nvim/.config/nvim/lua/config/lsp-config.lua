local on_attach = function(client, bufnr)
  if client.server_capabilities.documentHighlightProvider then
    vim.api.nvim_create_augroup("lsp_document_highlight", { clear = false })
    vim.api.nvim_clear_autocmds { buffer = bufnr, group = "lsp_document_highlight" }
    vim.api.nvim_create_autocmd(
      { "CursorHold", "CursorHoldI" },
      { buffer = bufnr, group = "lsp_document_highlight", callback = vim.lsp.buf.document_highlight }
    )
    vim.api.nvim_create_autocmd(
      "CursorMoved",
      { buffer = bufnr, group = "lsp_document_highlight", callback = vim.lsp.buf.clear_references }
    )
  end
end

local servers = {
  { "bashls" },
  { "clangd" },
  { "emmet_ls" },
  { "gopls" },
  { "html" },
  { "ocamllsp" },
  { "rust_analyzer" },
  { "tailwindcss" },
  { "ts_ls" },
  { "zls" },
  {
    "lua_ls",
    settings = {
      Lua = {
        workspace = { library = vim.api.nvim_get_runtime_file("", true) },
      },
    },
  },
}

for _, server in pairs(servers) do
  local name = server[1]
  local config = { on_attach = on_attach }
  if server.settings then
    config.settings = server.settings
  end
  vim.lsp.config(name, config)
  vim.lsp.enable(name)
end
