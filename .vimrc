set tabstop=4
set shiftwidth=4
set expandtab
set keywordprg=man\ 3

filetype plugin on

" File search in each directory and subdirectory
set path+=**
set wildmenu

" File browsing
let g:netrw_banner=0   " disable top banner
let g:netrw_liststyle=3  " tree view

" Enable true color and syntax
set termguicolors
syntax on
set background=dark

" Press k to open the python doc
set keywordprg=pydoc
