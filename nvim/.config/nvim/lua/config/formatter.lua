local ok, formatter = pcall(require, "formatter")
if not ok then
  print "formatter.nvim is not installed"
  return
end

local util = require "formatter.util"

formatter.setup {
  filetype = {
    json = {
      require("formatter.filetypes.json").fixjson,
    },
    yaml = {
      require("formatter.filetypes.yaml").yamlfmt,
    },
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    sh = {
      require("formatter.filetypes.sh").shfmt,
    },
    html = {
      require("formatter.filetypes.javascript").prettier,
      require("formatter.filetypes.javascript").eslint,
    },
    javascript = {
      require("formatter.filetypes.javascript").prettier,
      require("formatter.filetypes.javascript").eslint,
    },
    javascriptreact = {
      require("formatter.filetypes.javascript").prettier,
      require("formatter.filetypes.javascript").eslint,
    },
    typescript = {
      require("formatter.filetypes.typescript").prettier,
      require("formatter.filetypes.typescript").eslint,
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettier,
      require("formatter.filetypes.typescriptreact").eslint,
    },
    htmlangular = {
      require("formatter.filetypes.javascript").prettier,
      require("formatter.filetypes.javascript").eslint,
    },
    ocaml = {
      require("formatter.filetypes.ocaml").ocamlformat,
    },
    go = {
      require("formatter.filetypes.go").goimports,
      require("formatter.filetypes.go").gofumpt,
    },
    rust = function()
      return {
        exe = "rustfmt --edition 2021",
        stdin = true,
      }
    end,
    python = {
      require("formatter.filetypes.python").isort,
      require("formatter.filetypes.python").autopep8,
      require("formatter.filetypes.python").docformatter,
      require("formatter.filetypes.python").black,
    },
    cpp = {
      function()
        return {
          exe = "clang-format",
          args = {
            "-style=LLVM",
            "-assume-filename",
            util.escape_path(util.get_current_buffer_file_name()),
          },
          stdin = true,
          try_node_modules = true,
        }
      end,
    },
    markdown = {
      require("formatter.filetypes.markdown").prettier,
    },
    zig = {
      require("formatter.filetypes.zig").zigfmt,
    },
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      function()
        local defined_types = require("formatter.config").values.filetype
        if defined_types[vim.bo.filetype] ~= nil then
          return nil
        end
        vim.lsp.buf.format { async = true }
      end,
    },
  },
}
