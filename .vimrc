" Vundle BEGIN ------------------- 

set nocompatible              
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" autopairs
Plugin 'jiangmiao/auto-pairs'

" Supertab
Plugin 'ervandew/supertab'

"startify
Plugin 'mhinz/vim-startify'

" ctrlp.vim
Plugin 'kien/ctrlp.vim'

" Easymotion
Plugin 'Lokaltog/vim-easymotion'

" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" surround
Plugin 'tpope/vim-surround'

" nerdcommenter
Plugin 'scrooloose/nerdcommenter'

" nerdtree
Plugin 'scrooloose/nerdtree'

" gitgutter
Plugin 'airblade/vim-gitgutter'
" Gist
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
" General languages support
Plugin 'sheerun/vim-polyglot'

" rails vim support 
Plugin 'tpope/vim-rails'

" React JS support
Plugin 'mxw/vim-jsx'

" elixir support
Plugin 'elixir-lang/vim-elixir'

" Colors
Plugin 'ajh17/Spacegray.vim'

call vundle#end()           
filetype plugin indent on    
filetype plugin on    

" Vundle END ----------------------- 

" General
set autoread
set showcmd " Display incomplete commands 
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set encoding=utf-8
set termencoding=utf-8
set laststatus=2
set autoread

" Identation
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab 
set copyindent 

" Line Numbering
set number
"set relativenumber 

" Autocomplete in command line
set wildmenu                       
set wildmode=longest,full    
if exists("&wildignorecase")
  set wildignorecase 
endif

" Searching
set hlsearch
set incsearch
set ignorecase

" Disable Arrow Navigation
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Mapings
let mapleader=","
map <Leader>n :NERDTreeToggle<CR>
map <Leader>w :w<CR>
" Font
set guifont=Inconsolata\ for\ Powerline:h18
" Colors
syntax on
set background=dark
colorscheme hybrid 

" Split
set splitbelow
set splitright
" gitgutter
let g:gitgutter_enabled=1
" airline
let g:airline#extensions#whitespace#enabled=0
let g:airline_symbols = {}
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_theme='wombat'
" youcompleteme
let g:ycm_python_binary_path = 'python'
let g:ycm_global_ycm_extra_conf = '~/vim./.ycm_extra_conf.py'
"" The Silver Searcher
if executable('ag')
  "Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" MacVim Only
if has("gui_running")

  set transparency=0
  set lines=999 columns=999
  " GUI Options
  set guioptions=T
  set guioptions=m
endif
inoremap jk <esc>
