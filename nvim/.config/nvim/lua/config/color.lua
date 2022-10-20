local ok1, onedarkpro = pcall(require, "onedarkpro")
if not ok1 then
  return
end

onedarkpro.setup {
  -- dark_theme = "onedark_dark",
  colors = {
    onedark = {
      bg = "#131921",
    },
    onedark_vivid = {
      bg = "#131921",
    },
    onedark_dark = {
      bg = "#131921",
    },
  },
  highlights = {
    -- plugin
    NvimTreeNormal = {
      fg = "#BBBBBB",
      bg = "#1c2531",
    },
    TelescopeNormal = {
      fg = "${fg}",
      bg = "${bg}",
    },
  },
}

local colorscheme = "onedarkpro"
local ok2, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok2 then
  return
end
