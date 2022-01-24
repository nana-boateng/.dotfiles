"
" System
"

set shell=/bin/zsh

" Use system clipboard
set clipboard=unnamedplus

" 
" Styling
"

" Highlighting current line
set cursorline

" Enable numbers
set number relativenumber

" Hide the mode when using Airline
set noshowmode

" Set window title
set title

" 
" Indentation
"
set autoindent

" Set indentation level. Do NOT remove trailing space
set list lcs=tab:\|\ 

" Folding method based on syntax
set foldmethod=syntax
set foldlevelstart=0

" 
" Search
"

" Ignore case when searching
set ignorecase
set smartcase

" Highlight patterns while typing
set incsearch

" Show matching brackets
set showmatch

"
" Development
"

" Terminal
tnoremap <Esc> <C-\><C-n>
