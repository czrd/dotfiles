local ok, formatter = pcall(require, "formatter")
if not ok then
  print "formatter.nvim is not installed"
  return
end

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
      require("formatter.filetypes.javascript").prettiereslint,
    },
    javascriptreact = {
      require("formatter.filetypes.javascriptreact").prettiereslint,
    },
    typescript = {
      require("formatter.filetypes.typescriptreact").prettiereslint,
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettiereslint,
    },
    ocaml = {
      require("formatter.filetypes.ocaml").ocamlformat,
    },
    clojure = function()
      return {
        exe = "cljstyle",
        args = {
          "pipe",
        },
        stdin = true,
      }
    end,
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
      require("formatter.filetypes.cpp").clangformat,
    },
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
}
