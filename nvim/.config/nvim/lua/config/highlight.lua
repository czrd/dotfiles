local hl = vim.api.nvim_set_hl
local M = {}

M.set_highlights = function()
  hl(0, "FloatBorder", { fg = "#3760bf", bg = "#e1e2e7" })
  hl(0, "NormalFloat", { fg = "#3760bf", bg = "#e1e2e7" })
  hl(0, "LspReferenceRead", { fg = "#ffffff", bg = "#d7005f" })
  hl(0, "LspReferenceText", { fg = "#ffffff", bg = "#d7005f" })
  hl(0, "LspReferenceWrite", { fg = "#ffffff", bg = "#d7005f" })
  hl(0, "FocusedSymbol", { fg = "#ffffff", bg = "#d7005f" })
  hl(0, "CursorLineNr", { fg = "#3760bf", bg = "#e1e2e7" })
  hl(0, "WinSeparator", { fg = "#8990b3", bg = "#e1e2e7" })
  hl(0, "MatchParen", { fg = "#e1e2e7", bg = "#febd69" })
  hl(0, "Search", { fg = "#000000", bg = "#febd69" })
end

M.set_highlights()

return M
