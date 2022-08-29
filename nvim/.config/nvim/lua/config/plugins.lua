local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

-- install packer if needed
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
end

vim.cmd [[packadd packer.nvim]]

-- reload neovim when plugins.lua is saved
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- if failed to require packer, do nothing
local ok, packer = pcall(require, "packer")
if not ok then
  print "packer is not installed"
  return
end

return packer.startup(function(use)
  -- packer it self
  use "wbthomason/packer.nvim"

  -- icons
  use "kyazdani42/nvim-web-devicons"

  -- file navigation
  use "kyazdani42/nvim-tree.lua"
  use "nvim-telescope/telescope.nvim"
  use "fgheng/winbar.nvim"

  -- code navigation
  use "yuttie/comfortable-motion.vim"
  use "lukas-reineke/indent-blankline.nvim"
  use "akinsho/bufferline.nvim"
  use "folke/todo-comments.nvim"
  use "norcalli/nvim-colorizer.lua"
  use "folke/trouble.nvim"
  use "nvim-lualine/lualine.nvim"
  use "stevearc/aerial.nvim"
  use "craigemery/vim-autotag"
  use "petertriho/nvim-scrollbar"

  -- colorschemes
  use "marko-cerovac/material.nvim"
  use "arzg/vim-colors-xcode"
  use "blueshirts/darcula"
  use "bignimbus/pop-punk.vim"
  use "stulzer/heroku-colorscheme"
  use "yonlu/omni.vim"
  use "joshwlewis/base16-unikitty"
  use "changyuheng/color-scheme-holokai.vim"
  use "google/vim-colorscheme-primary"
  use "sainnhe/sonokai"
  use "Mofiqul/vscode.nvim"
  use "navarasu/onedark.nvim"
  use "olimorris/onedarkpro.nvim"
  use "martinsione/darkplus.nvim"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  use "tami5/lspsaga.nvim"
  use "jose-elias-alvarez/null-ls.nvim"
  use "ionide/Ionide-vim"
  use "scalameta/nvim-metals"

  -- clojure
  use "Olical/conjure"

  -- completion
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/nvim-cmp"
  use "saadparwaiz1/cmp_luasnip"

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  -- tree-sitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  -- git
  use "lewis6991/gitsigns.nvim"
  use "tpope/vim-fugitive"

  -- utils
  use "lewis6991/impatient.nvim"
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/popup.nvim"
  use "jiangmiao/auto-pairs"
  use "akinsho/toggleterm.nvim"
  use "terrortylor/nvim-comment"
  use "gelguy/wilder.nvim"
  use "windwp/nvim-ts-autotag"
  use "SmiteshP/nvim-navic"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
