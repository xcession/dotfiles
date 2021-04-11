" $HOME/.config/nvim/settings.vim
"                        _
"  _ __   ___  _____   _(_)_ __ ___
" | '_ \ / _ \/ _ \ \ / / | '_ ` _ \
" | | | |  __/ (_) \ V /| | | | | | |
" |_| |_|\___|\___/ \_/ |_|_| |_| |_|
"
" GitHub:       https://github.com/xcession/dotfiles
" Maintainer:   Пэйнт (Tharawut Paripaiboon)

" Settings {{{

" Disable line wrapping
set nowrap

" Enable syntax highlighting
syntax enable

" Required to keep multiple buffers open multiple buffers
set hidden

" The encoding displayed
set encoding=utf-8

" The encoding written to a file
set fileencoding=utf-8

" Treat dash separated words as a word text object
set iskeyword+=-

" Ignore the case when the search pattern is all lowercase
set smartcase
set ignorecase

" Incremental search
set incsearch

" Use system clipboard
set clipboard^=unnamed,unnamedplus

" Working directory will always be the same
" set autochdir

" Enable mouse
set mouse=a

" }}}

" Colors {{{

" Enable true colors support
set termguicolors

" Loading the plugin files for specific file types
filetype plugin on

source $HOME/.config/nvim/vim-plug/config/themes/gruvbox.vim

autocmd BufNewFile,BufRead *.json.template set syntax=json

" }}}

" Tabs and Spaces {{{

" Number of space characters for a tab stop
set tabstop=2 softtabstop=2

" Number of space characters inserted for indentation
set shiftwidth=2

" Make tabbing smarter will realize you have 2 vs 4
set smarttab

" Converts tabs to spaces
set expandtab

" Makes indenting smart
set smartindent

" Good auto indent
set autoindent

set linespace=2

" }}}

" UI {{{

" Show current and relative line numbers
set number relativenumber

" Show the cursor position all the time
set ruler

" Enable highlight of the current line
set cursorline

" Always show tabs
set showtabline=2

" Enable column ruler
set colorcolumn=80
" highlight ColorColumn ctermbg=246 guibg=#2d2d2d
set signcolumn=yes

" Show command characters
set showcmd

" More space for displaying messages
set cmdheight=2

" Always display the status line
set laststatus=0

" Show matching brackets
set showmatch

" Stop newline continution of comments
set formatoptions-=cro

" More natural splits
" Horizontal split below current
set splitbelow
" Vertical split to right of current
set splitright

if !&scrolloff
  " Show next 3 lines while scrolling
  set scrolloff=3
endif
if !&sidescrolloff
  " Show next 5 columns while side-scrolling
  set sidescrolloff=5
endif

" Do not jump to first character with page commands
set nostartofline

" }}}

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
