local theta = require "alpha.themes.theta"
local dashboard = require "alpha.themes.dashboard"

vim.api.nvim_set_hl(0, "LogoGreen", { fg = "#40a02b" })
vim.api.nvim_set_hl(0, "LogoPink", { fg = "#ea76cb" })

require("alpha").setup {
  layout = {
    { type = "padding", val = 5 },
    {
      type = "text",
      val = {
        [[│ ╲ ││]],
        [[││╲╲││]],
        [[││ ╲ │]],
      },
      opts = {
        position = "center",
        hl = {
          { { "LogoPink", 0, 4 }, { "LogoGreen", 4, -1 } },
          { { "LogoPink", 0, 4 }, { "LogoGreen", 4, -1 } },
          { { "LogoPink", 0, 4 }, { "LogoGreen", 4, -1 } },
        },
      },
    },
    { type = "padding", val = 1 },
    {
      type = "text",
      val = tostring(vim.version().build),
      opts = { position = "center", hl = "LogoGreen" },
    },
    { type = "padding", val = 1 },
    {
      type = "text",
      val = "─────────────────── Recent files ───────────────────",
      opts = { hl = "Conceal", position = "center" },
    },
    { type = "padding", val = 1 },
    {
      type = "group",
      val = function()
        return { theta.mru(0, vim.fn.getcwd()) }
      end,
      opts = { shrink_margin = false },
    },
    { type = "padding", val = 1 },
    {
      type = "text",
      val = "─────────────────── Quick links ───────────────────",
      opts = { hl = "Conceal", position = "center" },
    },
    { type = "padding", val = 1 },
    dashboard.button("e", "  New file", "<cmd>ene<CR>"),
    dashboard.button("SPC f f", "󰈞  Find file"),
    dashboard.button("SPC f g", "  Live grep"),
    dashboard.button("u", "  Update plugins", "<cmd>Lazy update<CR>"),
    dashboard.button("q", "󰩈  Quit", "<cmd>qa<CR>"),
  },
}
