set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-markdown'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end() 
filetype plugin indent on

syntax enable

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = "hybrid"

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" Spaces & Tabs
set tabstop=4
set softtabstop=4
set expandtab
filetype indent on

" UI
colorscheme molokai
set title
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set ruler
set scrolloff=10

" Searching
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap <leader><space> :nohlsearch<CR>

" Backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Misc
let mapleader=","
set hidden
set history=1000

