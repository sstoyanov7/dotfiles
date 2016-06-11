call plug#begin('~/.vim/plugged')

" File and symbols navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'

" Autocompletion and snippets
Plug 'Valloric/YouCompleteMe'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'

" Navigation and manipulation
Plug 'gcmt/breeze.vim'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Syntax
Plug 'cakebaker/scss-syntax.vim'

" Themes
Plug 'ajh17/Spacegray.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Make Vim more useful
set nocompatible

filetype plugin indent on

""""""""
" Insert
""""""""

" Allow cursor keys in insert mode
set esckeys

" Allow backspace in insert mode
set backspace=indent,eol,start

" Make indentation smarter
set autoindent
set smartindent
set cindent

"""""""""
" Visuals
"""""""""

" Enable syntax highlighting
if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Use tree-style listing in netrw
let g:netrw_liststyle = 3

" Color scheme
colorscheme spacegray
let g:spacegray_underline_search = 1

" Expand tabs to spaces
set expandtab

" Make tabs as wide as four spaces
set tabstop=4
set shiftwidth=4

" Disable error bells
set noerrorbells

" Show the cursor position
set ruler

" Don’t show the intro message when starting Vim
set shortmess=atIO

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Highlight current line
set cursorline

" Show the (partial) command as it’s being typed
set showcmd

" Enable line numbers
set number

" Use relative line numbers
if exists("&relativenumber")
    set relativenumber
    au BufReadPost * set relativenumber
endif

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" Show matching bracket briefly
set showmatch

" Enhance command-line completion
set wildmenu

""""""""
" Search
""""""""

" Add the g flag to search/replace by default
set gdefault

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Always show status line
set laststatus=2

" Enable mouse in all modes
set mouse=a

" Don’t reset cursor to start of line when moving around.
set nostartofline

"""""""""""""""""""
" Keyboard mappings
"""""""""""""""""""

" Change mapleader
let mapleader=","

" Find a tag (,.)
nnoremap <leader>. :CtrlPTag<cr>

" Toggle Tagbar
nnoremap <silent> <leader>k :TagbarToggle<cr>

" Strip trailing whitespace (,ss)
function! StripWhitespace()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

""""""""""""""""""""
" Automatic commands
""""""""""""""""""""

if has("autocmd")
    " Enable file type detection
    filetype on
    " Treat .json files as .js
    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"""""""
" Other
"""""""

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Optimize for fast terminal connections
set ttyfast

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
