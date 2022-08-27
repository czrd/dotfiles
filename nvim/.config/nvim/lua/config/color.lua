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

-- colorscheme
local colorscheme = "vscode"
local ok3, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok3 then
  print("colorscheme not found: " .. colorscheme)
  return
end
