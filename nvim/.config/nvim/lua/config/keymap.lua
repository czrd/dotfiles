local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Modes:
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Leader key
vim.g.mapleader = " "
keymap("", "<Space>", "<Nop>", opts)

-- window navigation
keymap("n", "<C-j>", "<C-w><C-j>", opts)
keymap("n", "<C-k>", "<C-w><C-k>", opts)
keymap("n", "<C-l>", "<C-w><C-l>", opts)
keymap("n", "<C-h>", "<C-w><C-h>", opts)

-- resizing window
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- tagbar
keymap("n", "T", ":Lspsaga outline<CR>", opts)

-- file explorer
keymap("n", "<C-e>", ":NvimTreeFindFileToggle<CR>", opts)
keymap("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<CR>", opts)
keymap("n", "<C-p>", "<cmd>Telescope find_files hidden=true<CR>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)

-- navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>x", ":bdelete!<CR>", opts)
keymap("n", "<leader><S-x>", ":BufferLineCloseOthers<CR>", opts)

-- color scheme
keymap("n", "<C-q>", "<cmd>Telescope colorscheme enable_preview=true<CR>", opts)

-- indent
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

-- git
keymap("n", "<C-g>", "<cmd>lua _TOGGLE_LAZYGIT()<CR>", opts)

-- trouble
keymap("n", "<C-t>", "<cmd>TroubleToggle<CR>", opts)

-- goto
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", opts)
keymap("n", "gi", "<cmd>Lspsaga finder<CR>", opts)

-- actions
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)

-- diagnostic
keymap("n", "[g", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
keymap("n", "]g", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
keymap("n", "gl", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)

-- format
keymap("n", "<leader>f", "<cmd>FormatWrite<CR>", opts)
vim.cmd [[
  augroup LspFormatting
    autocmd!
    autocmd BufWritePost * FormatWriteLock
  augroup END
]]
