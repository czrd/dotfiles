require("lspconfig.ui.windows").default_options = {
  border = "single",
}

local on_attach = function(client, bufnr)
  if client.server_capabilities.documentHighlightProvider then
    vim.api.nvim_create_augroup("lsp_document_highlight", {
      clear = false,
    })
    vim.api.nvim_clear_autocmds {
      buffer = bufnr,
      group = "lsp_document_highlight",
    }
    vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
      buffer = bufnr,
      group = "lsp_document_highlight",
      callback = vim.lsp.buf.document_highlight,
    })
    vim.api.nvim_create_autocmd("CursorMoved", {
      buffer = bufnr,
      group = "lsp_document_highlight",
      callback = vim.lsp.buf.clear_references,
    })
  end
end

vim.lsp.enable "bashls"
vim.lsp.enable "clangd"
vim.lsp.enable "emmet_ls"
vim.lsp.enable "gopls"
vim.lsp.enable "html"
vim.lsp.enable "lua_ls"
vim.lsp.enable "ocamllsp"
vim.lsp.enable "rust_analyzer"
vim.lsp.enable "tailwindcss"
vim.lsp.enable "ts_ls"
vim.lsp.enable "zls"

vim.lsp.config("lua_ls", {
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = "LuaJIT",
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { "vim" },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
})

vim.lsp.config("ts_ls", {
  on_attach = function(client, bufnr)
    client.server_capabilities.document_formatting = false
    client.server_capabilities.document_range_formatting = false
    on_attach(client, bufnr)
  end,
})

vim.lsp.config("rust_analyzer", {
  on_attach = on_attach,
})

vim.lsp.config("gopls", {
  on_attach = on_attach,
})

vim.lsp.config("clangd", {
  on_attach = on_attach,
})

vim.lsp.config("bashls", {
  on_attach = on_attach,
})
