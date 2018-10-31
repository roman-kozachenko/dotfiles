set nocompatible
syntax on
set wrap
set mouse=
set showmatch
set title
set confirm
set autoread
let mapleader=","
set number
set expandtab
set tabstop=2
set listchars=tab:→→,trail:⋅
set list
set incsearch
set hlsearch
set smartcase
set ignorecase
set nowrapscan
set noswapfile
set nobackup
set wildmode=longest,list,full
set wildmenu

menu Encoding.koi8-r  :e ++enc=koi8-r<CR>
menu Encoding.cp1251  :e ++enc=cp1251<CR>
menu Encoding.cp866   :e ++enc=cp866<CR>
menu Encoding.ucs-2le :e ++enc=ucs-2le<CR>
menu Encoding.utf-8   :e ++enc=utf-8<CR>
map <F5> :emenu Encoding.<Tab>

let NERDTreeDirArrows = 1
nmap <F2> :NERDTreeFind<cr>

nmap <F3> :set number! number?<cr>
nmap <F4> :set list! list?<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"          => delete
" <leader> => cut
nnoremap x "_x
nnoremap d "_d
nnoremap c "_c
nnoremap D "_D
nnoremap C "_C
vnoremap d "_d
vnoremap c "_c
nnoremap <leader>d ""d
nnoremap <leader>c ""c
nnoremap <leader>D ""D
nnoremap <leader>C ""C
vnoremap <leader>d ""d
vnoremap <leader>c ""c

colorscheme elflord
let $BASH_ENV = "~/.aliases"

execute pathogen#infect()
let g:rainbow_active = 1 " 0 if you want to enable it later via :RainbowToggle

filetype plugin indent on
