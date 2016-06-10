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

call vundle#end() 
filetype plugin indent on

syntax enable

" NERDTree on vim start
autocmd vimenter * NERDTree

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

