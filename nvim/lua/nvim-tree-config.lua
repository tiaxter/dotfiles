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
vim.g.nvim_tree_gitignore = 0
vim.g.nvim_tree_git_hl = 0

require('nvim-tree').setup{
  open_on_setup = 0,
  auto_close = 1,
  open_on_tab = 0,
  update_focused_file = {
    enable = 1,
  },
  view = {
    width = 30,
    side = 'left',
    auto_resize = 0
  }
}

