set nocompatible
filetype off

call vundle#rc()

Plugin 'VundleVim/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'elzr/vim-json'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'justinmk/vim-sneak'
Plugin 'plasticboy/vim-markdown'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'slim-template/vim-slim'
Plugin 'terryma/vim-expand-region'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ruby/vim-ruby'
Plugin 'wincent/command-t'

filetype plugin indent on

syntax on

set t_Co=256
set background=dark

let base16colorspace=256
colorscheme gooey

set backspace=indent,eol,start
set complete-=i
set smarttab
set incsearch
set tabstop=2
set shiftwidth=2
set backspace=2
set softtabstop=2
set encoding=utf-8
set number
set hlsearch
set ignorecase
set smartcase
set laststatus=2
set noswapfile
set autowrite
set expandtab
set clipboard=unnamed
set textwidth=120
set colorcolumn=+1
set ttyfast
set lazyredraw
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set nospell

" Turn persistent undo on, means that you can undo even when you close a buffer/VIM
set undofile
set undolevels=1000

let mapleader = "\<Space>"

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:ag_working_path_mode="r"

set grepprg=ag\ --nogroup\ --nocolor

set wildignore+=tmp/*,vendor/*,log/*,app/assets/fonts/*,app/assets/images/*,app/assets/javascripts/vendor/ckeditor/*,app/assets/files/*,*.un~

nnoremap <C-p> :CommandT<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <Leader><Tab> :bprevious<CR>
nnoremap <C-x> :bdelete<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap \ :Ag<SPACE>
nnoremap <silent> <Return> <Esc>:nohlsearch<CR><Esc>
" Opposite of shift j
nnoremap <C-J> ciW<CR><Esc>:if match( @", "^\\s*$") < 0<Bar>exec "norm P-$diw+"<Bar>endif<CR>

nmap <C-o> O<Esc>
nmap <Leader>w :w!<CR>

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
vmap <Leader>s :sort i<CR>
vmap <Leader>; :Tab/\w:\zs/l0l1<CR>
vmap <Leader>= :Tab/=<CR>
vmap <Leader>. :Tab/=><CR>

imap jj <Esc>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd BufWritePre *.rb,*.js :%s/\s\+$//e
