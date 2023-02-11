vim.api.nvim_command [[
  hi! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
]]

local function hl(name, value)
  vim.api.nvim_set_hl(0, name, value)
end

hl("FloatBorder", { fg = "#3760bf", bg = "#e1e2e7" })
hl("NormalFloat", { fg = "#3760bf", bg = "#e1e2e7" })
hl("LspReferenceRead", { fg = "#ffffff", bg = "#d7005f" })
hl("LspReferenceText", { fg = "#ffffff", bg = "#d7005f" })
hl("LspReferenceWrite", { fg = "#ffffff", bg = "#d7005f" })
hl("FocusedSymbol", { fg = "#ffffff", bg = "#d7005f" })
hl("CursorLineNr", { fg = "#3760bf", bg = "#e1e2e7" })
hl("WinSeparator", { fg = "#8990b3", bg = "#e1e2e7" })
