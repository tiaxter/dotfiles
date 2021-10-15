-- Icons
require('nvim-web-devicons').setup{
  default = true
}

require('lualine').setup {
  options = {
    theme = 'onedark'
  }
}

-- One Dark Theme
vim.g.onedark_style = 'cool'
require('onedark').setup()
