require("catppuccin").setup {
  flavour = "latte",
  term_colors = true,
  custom_highlights = {
    LspReferenceRead = { fg = "#ffffff", bg = "#d7005f" },
    LspReferenceWrite = { link = "LspReferenceRead" },
    LspReferenceText = { link = "LspReferenceRead" },
    NormalFloat = { link = "Normal" },
    PmenuSel = { fg = "#ffffff", bg = "#3760bf" },
    Search = { fg = "#ffffff", bg = "#febd69" },
    MatchParen = { link = "Search" },
  },
}

local ok, _ = pcall(vim.cmd, "colorscheme catppuccin")
if not ok then
  return
end
