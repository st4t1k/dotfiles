""""""""""""""""""""""""""""""""""
"__   __(_) _ __ ___   _ __  ___ "
"\ \ / /| || '_ ` _ \ | '__|/ __|"
" \ V / | || | | | | || |  | (__ "
"  \_/  |_||_| |_| |_||_|   \___|"
"Author: Nikos Karlis            "
""""""""""""""""""""""""""""""""""
                                
call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
call plug#end()

filetype plugin indent on
syntax on

"Show numbers
set relativenumber
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2

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
colorscheme wombat256
set noshowmode
set laststatus=2

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
    \ set tabstop=4
    \| set softtabstop=4
    \| set shiftwidth=4
    \| set textwidth=79
    \| set expandtab
    \| set autoindent
    \| set fileformat=unix

"Tabs for web dev
au BufNewFile,BufRead *.js,*.html,*.css,*.php
    \ set softtabstop=2
    \| set tabstop=2
    \| set shiftwidth=2
    \| set expandtab
    \| set autoindent

au BufNewFile,BufRead *.py,*.pyw match Error /\s\+$/
