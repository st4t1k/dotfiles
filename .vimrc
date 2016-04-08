set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'majutsushi/tagbar'


call vundle#end()
filetype plugin indent on 

syntax on

set tabstop=4 shiftwidth=4 expandtab
set encoding=utf-8
set number



colorscheme jellybeans


let mapleader = ","
nnoremap <silent> <Leader>w :w<CR>
nnoremap <silent> <Leader>sv :source %<CR>
nnoremap <silent> <Leader>t :NERDTreeToggle<cr>
nnoremap <silent> <Leader>tb :TagbarToggle<cr>

"Remap window navigation
nnoremap <silent> <C-j> <C-W>j_
nnoremap <silent> <C-k> <C-W>k_
nnoremap <silent> <C-h> <C-W>h_
nnoremap <silent> <C-l> <C-W>l_

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
