
"------------------------------------------------------------------------------
"place to put command

"hex
"%!xxd

"------------------------------------------------------------------------------
" from centOS
set nocompatible
set bs=indent,eol,start         " allow backspacing over everything in insert mode
"set ai                 " always set autoindenting on
"set backup             " keep a backup file
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
                        " than 50 lines of registers
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time

" Disable the default Vim startup message.
set shortmess+=I
"------------------------------------------------------------------------------

"colorscheme elflord
colorscheme ron

syntax on
"set si
set ai
set title

"move
"move at crawped line
map j gj
map k gk

"Tab2space
set expandtab
set tabstop=4
set shiftwidth=4

"Wrap Line Length
set colorcolumn=80
"for 256 color terminal,237 or 18
highlight ColorColumn ctermbg=237

"visual support
set cuc
set nu
set cul

"search
set hlsearch
" Enable searching as you type, rather than waiting till you press enter.
set incsearch

"replace visual assistant
if exists('&inccommand')
  set inccommand=split
endif

"for security
set secure
set nomodeline
set modelines=0

"utf8
set encoding=utf-8

" show search match count
set shortmess-=S
" Status Line Settings
set statusline=%F " Show file name
set statusline+=%m " Show modification
set statusline+=%r " Show if readonly
set statusline+=%= " align right after this
set statusline+=\ %y[%{&fileencoding}] " file encoding
set statusline+=[%{&ff}] " file format (dos/linux)
set statusline+=[%p%%][%L][line:%05l,col:%02v] " percentage, line, col

set laststatus=2 " Show status line (0:never, 1:two or more windows, 2:always)

"relativenumber
"set relativenumber

"dictionary
set dictionary+=/usr/share/dict/words

"auto reload
set autoread

"split
set splitbelow
set splitright
