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
    javascript = {
      require("formatter.filetypes.javascript").prettier,
      require("formatter.filetypes.javascript").eslint_d,
    },
    javascriptreact = {
      require("formatter.filetypes.javascript").prettier,
      require("formatter.filetypes.javascript").eslint_d,
    },
    typescript = {
      require("formatter.filetypes.javascript").prettier,
      require("formatter.filetypes.javascript").eslint_d,
    },
    typescriptreact = {
      require("formatter.filetypes.javascript").prettier,
      require("formatter.filetypes.javascript").eslint_d,
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
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
}
