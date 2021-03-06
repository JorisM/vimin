let mapleader = "ö"
call pathogen#incubate()
call pathogen#helptags()
execute pathogen#infect()
syntax enable
set t_Co=256 "set proper terminal colors
colorscheme Tomorrow-Night-Eighties
set background=dark
set nocompatible	"noop in most cases, only needed when changing system wide vimrc, but better safe than sorry
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
set directory+=,~/tmp,$TMP
set synmaxcol=2048
set showcmd
set number
set incsearch
set hlsearch
set guifont=Ubuntu\ Mono\ 11
set tabstop=4
set smartindent
set autoindent
set shiftwidth=4 	"This is somehow important, otherwise smartinendt will make two tabs.
" set listchars=nbsp:¬,eol:¶,tab:>-,extends:»,precdes:«,trail 
set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1                   " Show 3 lines of context around the cursor.
set title
set backspace=indent,eol,start "allow backspace to remove chars in insert mode
set clipboard=unnamedplus				"yank to global clipboard instead of vim register
set undofile		"set an undo file for when bufers are reopened

autocmd FileType php set keywordprg=pman "Adding phpdoc for shift k
au FocusLost * :wa "automatically save after focus is lost
hi IndentGuidesOdd  ctermbg=black	"indent plugin settings
hi IndentGuidesEven ctermbg=darkgrey

"mappings
vnoremap <Tab> >gv	"remaps so that when tab is pressed in visual mode, it indents the selected code
vnoremap <leader-Tab> <gv "reverse from above remap
nmap <silent> <leader>ev :e $MYVIMRC<cr> "edit vimrc
nmap <silent> <leader>sv :so $MYVIMRC<cr> "source vimrc

map <C-n> :NERDTreeToggle<CR> "open nerdtree
map <C-t> :TlistToggle<CR> "open taglist
nnoremap <C-u> :GundoToggle<CR> "open undo list
map <Leader>r :call RunAllSpecs()<CR> "run rspec
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
""reszize split view
map <Leader>< :30winc <<CR>
map <Leader>> :30winc ><CR>
noremap <silent> <Leader>s :if expand("%") == ""<CR>browse confirm w<CR>else<CR>confirm w<CR>endif<CR>
noremap <Leader>q :bd<CR>
cmap w!! %!sudo tee > /dev/null %
" Mappings to access buffers (don't use "\p" because a
" " delay before pressing "p" would accidentally paste).
" " \l       : list buffers
" " \b \f \g : go back/forward/last-used
" " \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
inoremap ;<cr> <end>;<cr>
inoremap .<cr> <end>.
inoremap ;;<cr> <down><end>;<cr>
inoremap ..<cr> <down><end>.

"Split window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"
"This is the autocomplete section
"
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 5
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Recommended key-mappings.
" " <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	"  return neocomplete#smart_close_popup() . "\<CR>"
	" For no inserting <CR> key.
	return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
filetype plugin on
set omnifunc=syntaxcomplete#Complete
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
	let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:vim_markdown_folding_disabled=1
let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'

"this is for startify
let NERDTreeHijackNetrw = 0
let g:startify_custom_header = [
\'		 _			  _				  _				 _____ __ __',
\'      (_)___  _____(_)____   _   __(_)___ ___     /__  // // /',
\'     / / __ \/ ___/ / ___/  | | / / / __ `__ \      / // // /',
\'    / / /_/ / /  / (__  )   | |/ / / / / / / /     / //__  __/',
\' __/ /\____/_/  /_/____/    |___/_/_/ /_/ /_/     /_/(_)/_/',
\'/___/',
\ ]
let g:startify_session_persistence = 0
let g:startify_session_detection = 1
let g:startify_session_autoload = 1

"coffe plugin
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=4 noexpandtab

"different vimdiff colors because i dislike the default
highlight DiffAdd cterm=none ctermfg=bg ctermbg=Green gui=none guifg=bg guibg=Green
highlight DiffDelete cterm=none ctermfg=bg ctermbg=Red gui=none guifg=bg guibg=Red
highlight DiffChange cterm=none ctermfg=bg ctermbg=Yellow gui=none guifg=bg guibg=Yellow
highlight DiffText cterm=none ctermfg=bg ctermbg=Magenta gui=none guifg=bg guibg=Magenta

let g:EasyMotion_leader_key = 'ü'

" Open markdown files with Chrome
autocmd BufEnter *.md exe 'noremap <Leader>m :!google-chrome %:p<CR>''


let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-D>'
let g:multi_cursor_skip_key='<C-s>'



let g:vdebug_options = {
			\ 'server': '127.0.0.1'
			\}
let g:vdebug_options["break_on_open"]=0

let g:goldenview__enable_default_mapping = 0
nmap <silent> <C-m>  <Plug>GoldenViewNext

