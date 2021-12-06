local tree_width = 40
-- Get tree view callback
local tree_view = require('nvim-tree.view')
tree_view_open = tree_view.open
tree_view_close = tree_view.close

-- On open set offset then call original open method
tree_view.open = function()
  require("bufferline.state").set_offset(tree_width, "")
  tree_view_open()
end

-- On close set offset then call original close method
tree_view.close = function()
    require("bufferline.state").set_offset(0)
    tree_view_close()
end

-- Temporary fix for NvimTree Lag issue (https://github.com/kyazdani42/nvim-tree.lua/issues/549)
vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
  folder_arrows = 1
}
vim.g.nvim_tree_git_hl = 0

require('nvim-tree').setup{
  hijack_cursor = false,
  disable_netrw = true,
  hijack_netrw = true,
  git = {
    enable = false,
  },
  update_cwd = true,
  update_to_buf_dir = {
    enable = true,
    auto_open = true,
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  open_on_setup = false,
  auto_close = true,
  open_on_tab = false,
  update_focused_file = {
    enable = true,
  },
  view = {
    width = tree_width,
    side = 'left',
    auto_resize = 0,
  }
}

