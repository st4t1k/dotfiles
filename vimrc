"Plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'davidhalter/jedi-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()

filetype plugin indent on
syntax on

"Show numbers
set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

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
let &t_Co=256
set background=dark
colorscheme gruvbox
set laststatus=2
"GUI
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

let g:lightline = {
	\ 'colorscheme': 'wombat',
	\}

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
	\ set expandtab

au BufNewFile,BufRead *.py,*.pyw match Error /\s\+$/
