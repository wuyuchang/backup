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
"Plugin 'sirver/ultisnips'
Plugin 'jiangmiao/auto-pairs'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'chemzqm/wxapp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
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
let g:NERDSpaceDelims = 1



let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_setConceal = 0

let g:airline_powerline_fonts=0
let g:airline_theme='wombat'

let NERDTreeShowHidden=1
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git\|vendor'

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
set lines=999 columns=999 " set maximum of the window when start up

" make backspace work insert mode on windows
set backspace=2
set backspace=indent,eol,start

set guioptions-=m " set not show menu
set guioptions-=T " set not show toolbar
set guioptions-=r " set not show right scrollbar
set guioptions-=L " set not show left scroll bar

" set font family and font size
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif


" set tab width as 4 on php
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
nnoremap ;w :tabclose<CR>
