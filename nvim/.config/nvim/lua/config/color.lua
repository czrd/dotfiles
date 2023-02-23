require("catppuccin").setup {
  flavour = "latte",
  term_colors = true,
  custom_highlights = {
    NormalFloat = { link = "Normal" },
    PmenuSel = { fg = "#ffffff", bg = "#3760bf" },
    Search = { fg = "#ffffff", bg = "#febd69" },
    MatchParen = { link = "Search" },
    LspInfoBorder = { link = "FloatBorder" },
  },
}

local ok, _ = pcall(vim.cmd, "colorscheme catppuccin")
if not ok then
  return
end
