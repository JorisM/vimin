let mapleader = "ö"
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
set showmode		" Display incomplete commands.
set wildmenu		" Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location
set backupdir=$HOME/.vim/tmp//,.  " Keep swap files in one location
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
set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files
set laststatus=2
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title
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
noremap <silent> <Leader>s :if expand("%") == ""<CR>browse confirm w<CR>else<CR>confirm w<CR>endif<CR>
noremap <Leader>q :q<CR>
