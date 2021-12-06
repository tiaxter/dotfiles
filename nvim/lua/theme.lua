require('lualine').setup {
  options = {
    theme = 'onedark'
  }
}

-- One Dark Theme
vim.g.onedark_style = 'cool'
vim.g.onedark_hide_ending_tildes = true
require('onedark').setup()
