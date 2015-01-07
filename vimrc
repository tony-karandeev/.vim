" --------
" Pathogen
" --------
filetype off " Pathogen needs to run before plugin indent on
execute pathogen#infect()
filetype plugin indent on

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
set grepprg=grep\ -r\ --exclude=tags\ -n\ $*\ /dev/null
map <F7> :cprev<CR>zz
map <F8> :cnext<CR>zz
