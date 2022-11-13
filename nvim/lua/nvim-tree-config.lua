-- Get tree view callback
-- local tree_view = require('nvim-tree.view')
-- local tree_view_open = tree_view.open
-- local tree_view_close = tree_view.close

-- On open set offset then call original open method
-- tree_view.open = function()
--   require("bufferline.api").set_offset(40 + 1, '')
--   tree_view_open()
-- end

-- On close set offset then call original close method
-- tree_view.close = function()
--     require("bufferline.api").set_offset(0)
--     tree_view_close()
-- end

require('nvim-tree').setup{
  hijack_cursor = false,
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  open_on_tab = false,
  update_cwd = true,
  git = {
    enable = true,
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
  },
  actions = {
    open_file = {
      quit_on_open = false,
    },
  },
}
