require('lualine').setup {
  options = {
    theme = 'onedark'
  }
}

-- One Dark Theme
require('onedark').setup {
  style = 'cool',
  ending_tildes = false,
}
require('onedark').load()

-- Setup barbar background color
vim.api.nvim_command([[
  hi BufferTabpageFill guibg=#1e242e
]])

vim.cmd([[
  highlight! ALEErrorSign guifg=#C30500
  highlight! ALEWarningSign guifg=#D5B26F
]])

-- Setup Hexokinase
vim.g.Hexokinase_highlighters = {"backgroundfull"}

-- Sexy folds
local set = vim.opt
set.foldmethod = "syntax"
set.foldexpr = "nvim_treesitter#foldexpr()"
set.foldtext = [[substitute(getline(v:foldstart),'\\t',repeat('\ ',&tabstop),'g').'...'.trim(getline(v:foldend))]]
set.fillchars = "fold: "
set.foldnestmax = 3
set.foldminlines = 1
vim.cmd([[
  highlight! Folded guibg=NONE
  highlight! FoldColumn guibg=NONE
]])

set.signcolumn = "yes:1"

