call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'prettier/vim-prettier'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'mxw/vim-jsx'
Plug 'xabikos/vscode-react'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'dag/vim-fish'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

set autoindent
set expandtab
set shiftround
set shiftwidth=2
set smarttab
set tabstop=2
set hlsearch
set ignorecase
set smartcase
set number
set relativenumber
set backup
set ruler
set cursorline
set mouse=a
set title titlestring=
set background=dark
set backupdir=/tmp
set dir=/tmp
set ttyfast
set tw=500
set wrap
set visualbell
set t_vb=
set clipboard=unnamed
set rtp+=/usr/local/opt/fzf
set secure "disables unsafe commands in project specific .vimrc
filetype plugin indent on

if (has('termguicolors'))
  set termguicolors
endif

if (has('gui_running'))
  set guioptions-=L
  set guioptions-=r
  set guifont=VictorMonoNerdFontCompleteM\ Nerd\ Font:h13
endif

" adds blue highlight to vim in visual mode selections
highlight Visual cterm=bold ctermbg=Blue ctermfg=NONE
" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" dracula theme setting
colorscheme dracula
let g:dracula_colorterm = 1
let g:airline_theme='dracula'
if (has('gui_running'))
  let g:dracula_italic = 1
else
  let g:dracula_italic = 0
  set termguicolors
endif

" devicons setting
let g:webdevicons_enable_nerdtree = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
if (has('gui_running'))
  let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
endif

" NERDTree settings
" autocmd VimEnter * NERDTree "Toggles Nerdtree on vim open
let NERDTreeQuitOnOpen = 1 "closes NerdTree when opening a file
let NERDTreeShowHidden = 1 " show hidden files
let g:NERDSpaceDelims = 1

" airline settings
if (has('gui_running'))
  let g:airline_powerline_fonts=1
endif

" gitguitter setting
let g:gitgutter_max_signs = 3000  " default value

" Emmet setting
" Redefine emmet leader key. It's now ,,
let g:user_emmet_leader_key='<c-e>'
" let g:user_emmet_expandabbr_key='<tab>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Prettier
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autosave
" disables autosave feature
" let g:prettier#autoformat = 0

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'

" runs prettier on file formats
autocmd BufWritePre *.html,*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" Disable Autocommenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" vim script
set conceallevel=0
let g:javascript_plugin_jsdoc = 1
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-emmet',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json'
  \ ]

" key mapping
nnoremap <c-p> :Files<Cr>
nnoremap <c-n> :NERDTreeToggle<CR>
nnoremap <space>1 1gt
nnoremap <space>2 2gt
nnoremap <space>3 3gt
nnoremap <space>4 4gt
nnoremap <space>5 5gt
nnoremap <space>6 6gt
nnoremap <space>7 7gt
nnoremap <space>8 8gt
nnoremap <space>9 9gt
nnoremap <space>j <c-w>j
nnoremap <space>k <c-w>k
nnoremap <space>h <c-w>h
nnoremap <space>l <c-w>l

nnoremap <space>ev :tabe $MYVIMRC<cr>
nnoremap <space>sv :source $MYVIMRC<cr>
inoremap jk <esc>
map ,j <nop>
map ,k <nop>
autocmd FileType json syntax match Comment +\/\/.\+$+
" autocmd FileType javascript,html :iabbrev <buffer> fun function ( {<cr>}

" other settings
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'
