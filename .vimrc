"basic stuff
set nocompatible
set bs=2
set modelines=0

"set columns=80

let loaded_matchparen = 1
"pathogen plugin
call pathogen#infect()
filetype plugin on
filetype indent on

" leader is <space>
let mapleader=" "

"ctrlP plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

"keep a lot of commands in history
set history=1000

" Enable mouse use in all modes
set mouse=a

" BUFFERS
"hide buffers instead of closing them
set hidden
nnoremap <TAB> :ls<cr>:b

"show line numbers
set number

set laststatus=2    "Always show status line
"set showmatch       "Show matching brackets

"set lines to be 80 characaters long
" set tw=80

"syntax hl
syntax on

"bg color
set bg=dark

set hlsearch
"highlight as you search
set incsearch 

"and for disabling highlighting after a search
nnoremap <cr> :nohl<cr><cr>

"show the line / column in the status bar
set ruler

set ignorecase "ignore case while searching
set smartcase "ignore case if pattern all lowercase, else not.

"get rid of those annoying backup and swap files
set nobackup
set noswapfile
set nowb

"indentation
set tabstop=2 "width (in whitespaces) of a tab character
set shiftwidth=2
set softtabstop=2
set expandtab "put spaces instead of tabs

set autoindent
set smartindent

"copy the previous indent on autoindent
set copyindent 

"insert tab on the start of a line 
"according to shiftwidth, not tabstop
set smarttab

"show the mode and the current command if there's one
set showmode
set showcmd

"disable arrows
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

"enable 256 colors in vim
"also, have XTerm*termName : rxvt-256color in your .Xresources
set t_Co=256

"colorscheme
colo molokai

"navigating through pane
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"reselect previously selected block after '>'
vmap > >gv
vmap < <gv

"keep y consistent with d and c, so Y means y$
nnoremap Y y$

"invisible characters (show with set list)
set listchars=tab:»\ ,eol:¬
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«

"invisible character colors 
highlight NonText guifg=#000000 ctermfg=darkgray
"highlight NonText guibg=#000000 ctermbg=darkgray
highlight SpecialKey guifg=#000000 ctermfg=darkgray
"highlight SpecialKey guibg=#000000 ctermbg=darkgray
"quick fold of C functions around {}
"nnoremap <leader>f zfaB
"nnoremap <leader>d zd

"disable some annoying  stuff
nnoremap Q <nop>
nnoremap K <nop>
nnoremap <F1> <nop>
inoremap <F1> <nop>

"disable startup message
set shortmess+=I

"in command mode, complete filenames bash-style
set wildmode=longest,list

"open splits in intuitive places 
set splitbelow
set splitright

nnoremap j gj
nnoremap k gk

inoremap jj <esc>

"useful leader maps
nnoremap <leader>e :e #<cr>

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

"quickly edit/reaload the vimrc file
nmap <silent> <leader>p :e $MYVIMRC<cr>

"paste from X's clipboard ( with xclip )
"don't need vim compiled with X-clipboard support, cool thing.
nnoremap <leader>p :r! xclip -o<cr>

"toggle set list
nnoremap <leader>h :set nolist!<cr>

" splits
nnoremap <leader>s :sp<cr><cr>
nnoremap <leader>v :vsp<cr><cr>

set title titlestring=%f\ -\ %F

" dark
set background=dark

