local keymap = vim.api.nvim_set_keymap

--  Escape using the j combination
keymap('i', 'jk','<Esc>', {noremap = true})
-- Open file explorer drawer using CTRL-n combination
keymap('n', '<C-n>', ":NvimTreeToggle<CR>", {noremap = true})
-- keymap('n', '<C-n>', ":lua require('nvim-tree-toggler').toggle_tree()<CR>", {noremap = true})

-- Telescope keymaps
keymap('n', ';f', ":lua require('telescope.builtin').find_files{}<CR>", {noremap = true})
keymap('n', ';g', ":lua require('telescope.builtin').git_files{}<CR>", {noremap = true})
keymap('n', '//', ":lua require('telescope.builtin').buffers{}<CR>", {noremap = true})

-- Switch between buffers
keymap('n', '<C-i>', ':BufferNext<CR>', { noremap = true, silent = true})
keymap('n', '<C-q>', ':BufferClose<CR>', { noremap = true, silent = true})

-- NERD Commenter
keymap('', '<C-_>', ':call nerdcommenter#Comment(0, "toggle")<CR>', { noremap = true, silent = true})

-- Use emmet expanding using TAB key
vim.api.nvim_command([[
  imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
]])

