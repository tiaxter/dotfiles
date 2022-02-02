local global = vim.g

-- Get tree view callback
local tree_view = require('nvim-tree.view')
local tree_view_open = tree_view.open
local tree_view_close = tree_view.close

-- On open set offset then call original open method
tree_view.open = function()
  require("bufferline.state").set_offset(40 + 1, '')
  tree_view_open()
end

-- On close set offset then call original close method
tree_view.close = function()
    require("bufferline.state").set_offset(0)
    tree_view_close()
end

-- Temporary fix for NvimTree Lag issue (https://github.com/kyazdani42/nvim-tree.lua/issues/549)
global.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
  folder_arrows = 1
}
global.nvim_tree_git_hl = 0

global.nvim_tree_quit_on_open = false

require('nvim-tree').setup{
  hijack_cursor = false,
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  auto_close = true,
  open_on_tab = false,
  update_cwd = true,
  git = {
    enable = false,
  },
  update_to_buf_dir = {
    enable = true,
    auto_open = true,
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  update_focused_file = {
    enable = true,
  },
  view = {
    width = 40,
    height = 40,
    side = 'left',
    auto_resize = 0,
  }
}
