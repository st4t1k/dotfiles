set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on 

set encoding=utf-8
set number
syntax on


colorscheme Tomorrow


let mapleader = ","
nnoremap <silent> <Leader>w :w<CR>
nnoremap <silent> <Leader>sv :source %<CR>
nnoremap <Leader>t :MBEToggle<cr>
