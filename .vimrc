" Stupid shift key fixes
map:W :w
map:WQ :wq
map:wQ :wq
map:Q :q
imap ii <Esc>
map L $
map H ^
map T gt

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" disable increment and decrement
map <C-a> <nop>
map <C-x> <nop>

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

set ls=2
set scrolloff=5
set wildmenu
set wildmode=list:longest,full
" disable beeping
set vb t_vb=

"searching
set nohls
set incsearch
set ignorecase
set smartcase

set nocompatible
syntax on
filetype plugin indent on

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

set number
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
nnoremap ; :
let mapleader = ","

set backupdir=~/.vim/swp/backup
set directory=~/.vim/swp/tmp
au BufRead,BufNewFile *.scss set filetype=sass
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

" Set where to recursively look for tag file
" (it is actually located at ~/)
set tags+=tags;~/

" remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
