" Escape from" INSERT mode using the combination j k
inoremap jk <Esc>

" Toggle NERDTree File Explorer
nmap <C-n> :NERDTreeToggle<CR>

" Enable autocomplete pressing Ctrl + Space
inoremap <silent><expr> <c-space> coc#refresh()

imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_mode='a'
