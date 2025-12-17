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
  -- icons
  "kyazdani42/nvim-web-devicons",

  -- colorschemes
  {
    "catppuccin/nvim",
    config = function()
      require "config/catppuccin"
    end,
  },

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
      require("winbar").setup { enabled = true, show_symbols = true }
    end,
  },

  -- code navigation
  "folke/trouble.nvim",
  "folke/todo-comments.nvim",
  {
    "akinsho/bufferline.nvim",
    dependencies = { "catppuccin/nvim" },
    config = function()
      require "config/bufferline"
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    init = function()
      require("ibl").setup { indent = { char = "│" }, scope = { show_start = false, show_end = false } }
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
      require("scrollbar").setup { show_in_active_only = true }
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
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    config = function()
      require "config/lspsaga"
    end,
  },
  {
    "neovim/nvim-lspconfig",
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

  -- completion
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      require "config/lsp_signature"
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
      require "config/nvim-treesitter"
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

  -- Scala support
  {
    "scalameta/nvim-metals",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    ft = { "scala", "sbt", "java" },
    opts = function()
      local metals_config = require("metals").bare_config()
      metals_config.on_attach = function(client, bufnr)
        -- your on_attach function
        if client.server_capabilities.documentHighlightProvider then
          vim.api.nvim_create_augroup("lsp_document_highlight", {
            clear = false,
          })
          vim.api.nvim_clear_autocmds {
            buffer = bufnr,
            group = "lsp_document_highlight",
          }
          vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
            buffer = bufnr,
            group = "lsp_document_highlight",
            callback = vim.lsp.buf.document_highlight,
          })
          vim.api.nvim_create_autocmd("CursorMoved", {
            buffer = bufnr,
            group = "lsp_document_highlight",
            callback = vim.lsp.buf.clear_references,
          })
        end
      end

      return metals_config
    end,
    config = function(self, metals_config)
      local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
      vim.api.nvim_create_autocmd("FileType", {
        pattern = self.ft,
        callback = function()
          require("metals").initialize_or_attach(metals_config)
        end,
        group = nvim_metals_group,
      })
    end,
  },

  -- utils
  "lewis6991/impatient.nvim",
  "nvim-lua/plenary.nvim",
  "nvim-lua/popup.nvim",
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
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
}, { ui = { border = "single" } })
