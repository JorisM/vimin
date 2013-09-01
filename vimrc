call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized
set nocompatible
filetype on
filetype plugin on
filetype indent on
set hidden
set lazyredraw
set showmode
set wildmenu
nmap <silent> ,ev :e $MYVIMRC<cr>
nmap <silent> ,sv :so $MYVIMRC<cr>
set synmaxcol=2048
set showcmd
set autoindent
set number
set incsearch
set hlsearch

