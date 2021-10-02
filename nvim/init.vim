call plug#begin('~/.config/nvim/plugged')

Plug 'navarasu/onedark.nvim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'mattn/emmet-vim'

call plug#end()

" Load generals settings
source $HOME/.config/nvim/settings/general.vim
"One Dark Theme
source $HOME/.config/nvim/settings/theme.vim
" Coc languages
source $HOME/.config/nvim/settings/coc.vim
" Load keymaps settings
source $HOME/.config/nvim/settings/keymaps.vim
