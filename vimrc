let mapleader = "-"
call pathogen#incubate()
call pathogen#helptags()
call pathogen#infect()
syntax enable
set background=dark
"colorscheme solarized
set nocompatible
filetype on
filetype plugin on
filetype indent on
set hidden
set lazyredraw
set showmode
set wildmenu
set synmaxcol=2048
set showcmd
set autoindent
set number
set incsearch
set hlsearch

"mappings

"save
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>

nmap <silent> ,ev :e $MYVIMRC<cr>
nmap <silent> ,sv :so $MYVIMRC<cr>
map <F3> :mksession! ~/vim_session <cr> " Quick write session with F2
map <F4> :source ~/vim_session <cr>     " And load session with F3
