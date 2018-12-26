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
Plugin 'craigemery/vim-autotag'
Plugin 'valloric/youcompleteme'
Plugin 'ekalinin/dockerfile.vim'
Plugin 'chr4/nginx.vim'
Plugin 'stanangeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'leafgarland/typescript-vim'
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
set termguicolors
syntax on
colorscheme dracula

set encoding=utf-8
set nu
set number relativenumber
set nowrap " set not break the line when line is too long
set cursorline
set expandtab " When expandtab is set, hitting Tab in insert mode will produce the appropriate number of spaces.
set tabstop=2 " Set tabstop to tell vim how many columns a tab counts for."
set softtabstop=2
set shiftwidth=2 " Set shiftwidth to control how many columns text is indented with the reindent operations (<< and >>) and automatic C-style indentation"
set hlsearch



" set tab width as 4 on php
autocmd FileType php setlocal shiftwidth=4 softtabstop=4 tabstop=4
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd BufRead,BufNewFile *.conf setlocal noexpandtab shiftwidth=8 softtabstop=8 tabstop=8





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
nnoremap ;o :tabe
nnoremap ;x :tabclose<CR>

map <C-j> <C-W><Down>
map <C-k> <C-W><Up>
map <C-h> <C-W><Left>
map <C-l> <C-W><Right>
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


" ============= airline_powerline settings =============
let g:airline_powerline_fonts=0
"let g:airline_theme='wombat'
let g:airline_theme='dracula'
" ============= airline_powerline settings =============



" ============= NERDTree settings =============
let g:NERDSpaceDelims = 1
let NERDTreeShowHidden=1
" ============= NERDTree settings =============



" ============= ctrlp settings =============
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/storage/*
let g:ctrlp_show_hidden=1
" let g:ctrlp_custom_ignore='node_modules\|DS_Store\|git\|vendor'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|idea)$',
    \ 'file': '\v[\/]\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }
" ============= ctrlp settings =============



" ============= dracula settings =============
let g:dracula_bold = 0
let g:dracula_italic = 0
let g:dracula_underline = 0
let g:dracula_undercurl = 0
let g:dracula_inverse = 0
" ============= dracula settings =============



" ======== vim-php-namespace setting =========
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

autocmd FileType php inoremap <Leader>s <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>

let g:php_namespace_sort_after_insert = 1
" ======== vim-php-namespace setting =========



" =========== vim-autotag settings ===========
let g:autotagTagsFile = 'tags'
" =========== vim-autotag settings ===========
