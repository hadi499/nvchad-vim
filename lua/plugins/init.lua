return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "mattn/emmet-vim",
    event = "InsertEnter",
  },

  -- {
  --   "nvimtools/none-ls.nvim",
  --   config = function()
  --     require "configs.none_ls"
  --   end,


  -- },

  {
    "nvim-treesitter/nvim-treesitter",

    -- 	opts = {
    -- 		ensure_installed = {
    -- 			"vim", "lua", "vimdoc",
    --      "html", "css"
    -- 		},
    -- 	},
    -- },
    config = function()
      require("nvim-treesitter.configs").setup(require "configs.treesitter")
    end,
  },
}
