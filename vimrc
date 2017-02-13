
"""""""Plugins""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

call vundle#end()

filetype plugin indent on
syntax on

"""""""""General"""""""""
set number
set tabstop=4 shiftwidth=4 expandtab

" Maintain undo between sessions
set undofile
set undodir=~/.vim/undo

" Search 
set ignorecase
set smartcase
set infercase
set hlsearch
set incsearch

set encoding=utf-8
set noswapfile
set nobackup
set hidden

""""""""Theming"""""""""" 
set t_Co=256
set background=dark
colorscheme gruvbox
set laststatus=0

""""""""Mappings"""""""""" 
let mapleader=','
nnoremap <silent> <leader>w :w<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>
nnoremap <leader>nh :nohlsearch<CR>
nnoremap <silent> <leader>e :E<CR>

nnoremap <silent> <C-j> <C-W>j
nnoremap <silent> <C-k> <C-W>k
nnoremap <silent> <C-h> <C-W>h
nnoremap <silent> <C-l> <C-W>l

nnoremap <silent> <leader>p :CtrlPBuffer<CR>
nnoremap <silent> <leader>t :NERDTreeToggle<CR>
nnoremap <silent> <leader>tb :TagbarToggle<CR>
