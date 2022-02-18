local set = vim.opt

-- Set mouse mode
set.mouse = "a"

-- True color support
set.termguicolors = true

-- Set the behavior of tab
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true

-- Set hybrid line numbers
set.number = true
set.relativenumber = true

-- Set hidden (can change tab without saving file)
set.hidden = true

 -- Enable Neovim Auto Pairs
require('nvim-autopairs').setup{}

-- NeoScroll
require('neoscroll').setup{}

-- Toggle Terminal
require("toggleterm").setup{}

-- Setup eslint and prettier
local global = vim.g

-- TreeSitter
require("nvim-treesitter.configs").setup{
  ensure_installed = "all",
  highlight = { enable = true },
  indent = { enable = true },
}

-- NERDCommenter
vim.cmd([[filetype plugin on]])
global.NERDSpaceDelims = 1
