vim.api.nvim_command [[
  hi! IndentBlanklineContextChar guifg=#D4D4D4 gui=nocombine
  hi! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
]]

local function hl(name, value)
  vim.api.nvim_set_hl(0, name, value)
end

hl("CmpItemAbbrMatch", { bg = "NONE", fg = "#febd69" })
hl("CmpItemAbbrMatchFuzzy", { bg = "NONE", fg = "#febd69" })
hl("CmpItemKindVariable", { bg = "NONE", fg = "#9CDCFE" })
hl("CmpItemKindInterface", { bg = "NONE", fg = "#9CDCFE" })
hl("CmpItemKindText", { bg = "NONE", fg = "#9CDCFE" })
hl("CmpItemKindFunction", { bg = "NONE", fg = "#C586C0" })
hl("CmpItemKindMethod", { bg = "NONE", fg = "#C586C0" })
hl("CmpItemKindKeyword", { bg = "NONE", fg = "#D4D4D4" })
hl("CmpItemKindProperty", { bg = "NONE", fg = "#D4D4D4" })
hl("CmpItemKindUnit", { bg = "NONE", fg = "#D4D4D4" })
hl("LspReferenceRead", { fg = "#ffffff", bg = "#d7005f" })
hl("LspReferenceText", { fg = "#ffffff", bg = "#d7005f" })
hl("LspReferenceWrite", { fg = "#ffffff", bg = "#d7005f" })
hl("NvimTreeVertSplit", { fg = "#1E1E1E", bg = "#1E1E1E" })
hl("NvimTreeFolderName", { fg = "#febd69", bg = "#252525" })
hl("NvimTreeFolderIcon", { fg = "#febd69", bg = "#252525" })
hl("NvimTreeOpenedFolderName", { fg = "#febd69", bg = "#252525" })
hl("NvimTreeEmptyFolderName", { fg = "#febd69", bg = "#252525" })
hl("CursorLineNr", { fg = "#febd69", bg = "#1E1E1E" })
hl("VertSplit", { fg = "#252525", bg = "#1E1E1E" })
hl("LspSagaDiagnosticBorder", { fg = "#D4D4D4", bg = "#1E1E1E" })
hl("LspSagaDiagnosticTruncateLine", { fg = "#D4D4D4", bg = "#1E1E1E" })
hl("FocusedSymbol", { fg = "#1E1E1E", bg = "#febd69" })
hl("TelescopeBorder", { fg = "#D4D4D4", bg = "#1E1E1E" })
hl("NormalFloat", { fg = "#D4D4D4", bg = "#1E1E1E" })
hl("FloatBorder", { fg = "#D4D4D4", bg = "#1E1E1E" })
hl("PmenuSel", { fg = "#1E1E1E", bg = "#febd69" })
