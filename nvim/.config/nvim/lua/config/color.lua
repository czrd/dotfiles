local ok1, onedark = pcall(require, "onedark")
if not ok1 then
  return
end

onedark.setup {
  style = "warmer",
  highlights = {
    Normal = { bg = "#131921" },
    Terminal = { bg = "#131921" },
    EndOfBuffer = { fg = "#131921", bg = "#131921" },
    SignColumn = { bg = "#131921" },
    CursorLine = { bg = "#1a222d" },
    MatchParen = { fg = "#febd69", bg = "#131921" },
    Search = { fg = "#000000", bg = "#FFFF00" },
    NvimTreeNormal = {
      fg = "#BBBBBB",
      bg = "#131921",
    },
    NvimTreeEndOfBuffer = {
      fg = "#131921",
      bg = "#131921",
    },
    NvimTreeWinSeparator = {
      fg = "#000000",
      bg = "#131921",
    },
    TelescopeBorder = {
      fg = "#BBBBBB",
    },
    TelescopePromptBorder = {
      fg = "#BBBBBB",
    },
    TelescopeResultsBorder = {
      fg = "#BBBBBB",
    },
    TelescopePreviewBorder = {
      fg = "#BBBBBB",
    },
    TelescopeSelection = {
      bg = "#1a222d",
    },
    TelescopePreviewLine = {
      bg = "#212c3a",
    },
  },
}

local colorscheme = "onedark"
local ok2, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok2 then
  return
end
