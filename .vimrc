set nocompatible " be iMproved, required
set modelines=0 " don't read modelines

" make backspace act normally (2:indent,eol,start)
set bs=2

" root uses this vimrc too
if $USER != 'root'

    "filetype off  " required by Vundle

    " set the runtime path to include Vundle and initialize
    "set rtp+=~/.vim/bundle/Vundle.vim
    "call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    "Plugin 'VundleVim/Vundle.vim'

    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin on GitHub repo
    "Plugin 'tpope/vim-fugitive'
    "Plugin 'scrooloose/nerdtree'

    " Conque-Shell
    " https://github.com/vim-scripts/Conque-Shell.git
    " Plugin 'vim-scripts/Conque-Shell'

    " Indent Guides
    " https://github.com/nathanaelkane/vim-indent-guides.git
    " Plugin 'nathanaelkane/vim-indent-guides'

    " All of your Plugins must be added before the following line
    " call vundle#end()            " required
    " filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    " Put your non-Plugin stuff after this line

    "NerdTree toggle
    "map <C-n> :NERDTreeToggle<CR>

endif " end of root user condition

"set columns=80

"enable hightlight of matching parenthesis
"call s:hibg("MatchParen","#FF0000","Red",18)

"disables the standard plugin that highlights matching parenthesis
"see 'help matchparen'
"let loaded_matchparen = 1

" enable internal vim plugins
filetype plugin on
filetype indent on

" leader is <space>
let mapleader=" "

" quickly edit .vimrc
nnoremap <F11> :vs $MYVIMRC<cr>
nnoremap <F9> :tabp<cr>
nnoremap <F10> :tabn<cr>

" wildmenu
" set wildchar=<Tab> wildmenu wildmode=full
" set wildcharm=<C-Z>
set wildmenu

"keep a lot of commands in history
set history=1000

"Enable mouse use in all modes
set mouse=a

"BUFFERS
"hide buffers instead of closing them
set hidden
nnoremap <F2> :ls<cr>:b

"show line numbers
set number

set laststatus=2    "Always show status line
set statusline=cwd:%{getcwd()}\ \-\ %f
set statusline+=%m      "modified flag
set statusline+=[enc=%{&fenc}][ff=%{&ff}]     "modified flag
set statusline+=col:%c     "modified flag
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"set statusline=%f
"set statusline+=%m
"set statusline+=%=
"set statusline+=%{getcwd()}

"set showmatch       "Show matching brackets

"set lines to be 80 characaters long
" set tw=80

"syntax hl
syntax on

"bg color
set bg=dark

"highlight as you search, incremental search
set hlsearch
set incsearch

"and for disabling highlighting after a search
" nnoremap <cr> :nohl<cr>

"show the line / column in the status bar
"useless if statusbar redefined
" set ruler

set ignorecase "ignore case while searching
set smartcase "ignore case if pattern all lowercase, else not.

"get rid of those annoying backup and swap files, and no writebackup
set nobackup
set noswapfile
set nowb

"indentation
set tabstop=4 "width (in whitespaces) of a tab character
set shiftwidth=4
set softtabstop=4
set expandtab "put spaces instead of tabs

set autoindent
"set smartindent

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

"navigating through pane
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"reselect previously selected block after '>'
"vmap > >gv
"vmap < <gv

"keep y consistent with d and c, so Y means y$
nnoremap Y y$

"invisible characters (show with set list)
"et listchars=tab:»\ ,eol:¬
"set listchars+=trail:·
"set listchars+=extends:»
"et listchars+=precedes:«

set showbreak=↪\
set listchars=tab:→\ ,eol:¬,nbsp:␣,trail:•,extends:»,precedes:«

"invisible character colors (this should be in gvimrc)
"highlight NonText guifg=#000000 ctermfg=darkgray
"highlight NonText guibg=#000000 ctermbg=darkgray
"highlight SpecialKey guifg=#000000 ctermfg=darkgray
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

"paste from X's clipboard ( with xclip )
"don't need vim compiled with X-clipboard support, cool thing.
"nnoremap <leader>p :r! xclip -o<cr>

"toggle set list
nnoremap <leader>h :set nolist!<cr>

set title titlestring=CWD:%{getcwd()}\ DIR:%f

" dark
set background=dark

set clipboard=unnamedplus

" command to generate a tags file on all installed python packages on the system
"ctags -R --fields=+l --languages=python --python-kinds=-iv -f ./tags
"$(python -c "import os, sys; print(' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)))")

" path stuff to make ':find' recurse under the directories
" starstar enables recurvise descending search, up to 30 levels
set path+=**

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" upwards search
" stop directory is /home/gabriel
" this will search upwards and downwards the path, stopping at /home/gabriel
" see :help file-searching
" set path=**;/home/gabriel
" takes way too much time to search.


" change indent depth for xml files
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2

" when editing files coming from multiple directories, change CWD to file's
" dir.
" automatically change window's cwd to file's dir
" set autochdir

" go to beginning of last pasted text
nnoremap gb `[

" select last pasted text with 'normal' visual mode
nnoremap gp `[v`]

" define a macro
" let @a='I<p>A</p>'

"cnoreabbrev <expr> x getcmdtype() == ":" && getcmdline() == "x" ? "w" : "w"

" set local cwd to directory of current file
nnoremap <leader>cd :lcd %:p:h<CR>:echo 'changed window cwd'<cr>

" inoremap <ESC> <ESC>:w<CR><ESC>
" nnoremap <ESC> :w<CR>

" python comment a visual selection
" vnoremap <leader>c :norm I#<cr>
" vnoremap <leader>c :'<,'>s!^!#!<CR>

" for gvim foreground and background color
highlight Normal guifg=white guibg=black

set relativenumber

" go to last viewed tab
"let g:lasttab = 1
"nmap <Leader>tt :exe "tabn ".g:lasttab<CR>
"au TabLeave * let g:lasttab = tabpagenr()

" autosave on focus lost. Only for GUI version...
" autocmd BufLeave,FocusLost * silent! wall

:command! Pybang :normal i#!/usr/bin/python2.7<CR>#-*- coding:utf-8 -*-<CR><ESC>
:command! Pudb :normal iimport pudb; pudb.set_trace()<ESC>

" search for all trailing whitespace
nnoremap <leader>n :/\s\+$<cr>

" TAGS
" tags path
set tags+=.tags,tags,./tags
" open ctag in tab/vertical split
" map <C-b> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" map <leader><C-b> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" tselect on current word, open selected tag in vertical split
map <c-b> :exec("vert sts ".expand("<cword>"))<cr>
map <leader><c-b> :exec("tab sts ".expand("<cword>"))<cr>

" do ltag, comeback, open location window, f8 to close it
nnoremap <leader>lt :exec("ltag ".expand("<cword>"))<cr><c-t>:lopen<cr>
nnoremap <f8> :lclose<cr>

" Try to show at least three lines and two columns of context when
" scrolling, and sidescroll size
set scrolloff=1
set sidescrolloff=1
set sidescroll=1

" Wrap on these
set whichwrap+=<,>,[,]

" Enable folds
"set foldenable
"set foldmethod=indent

" tabs
nnoremap gr gT
set showtabline=2

"save
nnoremap S :wa<CR>

" remap enter in the qf window (location window also has qf type)
" autocmd FileType qf nnoremap <buffer> <Enter> <C-W><Enter><C-W>T

nnoremap <leader>w :set wrap!<cr>

" random function
"function! JoinOpenBuffers()
    "let tpbl=[]
    "call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    "for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        "" silent execute 'bwipeout' buf
        "" execute 'split' buf
        "echo buf('#')
    "endfor
"endfunction

" NETRW
" enable preview with 'p'
let g:netrw_preview = 1

nnoremap <leader>f :find<space>

" for some reason it got broken, have to unamp CR
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

nnoremap <leader>g :silent grep! -Rn<space>

