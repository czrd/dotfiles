local theta = require "alpha.themes.theta"
local dashboard = require "alpha.themes.dashboard"

theta.header.val = {
  [[⠀⠀⠀⣠⣾⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⣾⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⣠⣾⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣤⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⣼⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⣀⣀⠀⣀⣤⣤⣄⣀⠀⠀⠀⠀⠀⣀⣠⣤⣄⣀⠀⠀⠀⠀⠀⣀⣠⣤⣤⣄⡀⠀⢠⣤⣤⣤⠀⠀⠀⠀⢠⣤⣤⣤⣤⣤⣤⣤⠀⣤⣤⣄⣤⣴⣶⣦⣄⢀⣠⣴⣶⣶⣤⣄⠀]],
  [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⣿⣿⣾⠿⠛⠛⢿⣿⣧⠀⠀⣴⣿⡿⠛⠛⠛⠿⣷⡄⠀⣰⣿⣿⠟⠛⠛⠿⣿⣷⡜⣿⣿⣿⡆⠀⠀⢀⣿⣿⣿⡟⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷]],
  [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⣿⣿⠃⠀⠀⠀⠀⢻⣿⡆⣼⣿⣏⣀⣀⣀⣀⣀⣻⣿⢰⣿⡟⠁⠀⠀⠀⠀⠘⣿⣿⡼⣿⣿⣿⡀⠀⣾⣿⣿⡿⠁⣿⣿⣿⣿⠀⣿⣿⣿⠁⠀⠈⣿⣿⣿⣿⠁⠀⢹⣿⣿⣿]],
  [[⣿⣿⣿⣿⣿⣿⠙⢿⣿⣿⣿⣿⣿⣿⣦⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⢸⣿⡇⣿⣿⠛⠛⠛⠛⠛⠛⠛⠛⢸⣿⡇⠀⠀⠀⠀⠀⠀⢹⣿⡇⠹⣿⣿⣧⣸⣿⣿⣿⠁⠀⣿⣿⣿⣿⠀⣿⣿⣿⠀⠀⠀⣿⣿⣿⣿⠀⠀⢸⣿⣿⣿]],
  [[⣿⣿⣿⣿⣿⣿⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⢸⣿⡇⢻⣿⣆⠀⠀⠀⠀⠀⠀⠀⢸⣿⣇⠀⠀⠀⠀⠀⠀⣾⣿⠇⠀⣿⣿⣿⣿⣿⣿⠃⠀⠀⣿⣿⣿⣿⠀⣿⣿⣿⠀⠀⠀⣿⣿⣿⣿⠀⠀⢸⣿⣿⣿]],
  [[⣿⣿⣿⣿⣿⣿⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⢸⣿⡇⠈⢿⣿⣦⣄⣀⣀⣠⣶⣶⠀⢻⣿⣦⣄⣀⣀⣠⣾⣿⠟⠀⠀⠘⣿⣿⣿⣿⠏⠀⠀⠀⣿⣿⣿⣿⠀⣿⣿⣿⠀⠀⠀⣿⣿⣿⣿⠀⠀⢸⣿⣿⣿]],
  [[⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠛⠛⠀⠀⠀⠀⠀⠘⠛⠃⠀⠀⠉⠛⠻⠿⠿⠛⠋⠁⠀⠀⠉⠛⠻⠿⠿⠟⠋⠁⠀⠀⠀⠀⠙⠛⠛⠛⠀⠀⠀⠀⠛⠛⠛⠛⠀⠛⠛⠛⠀⠀⠀⠛⠛⠛⠛⠀⠀⠘⠛⠛⠛]],
  [[⢿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠙⢿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠙⢿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}

-- theta.header.opts.hl = "Delimiter"
vim.api.nvim_set_hl(0, "NeoVimLogoGreen", { fg = "#367533" })
vim.api.nvim_set_hl(0, "NeoVimLogoBlue", { fg = "#0F59B2" })
theta.header.opts.hl = {
  { { "NeoVimLogoGreen", 0, 65 } },
  { { "NeoVimLogoGreen", 0, 65 } },
  { { "NeoVimLogoGreen", 0, 65 } },
  { { "NeoVimLogoBlue", 0, 5 }, { "NeoVimLogoGreen", 6, 65 } },
  { { "NeoVimLogoBlue", 0, 10 }, { "NeoVimLogoGreen", 11, 65 } },
  { { "NeoVimLogoBlue", 0, 18 }, { "NeoVimLogoGreen", 18, 65 } },
  { { "NeoVimLogoBlue", 0, 18 }, { "NeoVimLogoGreen", 18, 65 } },
  { { "NeoVimLogoBlue", 0, 18 }, { "NeoVimLogoGreen", 18, 65 } },
  { { "NeoVimLogoBlue", 0, 18 }, { "NeoVimLogoGreen", 18, 65 } },
  { { "NeoVimLogoBlue", 0, 18 }, { "NeoVimLogoGreen", 18, 65 } },
  { { "NeoVimLogoBlue", 0, 18 }, { "NeoVimLogoGreen", 18, 65 } },
  { { "NeoVimLogoBlue", 0, 18 }, { "NeoVimLogoGreen", 18, 65 } },
  { { "NeoVimLogoBlue", 0, 18 }, { "NeoVimLogoGreen", 18, 65 } },
}
theta.buttons.val = {
  { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
  { type = "padding", val = 1 },
  dashboard.button("e", "  New file", "<cmd>ene<CR>"),
  dashboard.button("SPC f f", "󰈞  Find file"),
  dashboard.button("SPC f g", "  Live grep"),
  dashboard.button("c", "  Configuration", "<cmd>cd ~/.config/nvim/ <CR>"),
  dashboard.button("u", "  Update plugins", "<cmd>Lazy update<CR>"),
  dashboard.button("q", "󰩈  Quit", "<cmd>qa<CR>"),
}

require("alpha").setup(theta.config)
