return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  -- Mason
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "eslint-lsp",
        "lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier",
        "pyright", "gopls",
      },
    },
  },

  -- null-ls lint and formating
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "configs.null-ls"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  
  -- treesitter 
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = {
          "typescript", "javascript", "tsx", "vue",
  			  "vim", "lua", "vimdoc",
          "html", "css", "go",
          "python",
        },
        highlight = { enable = true },
      }
    end,
  },
  -- instead of null-ls
  -- {
  --   "mfussenegger/nvim-lint",
  --   event = "VeryLazy",
  --   config = function()
  --     require "custom.configs.lint"
  --   end,
  -- },
  -- Formatter
  -- {
  --   "mhartington/formatter.nvim",
  --   event = "VeryLazy",
  --   opts = function() 
  --     return require "custom.configs.formatter"
  --   end,
  -- },

}
