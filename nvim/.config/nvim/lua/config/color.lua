require("tokyonight").setup {
  on_highlights = function(hl, c)
    hl.FloatBorder = { fg = c.fg, bg = c.bg }
    hl.NormalFloat = { fg = c.fg, bg = c.bg }
    hl.CursorLineNr = { fg = c.fg, bg = c.bg }
    hl.WinSeparator = { fg = c.fg, bg = c.bg }
    hl.TelescopeBorder = { fg = c.fg, bg = c.bg }
    hl.TelescopePromptBorder = { fg = c.fg, bg = c.bg }
    hl.TelescopeResultsBorder = { fg = c.fg, bg = c.bg }
    hl.TelescopePreviewLine = { fg = c.fg, bg = c.bg }
    hl.TelescopeNormal = { fg = c.fg, bg = c.bg }
    hl.LspReferenceRead = { fg = "#ffffff", bg = "#d7005f" }
    hl.LspReferenceText = { fg = "#ffffff", bg = "#d7005f" }
    hl.LspReferenceWrite = { fg = "#ffffff", bg = "#d7005f" }
    hl.FocusedSymbol = { fg = "#ffffff", bg = "#d7005f" }
    hl.Search = { fg = "#000000", bg = "#febd69" }
    hl.MatchParen = { fg = "#000000", bg = "#febd69" }
  end,
}

local ok, _ = pcall(vim.cmd, "colorscheme tokyonight-day")
if not ok then
  return
end
