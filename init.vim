call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'rking/ag.vim'
Plug 'junegunn/fzf', { 'dir': '~/.config/nvim/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-test/vim-test'
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}
Plug 'morhetz/gruvbox'

call plug#end()
filetype plugin indent on
syntax on

"-----------Basic-Config---------"
set nobackup
set noswapfile
set number
set relativenumber
set background=dark
set termguicolors
colorscheme gruvbox
set cursorline
set autoindent
set smartindent

"-----------Search---------------"
set hlsearch
set incsearch

"----------Tab-Config------------"
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"-----------Splits---------------"
set splitbelow
set splitright

"-----------Mappings-------------"
"Map leader
let mapleader = ' '
"Fast open vim config
nmap <silent><leader>ev :tabedit $MYVIMRC<CR>
"Write file
nnoremap <silent><leader>w :w<CR>
"Close current buffer
nnoremap <silent><leader>q :bd<CR>
"Toggle FZF
nnoremap <silent><leader>p :Files<CR>
nnoremap <leader>f :Ag<space>
"vim-test
nmap <silent> tn :TestNearest<CR>
nmap <silent> tf :TestFile<CR>

"Phpactor mappings
nnoremap <silent><leader>c :PhpactorImportClass<CR>
nnoremap <silent><leader>k :PhpactorGotoDefinition<CR>

nnoremap <silent><leader>nhl :nohlsearch<CR>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>
inoremap jj <Esc>

"-----------Auto-Commands--------"
augroup autosourcing
autocmd!
autocmd BufWritePost $MYVIMRC source %
augroup END

autocmd BufNewFile,BufEnter,BufRead *.theme,*.module set syntax=php
autocmd BufNewFile,BufEnter,BufRead *.blade.php set filetype=html

"Remove trailing spaces on write."
autocmd BufWritePre * %s/\s\+$//e

"Highlight trailing red spaces."
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let g:user_emmet_leader_key=','

"phpunit config
let g:phpunit_bin = 'vendor/bin/phpunit'

"Tabline tweak
function! MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    let tabnr = i + 1 " range() starts at 0
    let winnr = tabpagewinnr(tabnr)
    let buflist = tabpagebuflist(tabnr)
    let bufnr = buflist[winnr - 1]
    let bufname = fnamemodify(bufname(bufnr), ':t')

    let s .= '%' . tabnr . 'T'
    let s .= (tabnr == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
    let s .= ' ' . tabnr

    let n = tabpagewinnr(tabnr,'$')
    if n > 1 | let s .= ':' . n | endif

    let s .= empty(bufname) ? ' [No Name] ' : ' ' . bufname . ' '

    let bufmodified = getbufvar(bufnr, "&mod")
    if bufmodified | let s .= '+ ' | endif
  endfor
  let s .= '%#TabLineFill#'
  return s
endfunction
set tabline=%!MyTabLine()

