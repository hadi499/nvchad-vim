---@diagnostic disable: undefined-global

local options = {
  ensure_installed = {
    "vim", "lua", "vimdoc",
    "html", "css", "blade"
  },
  highlight = { enable = true },
  indent = { enable = true },
}

-- Tambahkan konfigurasi parser untuk Blade
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "blade"
}

-- Tambahkan aturan filetype untuk Blade
vim.filetype.add({
  pattern = {
    ['.*%.blade%.php'] = 'html',
  }
})

-- Auto-detect filetype Blade
local bladeGrp = vim.api.nvim_create_augroup("BladeFiletypeRelated", { clear = true })
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.blade.php",
  group = bladeGrp,
  callback = function()
    vim.opt.filetype = "blade"
  end,
})

return options
