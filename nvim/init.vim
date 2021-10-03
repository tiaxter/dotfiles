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
" Enable editting files as root after openning them. Use :SudaWrite to save
Plug 'lambdalisue/suda.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/vim-go'
"Dart/Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

call plug#end()

" Load generals settings
source $HOME/.config/nvim/settings/general.vim
"One Dark Theme
source $HOME/.config/nvim/settings/theme.vim
" Coc languages
source $HOME/.config/nvim/settings/coc.vim
" Load keymaps settings
source $HOME/.config/nvim/settings/keymaps.vim
