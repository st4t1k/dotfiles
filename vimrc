set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'flazz/vim-colorschemes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()
filetype plugin indent on
syntax on

set number
set tabstop=2 shiftwidth=2 expandtab
set encoding=utf-8
set noswapfile
set nobackup

colorscheme gruvbox
set background=dark
set t_Co=256
set cursorline
set cursorcolumn
set laststatus=2
let g:netrw_liststyle=3

let mapleader=','
nnoremap <silent> <leader>p :CtrlPBuffer<CR>
nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>e :E<CR>

nnoremap <silent> <C-j> <C-W>j
nnoremap <silent> <C-k> <C-W>k
nnoremap <silent> <C-h> <C-W>h
nnoremap <silent> <C-l> <C-W>l
