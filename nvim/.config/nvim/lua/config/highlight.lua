vim.api.nvim_command [[
  hi! IndentBlanklineContextChar guifg=#CDCDCD gui=nocombine
  hi! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
]]

local function hl(name, value)
  vim.api.nvim_set_hl(0, name, value)
end

hl("CmpItemAbbrMatch", { bg = "NONE", fg = "#febd69" })
hl("CmpItemAbbrMatchFuzzy", { bg = "NONE", fg = "#febd69" })
hl("CmpItemKindFunction", { bg = "NONE", fg = "#C586C0" })
hl("CmpItemKindInterface", { bg = "NONE", fg = "#9CDCFE" })
hl("CmpItemKindKeyword", { bg = "NONE", fg = "#CDCDCD" })
hl("CmpItemKindMethod", { bg = "NONE", fg = "#C586C0" })
hl("CmpItemKindProperty", { bg = "NONE", fg = "#CDCDCD" })
hl("CmpItemKindText", { bg = "NONE", fg = "#9CDCFE" })
hl("CmpItemKindUnit", { bg = "NONE", fg = "#CDCDCD" })
hl("CmpItemKindVariable", { bg = "NONE", fg = "#9CDCFE" })
hl("CursorLineNr", { fg = "#febd69", bg = "#131921" })
hl("FloatBorder", { fg = "#CDCDCD", bg = "#131921" })
hl("FocusedSymbol", { fg = "#131921", bg = "#febd69" })
hl("LspReferenceRead", { fg = "#ffffff", bg = "#d7005f" })
hl("LspReferenceText", { fg = "#ffffff", bg = "#d7005f" })
hl("LspReferenceWrite", { fg = "#ffffff", bg = "#d7005f" })
hl("LspSagaDiagnosticBorder", { fg = "#CDCDCD", bg = "#131921" })
hl("LspSagaDiagnosticTruncateLine", { fg = "#CDCDCD", bg = "#131921" })
hl("NormalFloat", { fg = "#CDCDCD", bg = "#131921" })
hl("NvimTreeVertSplit", { fg = "#131921", bg = "#131921" })
hl("PmenuSel", { fg = "#131921", bg = "#febd69" })
hl("TelescopeBorder", { fg = "#CDCDCD", bg = "#131921" })
hl("VertSplit", { fg = "#0a0d11", bg = "#131921" })
