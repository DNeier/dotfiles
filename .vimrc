set nocompatible
filetype off

call vundle#rc()

Plugin 'airblade/vim-gitgutter'
Plugin 'elzr/vim-json'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'slim-template/vim-slim'
Plugin 'terryma/vim-expand-region'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ruby/vim-ruby'

filetype plugin indent on

syntax on

set t_Co=256
set background=dark

let base16colorspace=256
colorscheme gooey

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

let mapleader ="\<Space>"

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <C-x> :bdelete<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc> 
nnoremap <silent> <Return> <Esc>:nohlsearch<CR><Esc>
nnoremap <C-j> ciW<CR><Esc>:if match( @", "^\\s*$") < 0<Bar>exec "norm P-$diw+"<Bar>endif<CR>
nnoremap \ :Ag<SPACE>

nmap <leader>w :w!<cr>

nmap <C-o> O<Esc>
nmap <Leader><Leader> V

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

set backspace=indent,eol,start
set complete-=i
set smarttab
set incsearch
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=2
set encoding=utf-8
set number
set hlsearch
set ignorecase
set smartcase
set laststatus=2
set noswapfile
set autowrite
set clipboard=unnamed
set textwidth=120
set colorcolumn=+1
set lazyredraw
set showmatch
set mat=2
set ai
set si

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd FileType ruby autocmd BufWritePre <buffer> :%s/\s\+$//e
