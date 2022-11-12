local ok, neoscroll = pcall(require, "neoscroll")
if not ok then
  print "neoscroll is not installed"
  return
end

neoscroll.setup {
  mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-w>", "zt", "zz", "zb" },
  easing_function = "circular",
  stop_eof = false,
  hide_cursor = false,
}

require("neoscroll.config").set_mappings {
  ["<C-b>"] = { "scroll", { "-vim.wo.scroll", "true", "100" } },
  ["<C-f>"] = { "scroll", { "vim.wo.scroll", "true", "100" } },
  ["<C-y>"] = { "scroll", { "-0.10", "false", "100" } },
  ["<C-e>"] = { "scroll", { "0.10", "false", "100" } },
  ["zt"] = { "zt", { "100" } },
  ["zz"] = { "zz", { "100" } },
  ["zb"] = { "zb", { "100" } },
}
