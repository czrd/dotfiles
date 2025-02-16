local ok, lspconfig = pcall(require, "lspconfig")
if not ok then
  print "lspconfig is not installed"
  return
end

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

local disable_formatting = function(client)
  client.server_capabilities.document_formatting = false
  client.server_capabilities.document_range_formatting = false
end

local ok2, cmp_nvim = pcall(require, "cmp_nvim_lsp")
if not ok2 then
  print "cmp_nvim_lsp is not installed"
  return
end

local capabilities = cmp_nvim.default_capabilities()

lspconfig.lua_ls.setup {
  capabilities = capabilities,
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
}

lspconfig.ts_ls.setup {
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    disable_formatting(client)
    on_attach(client, bufnr)
  end,
}

lspconfig.clojure_lsp.setup {
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    disable_formatting(client)
    on_attach(client, bufnr)
  end,
}

lspconfig.rust_analyzer.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

lspconfig.gopls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

lspconfig.vuels.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

lspconfig.pylsp.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    pylsp = {
      plugins = {
        rope_autoimport = {
          enabled = true,
          eager = true,
        },
      },
    },
  },
}

lspconfig.clangd.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

lspconfig.bashls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

lspconfig.tailwindcss.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

lspconfig.html.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

lspconfig.angularls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}

lspconfig.emmet_ls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}
