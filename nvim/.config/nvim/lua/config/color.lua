local ok, _ = pcall(vim.cmd, "colorscheme tokyonight-day")
if not ok then
  return
end
