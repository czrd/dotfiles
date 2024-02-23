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
      require("winbar").setup {
        enabled = true,
        show_symbols = true,
      }
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
        indent = {
          char = "│",
        },
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
      require("colorizer").setup()
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
      require("scrollbar").setup {
        show_in_active_only = true,
      }
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
      require("mason").setup {
        ui = {
          border = "single",
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      }
    end,
  },
  {
    "scalameta/nvim-metals",
    config = function()
      vim.cmd [[autocmd FileType scala,sbt lua require("metals").initialize_or_attach({})]]
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
      require("lsp_signature").setup {
        hint_enable = false,
        transparency = 20,
        handler_opts = {
          border = "single",
        },
      }
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
      require("gitsigns").setup()
    end,
  },

  -- utils
  "lewis6991/impatient.nvim",
  "nvim-lua/plenary.nvim",
  "nvim-lua/popup.nvim",
  "jiangmiao/auto-pairs",
  "gelguy/wilder.nvim",
  "SmiteshP/nvim-navic",
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require "config/terminal"
    end,
  },
  {
    "terrortylor/nvim-comment",
    config = function()
      require("nvim_comment").setup {
        comment_empty = false,
      }
    end,
  },
}, {
  ui = {
    border = "single",
  },
})
