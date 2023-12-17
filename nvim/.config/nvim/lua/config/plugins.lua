local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- colorschemes
  {
    "catppuccin/nvim",
    config = function()
      require "config/catppuccin"
    end,
  },

  -- icons
  "kyazdani42/nvim-web-devicons",

  -- start screen
  {
    "goolord/alpha-nvim",
    config = function()
      require "config/alpha"
    end,
  },

  -- file navigation
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require "config/nvim-tree"
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require "config/telescope"
    end,
  },
  {
    "fgheng/winbar.nvim",
    config = function()
      require "config/winbar"
    end,
  },

  -- code navigation
  "folke/trouble.nvim",
  "folke/todo-comments.nvim",
  {
    "akinsho/bufferline.nvim",
    config = function()
      require "config/bufferline"
    end,
    dependencies = {
      "catppuccin/nvim",
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    init = function()
      require("ibl").setup {
        scope = {
          show_start = false,
          show_end = false,
        },
      }
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require "config/colorizer"
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require "config/lualine"
    end,
  },
  {
    "petertriho/nvim-scrollbar",
    config = function()
      require "config/nvim-scrollbar"
    end,
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require "config/neoscroll"
    end,
  },

  -- formatter
  {
    "mhartington/formatter.nvim",
    config = function()
      require "config/formatter"
    end,
  },

  -- LSP
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup {
        ui = {
          border = "single",
          code_action = "💡",
          action_fix = "💡",
          imp_sign = "",
          expand = "",
          collapse = "",
        },
        lightbulb = {
          enable = false,
        },
        outline = {
          keys = {
            toggle_or_jump = "<CR>",
            jump = "<CR>",
          },
        },
        callhierarchy = {
          keys = {
            edit = "<CR>",
          },
        },
      }
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require "config.lsp-config"
    end,
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require "config.mason"
    end,
  },
  {
    "ionide/Ionide-vim",
    config = function()
      vim.g["fsharp#backend"] = "disable" -- enable only syntax highlight
    end,
  },
  {
    "scalameta/nvim-metals",
    config = function()
      require "config/nvim-metals"
    end,
  },

  -- clojure
  {
    "Olical/conjure",
    config = function()
      require "config/conjure"
    end,
  },

  -- completion
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  "saadparwaiz1/cmp_luasnip",
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      require "config/lsp-signature"
    end,
  },

  -- snippets
  "L3MON4D3/LuaSnip",
  "rafamadriz/friendly-snippets",

  -- tree-sitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = "all",
        highlight = {
          enable = true,
        },
      }
    end,
  },

  -- git
  "tpope/vim-fugitive",
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require "config/gitsigns"
    end,
  },

  -- utils
  "lewis6991/impatient.nvim",
  "nvim-lua/plenary.nvim",
  "nvim-lua/popup.nvim",
  "jiangmiao/auto-pairs",
  "gelguy/wilder.nvim",
  "windwp/nvim-ts-autotag",
  "SmiteshP/nvim-navic",
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require "config/terminal"
    end,
  },
  {
    "terrortylor/nvim-comment",
    config = function()
      require "config/nvim-comment"
    end,
  },
}, {
  ui = {
    border = "single",
  },
})
