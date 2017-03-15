"Plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'

call vundle#end()

filetype plugin indent on
syntax on

"Show numbers
set number
set tabstop=4

" Maintain undo between sessions
set undofile
set undodir=~/.vim/undo

"Search 
set ignorecase
set smartcase
set infercase
set incsearch

set encoding=utf-8
set noswapfile
set nobackup
set hidden

"Theming
set t_Co=256
colorscheme seoul256
set laststatus=0

"Mappings
let mapleader=','
nnoremap <silent> <leader>w :w<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>
nnoremap <leader>hl :set hlsearch!<CR>
nnoremap <silent> <leader>e :E<CR>

nnoremap <silent> <C-j> <C-W>j
nnoremap <silent> <C-k> <C-W>k
nnoremap <silent> <C-h> <C-W>h
nnoremap <silent> <C-l> <C-W>l

nnoremap <silent> <leader>p :CtrlPBuffer<CR>
nnoremap <silent> <leader>t :NERDTreeToggle<CR>
nnoremap <silent> <leader>tb :TagbarToggle<CR>

"PEP8 tabs for python
au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
	\set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

"Tabs for web dev
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

au BufNewFile,BufRead *.py,*.pyw match ExtraWhitespace /\s\+$/
