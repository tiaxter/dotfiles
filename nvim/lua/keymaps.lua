local keymap = vim.api.nvim_set_keymap

--  Escape using the j combination
keymap('i', 'jk','<Esc>', {noremap = true})
-- Open file explorer drawer using CTRL-n combination
keymap('n', '<C-n>', ":NvimTreeToggle<CR>", {noremap = true})

-- Telescope keymaps
keymap('n', ';f', ":lua require('telescope.builtin').find_files{}<CR>", {noremap = true})
keymap('n', ';g', ":lua require('telescope.builtin').git_files{}<CR>", {noremap = true})
keymap('n', '//', ":lua require('telescope.builtin').buffers{}<CR>", {noremap = true})

-- Use emmet expanding using TAB key
vim.api.nvim_command([[
  imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
]])
