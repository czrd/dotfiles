vim.api.nvim_command [[
  hi! IndentBlanklineContextChar guifg=#737aa2 gui=nocombine
  hi! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
]]

vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { bg = "NONE", fg = "#569CD6" })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { bg = "NONE", fg = "#569CD6" })
vim.api.nvim_set_hl(0, "CmpItemKindVariable", { bg = "NONE", fg = "#9CDCFE" })
vim.api.nvim_set_hl(0, "CmpItemKindInterface", { bg = "NONE", fg = "#9CDCFE" })
vim.api.nvim_set_hl(0, "CmpItemKindText", { bg = "NONE", fg = "#9CDCFE" })
vim.api.nvim_set_hl(0, "CmpItemKindFunction", { bg = "NONE", fg = "#C586C0" })
vim.api.nvim_set_hl(0, "CmpItemKindMethod", { bg = "NONE", fg = "#C586C0" })
vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { bg = "NONE", fg = "#D4D4D4" })
vim.api.nvim_set_hl(0, "CmpItemKindProperty", { bg = "NONE", fg = "#D4D4D4" })
vim.api.nvim_set_hl(0, "CmpItemKindUnit", { bg = "NONE", fg = "#D4D4D4" })
vim.api.nvim_set_hl(0, "LspReferenceRead", { fg = "#ffffff", bg = "#d7005f" })
vim.api.nvim_set_hl(0, "LspReferenceText", { fg = "#ffffff", bg = "#d7005f" })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { fg = "#ffffff", bg = "#d7005f" })
vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { fg = "#1E1E1E", bg = "#1E1E1E" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#D7BA7D", bg = "#1E1E1E" })
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#252525", bg = "#252525" })
