require("catppuccin").setup {
  flavor = "latte",
  color_overrides = { latte = { blue = "#0277BD" } },
  highlight_overrides = {
    all = function(colors)
      return {
        Visual = { bg = colors.mantle, style = {} },
        Search = { fg = colors.black, bg = colors.yellow },
        NormalFloat = { link = "Normal" },
        Pmenu = { link = "Normal" },
        PmenuSel = { fg = colors.text, bg = colors.lavender },
        FloatBorder = { fg = colors.overlay1, bg = colors.base },
        ["@function.builtin"] = { fg = colors.flamingo },
        BlinkCmpMenuBorder = { fg = colors.overlay1, bg = colors.base },
        TelescopeTitle = { fg = colors.text, bg = colors.green },
        BlinkCmpMenuSelection = { fg = colors.text, bg = colors.lavender },
        LspReferenceText = { bg = colors.crust },
        LspReferenceRead = { bg = colors.crust },
        LspReferenceWrite = { bg = colors.crust },
        IblScope = { fg = colors.overlay0 },
        IblIndent = { fg = colors.overlay3 },
      }
    end,
  },
}
vim.cmd "colorscheme catppuccin"
