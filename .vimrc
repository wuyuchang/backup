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
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'dracula/vim'
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
" ============================================================================================================================================
let g:airline_powerline_fonts=0
"let g:airline_theme='wombat'
let g:airline_theme='dracula'
let g:NERDSpaceDelims = 1
let NERDTreeShowHidden=1
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git\|vendor'

let g:dracula_bold = 0
let g:dracula_italic = 0
let g:dracula_underline = 0
let g:dracula_undercurl = 0
let g:dracula_inverse = 0
" autocmd ColorScheme dracula hi CursorLine cterm=underline term=underline


"set termguicolors
syntax on
colorscheme dracula

set encoding=utf-8
set nu
set number relativenumber
set cursorline
set expandtab
set shiftwidth=2
set softtabstop=2
set hlsearch



" set tab width as 4 on php
autocmd FileType php setlocal shiftwidth=4
autocmd FileType php setlocal softtabstop=4
autocmd FileType php set omnifunc=phpcomplete#CompletePHP





" ========== below for key mappings ==========
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
" ========== above for key mappings ==========





" ========== below for windows settings ==========
" make backspace work insert mode on windows
set backspace=2
set backspace=indent,eol,start
" ========== above for windows settings ==========





" ========== below for gui settings ==========

"set lines=40 columns=150 " set maximum of the window when start up
"winpos 360 150

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
" ========== above for gui settings ==========
