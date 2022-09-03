local colorscheme = "darkplus"
local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok then
  print("colorscheme not found: " .. colorscheme)
  return
end
