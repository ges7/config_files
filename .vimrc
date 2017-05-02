"basic stuff
set nocompatible
set bs=2
set modelines=0

"set columns=80

let loaded_matchparen=1

filetype on
filetype plugin on
filetype indent on

" code omni-completion
set omnifunc=syntaxcomplete#Complete

" leader is <space>
let mapleader=" "

"ctrlP plugin
"set runtimepath^=~/.vim/bundle/ctrlp.vim

"keep a lot of commands in history
set history=1000

" Enable mouse use in all modes
set mouse=a

" BUFFERS
"hide buffers instead of closing them
set hidden

nnoremap <F2> :ls<cr>:b
inoremap <F2> :ls<cr>:b

nnoremap <F1> :b#<CR>
inoremap <F1> :b#<CR>

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

"highlight as you search
set hlsearch
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
set tabstop=4 "width (in whitespaces) of a tab character
set shiftwidth=4
set softtabstop=4
set expandtab "put spaces instead of tabs

"set autoindent
"set smartindent "useful for C indenting

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
"colo molokai

"navigating through windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"window resizing
noremap - <C-W><
noremap + <C-W>>

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
nnoremap <leader>e :e#<cr>

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

"quickly edit the vimrc file
nnoremap <leader>p :e $MYVIMRC<cr>

" paste from X's clipboard ( with xclip )
" no need when compiled with +X
" nnoremap <leader>p :r! xclip -o<cr>

"toggle hidden characters
nnoremap <leader>h :set nolist!<cr>

set title titlestring=%f 

" dark
" comment
set background=dark

" default register will be '+'
set clipboard=unnamedplus

" to avoid waiting when pressing esc to quit stuff in normal mode
" useless when the GUI is running for some reason
set timeoutlen=1000
set ttimeoutlen=0

