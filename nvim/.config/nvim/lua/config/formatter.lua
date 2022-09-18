local ok, formatter = pcall(require, "formatter")
if not ok then
  print "formatter.nvim is not installed"
  return
end

formatter.setup {
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },
    json = {
      exe = "fixjson",
      stdin = true,
    },
    sh = {
      require("formatter.filetypes.sh").shfmt,
    },
    js = {
      require("formatter.filetypes.javascript").prettier,
    },
    ocaml = {
      require("formatter.filetypes.ocaml").ocamlformat,
    },
    clojure = {
      function()
        return {
          exe = "cljstyle",
          args = {
            "pipe",
          },
          stdin = true,
        }
      end,
    },
    go = {
      require("formatter.filetypes.go").goimports,
      require("formatter.filetypes.go").gofumpt,
    },
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
}
