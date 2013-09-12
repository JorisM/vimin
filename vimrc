let mapleader = "-"
call pathogen#incubate()
call pathogen#helptags()
execute pathogen#infect()
syntax enable
set background=dark
colorscheme Tomorrow-Night-Eighties
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
set guifont=Ubuntu\ Mono\ 11
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set tabstop=4
set listchars=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:•
"autostart vim

"mappings
nmap <silent> ,ev :e $MYVIMRC<cr>
nmap <silent> ,sv :so $MYVIMRC<cr>
map <F3> :mksession! ~/vim_session <cr> " Quick write session with F2
map <F4> :source ~/vim_session <cr>     " And load session with F3
map <C-n> :NERDTreeToggle<CR>
map <Leader>a :call RunAllSpecs()<CR>
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
