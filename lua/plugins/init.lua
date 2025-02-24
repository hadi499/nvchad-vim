return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
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
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  -- {
  --   "numToStr/Comment.nvim",
  --   config = function()
  --     require("Comment").setup {}
  --   end,
  -- },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "vue","javascript", "typescript"
  		},
      highlight = { enable = true },
      indent = { enable = true },
      context_commentstring = { enable = true }
  	},
  },
  {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = false },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true }, -- Optional
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },

    init = function()
    -- Your DBUI configuration 
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_use_nerd_fonts = 1 -- Corrected typo
    vim.g.db_ui_show_database_icon = 1
    vim.g.db_ui_force_echo_notifications = 1
    vim.g.db_ui_win_position = 'left'
    vim.g.db_ui_winwidth = 40
    vim.g.db_ui_save_location = '~/.config/nvim/db_ui_queries'
    vim.g.db_ui_auto_execute_table_helpers = 1
    vim.g.db_ui_table_helpers = {
      mysql = {
        Count = 'select count(*) from {table}',
        Explain = 'explain {last_query}',
      },
    }
    vim.g.db_adapter_mariadb = 'mysql' -- Corrected typo
  end,
 }
}
