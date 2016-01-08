" --------
" Pathogen
" --------
filetype off " Pathogen needs to run before plugin indent on
execute pathogen#infect()
filetype plugin indent on

" --------
" NERDTree
" --------
"autocmd vimenter * NERDTree " Start NERDTree automatically when Vim starts

" -------
" Airline
" -------
let g:airline_powerline_fonts = 1
set laststatus=2 " Always show status line

" -------------
" Neocomplcache
" -------------
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1 " Use neocomplcache
let g:neocomplcache_enable_smart_case = 1 " Use smartcase

let g:neocomplcache_min_syntax_length = 3 " Set minimum syntax keyword length.
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'


" ------
" Search
" ------
set ignorecase " Tell /-style search to ignore case...
set smartcase  " ...unless pattern contains a capital letter
set incsearch  " Enable incremental search
set hlsearch " Highlight search items

" ------------
" Highlighting
" ------------
syntax on " Highlight syntax
set hlsearch " Highlight search items
colorscheme solarized
set background=dark

" -----------
" Indentation
" -----------
set noexpandtab " Always use tabs
set tabstop=4
set shiftwidth=4

" ----------
" Navigation
" ----------
set scrolloff=5
set grepprg=grep\ -r\ --exclude=tags\ -n\ $*\ /dev/null
map <F7> :cprev<CR>zz
map <F8> :cnext<CR>zz
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
"map <F5> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>
" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |   
\ endif |       
\ endif

set wildmenu
set wildmode=list:longest

" Let ctags search for tags file in file's directory and all parent directories
set tags=./tags;
