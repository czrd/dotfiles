-- material
vim.g.material_style = "palenight"

local ok1, material = pcall(require, "material")
if not ok1 then
  print "material.nvim is not installed"
  return
end

material.setup {
  custom_highlights = {
    LspReferenceRead = { fg = "#ffffff", bg = "#d7005f" },
    LspReferenceText = { fg = "#ffffff", bg = "#d7005f" },
    LspReferenceWrite = { fg = "#ffffff", bg = "#d7005f" },
  },
}

-- vscode
local ok2, vscode = pcall(require, "vscode")
if not ok2 then
  print "vscode.nvim is not installed"
  return
end

vscode.setup {
  transparent = false,
  italic_comment = false,
}

-- onedark
local ok3, onedark = pcall(require, "onedark")
if not ok3 then
  print "onedark.nvim is not installed"
  return
end

onedark.setup {
  style = "deep",
  highlights = {
    NormalFloat = { fg = "$fg", bg = "$bg0" },
    FloatBorder = { fg = "#000000", bg = "$bg0" },
  },
}

-- colorscheme
local colorscheme = "darkplus"
local ok4, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok4 then
  print("colorscheme not found: " .. colorscheme)
  return
end

if colorscheme == "darkplus" then
  vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#D4D4D4", bg = "#1E1E1E" })
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#000000", bg = "#1E1E1E" })
end
