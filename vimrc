"  __  __        __     _____ __  __ ____   ____
" |  \/  |_   _  \ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| | | | |  \ \ / / | || |\/| | |_) | |
" | |  | | |_| |   \ V /  | || |  | |  _ <| |___
" |_|  |_|\__, |    \_/  |___|_|  |_|_| \_\\____|
"         |___/

let mapleader=" "
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase


set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
let &t_ut=''
set expandtab
set mouse-=a
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

map <LEADER>rc :e ~/.vim/vimrc<CR>

set scrolloff=5

map <LEADER>fd /\(\<\w\+\>\)\_s*\1

map <LEADER>sc :set spell!<CR> 

map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l 

noremap = nzz
noremap - Nzz


noremap H 5h
noremap J 5j
noremap K 5k
noremap L 5l

map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map ; :

map sr :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sd :set splitbelow<CR>:split<CR>

map <LEADER>l <C-w>h
map <LEADER>d <C-w>j
map <LEADER>u <C-w>k
map <LEADER>r <C-w>l

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map tu :tabe<CR>
map tl :-tabnext<CR>
map tr :+tabnext<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K




call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

Plug 'preservim/nerdtree'

Plug 'w0rp/ale'

Plug 'majutsushi/tagbar'

Plug 'ycm-core/YouCompleteMe'

call plug#end()


let g:SnazzyTransparent = 1
color snazzy

"===================
"====NERDTree=======
"===================
map ff :NERDTreeToggle<CR>

"===================                                                                 
"===YouCompleteMe===
"===================
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
