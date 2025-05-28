set tabstop=4
set shiftwidth=4
set expandtab

set termguicolors " Enable true color and syntax
syntax on
set background=dark


" FILE BROWSING
set path+=** " File search in each directory and subdirectory
set wildmenu

" Ignore clutter in command-line completions (used by :find, :Explore, etc.)
set wildignore+=*/__pycache__/*,*/.git/*,*/.hg/*,*/.svn/*,*.pyc,*.o,*.obj,*.class,*.swp,*.DS_Store

" Hide clutter in netrw file browser
let g:netrw_hide=1 "Activate hiding
let g:netrw_keepdir=0
let g:netrw_banner=0   " disable top banner
let g:netrw_liststyle=3  " tree view
let g:netrw_list_hide='\(^\|\s\)\zs\(__pycache__\|\.git\|\.hg\|\.svn\|\.pyc\|\.o\|\.obj\|\.class\|\.swp\|\.DS_Store\|\.coc\|node_modules\)$'

autocmd VimEnter * if isdirectory(expand('<afile>')) | exe 'NERDTreeVCD' | endif "Open NERDtree when opening a directory
let NERDTreeQuitOnOpen = 1       "Quit nerd tree when opening a file (kinda like netrw)
let g:NERDTreeMinimalUI = 1      "Hide help text, (up a dir)
let g:NERDTreeEnablePreview = 1   " Enable file preview
nnoremap <C-n> :NERDTreeToggle<CR>

" MAPPINGS
" Center screen after half-page scrolls
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Center screen after search next - prev
nnoremap n nzz
nnoremap N Nzz


" PLUGINS
filetype plugin on

" Autoinstall vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" CoC for LSP and autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" NERD Tree (File tree, netrw is builtin but has issues with coc"
Plug 'preservim/nerdtree'

call plug#end()


" PYTHON
" Press k to open the python doc
" set keywordprg=pydoc
