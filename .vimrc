set nocompatible              " be improved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sirver/ultisnips'
Plugin 'jiangmiao/auto-pairs'
Plugin 'drewtempelmeyer/palenight.vim'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor'

"set background=dark
colorscheme palenight
let g:palenight_terminal_italics=1
set termguicolors

syntax enable
set encoding=utf-8
set nu
set number relativenumber
set cursorline
set expandtab
set shiftwidth=2
set softtabstop=2
set hlsearch


autocmd FileType php setlocal shiftwidth=4
autocmd FileType php setlocal softtabstop=4
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

map <C-\> :NERDTreeToggle<CR>

nnoremap ;1 1gt
nnoremap ;2 2gt
nnoremap ;3 3gt
nnoremap ;4 4gt
nnoremap ;5 5gt
nnoremap ;6 6gt
nnoremap ;7 7gt
nnoremap ;8 8gt
nnoremap ;9 9gt
nnoremap ;0 10gt
nnoremap ;p :tabp<CR>
nnoremap ;n :tabn<CR>
