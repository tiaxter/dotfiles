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
