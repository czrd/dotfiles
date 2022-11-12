local ok, neoscroll = pcall(require, "neoscroll")
if not ok then
  print "neoscroll is not installed"
  return
end

neoscroll.setup {
  mappings = {},
  easing_function = "circular",
  stop_eof = false,
  hide_cursor = false,
}

require("neoscroll.config").set_mappings {
  ["<C-b>"] = { "scroll", { "-vim.wo.scroll", "true", "200" } },
  ["<C-f>"] = { "scroll", { "vim.wo.scroll", "true", "200" } },
  ["zt"] = { "zt", { "100" } },
  ["zz"] = { "zz", { "100" } },
  ["zb"] = { "zb", { "100" } },
}
