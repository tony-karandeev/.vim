" --------
" Pathogen
" --------
filetype off " Pathogen needs to run before plugin indent on
execute pathogen#infect()
syntax on
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

" -----------
" Indentation
" -----------
set noexpandtab " Always use tabs
set tabstop=1
set shiftwidth=1
