require("catppuccin").setup {
  flavour = "latte",
  term_colors = true,
  custom_highlights = {
    FocusedSymbol = { fg = "#ffffff", bg = "#d7005f" },
    LspReferenceRead = { link = "FocusedSymbol" },
    LspReferenceWrite = { link = "FocusedSymbol" },
    LspReferenceText = { link = "FocusedSymbol" },
    NormalFloat = { link = "Normal" },
    PmenuSel = { fg = "#ffffff", bg = "#3760bf" },
  },
}

local ok, _ = pcall(vim.cmd, "colorscheme catppuccin")
if not ok then
  return
end
