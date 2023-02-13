local hl = vim.api.nvim_set_hl
local M = {}

M.set_highlights = function()
  hl(0, "FloatBorder", { fg = "#3760bf", bg = "#e1e2e7" })
  hl(0, "NormalFloat", { link = "FloatBorder" })
  hl(0, "CursorLineNr", { link = "FloatBorder" })
  hl(0, "WinSeparator", { link = "FloatBorder" })
  hl(0, "TelescopeBorder", { link = "FloatBorder" })
  hl(0, "TelescopePromptBorder", { link = "FloatBorder" })
  hl(0, "TelescopeResultsBorder", { link = "FloatBorder" })

  hl(0, "TelescopePreviewLine", { link = "Normal" })
  hl(0, "TelescopeNormal", { link = "Normal" })

  hl(0, "LspReferenceRead", { fg = "#ffffff", bg = "#d7005f" })
  hl(0, "LspReferenceText", { link = "LspReferenceRead" })
  hl(0, "LspReferenceWrite", { link = "LspReferenceRead" })
  hl(0, "FocusedSymbol", { link = "LspReferenceRead" })

  hl(0, "Search", { fg = "#000000", bg = "#febd69" })
  hl(0, "MatchParen", { link = "Search" })
end

M.set_highlights()

return M
