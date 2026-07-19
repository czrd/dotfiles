local palette = require("nightfox.palette").load "dawnfox"

require("nightfox").setup {
  groups = {
    all = {
      -- general
      Search = { fg = palette.black.base, bg = palette.yellow.bright },
      NormalFloat = { link = "Normal" },
      Pmenu = { link = "Normal" },
      PmenuSel = { fg = palette.fg1, bg = palette.green.bright },
      FloatBorder = { fg = palette.black.base, bg = palette.bg1 },

      -- lsp
      LspReferenceText = { bg = palette.sel0 },
      LspReferenceRead = { bg = palette.sel0 },
      LspReferenceWrite = { bg = palette.sel0 },

      -- tree-sitter
      ["@function.builtin"] = { fg = palette.red.base },

      -- telescope
      TelescopeTitle = { fg = palette.fg1, bg = palette.green.bright },

      -- blink-cmp
      BlinkCmpMenuBorder = { link = "FloatBorder" },
      BlinkCmpMenuSelection = { link = "PmenuSel" },
      BlinkCmpDoc = { link = "Normal" },
      BlinkCmpDocBorder = { link = "FloatBorder" },

      -- IndentBlankLine
      IblScope = { fg = palette.fg4 },
      IblIndent = { fg = palette.fg4 },

      -- NvimNotify
      NotifyERRORIcon = { fg = palette.red.base, bg = palette.bg1 },
      NotifyERRORBorder = { fg = palette.red.base, bg = palette.bg1 },
      NotifyERRORTitle = { fg = palette.red.base, bg = palette.bg1 },
      NotifyINFOIcon = { fg = palette.green.bright, bg = palette.bg1 },
      NotifyINFOBorder = { fg = palette.green.bright, bg = palette.bg1 },
      NotifyINFOTitle = { fg = palette.green.bright, bg = palette.bg1 },
      NotifyWARNIcon = { fg = palette.yellow.base, bg = palette.bg1 },
      NotifyWARNTitle = { fg = palette.yellow.base, bg = palette.bg1 },
      NotifyWARNBorder = { fg = palette.yellow.base, bg = palette.bg1 },

      -- NvimTree
      NvimTreeNormal = { link = "Normal" },
      NvimTreeWinSeparator = { link = "FloatBorder" },
    },
  },
}

vim.cmd "colorscheme dawnfox"
