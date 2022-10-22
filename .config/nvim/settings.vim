" $HOME/.config/nvim/settings.vim

" ┏┓┓┳━┓┏━┓┓ ┳o┏┏┓
" ┃┃┃┣━ ┃ ┃┃┏┛┃┃┃┃
" ┛┗┛┻━┛┛━┛┗┛ ┛┛ ┛
"
" GitHub:       https://github.com/xcession/dotfiles
" Maintainer:   Пэйнт (Tharawut Paripaiboon)

" Providers {{{

" python
let g:python_host_prog = '/usr/local/opt/python/libexec/bin/python'
let g:python3_host_prog = '/usr/local/opt/python/libexec/bin/python'

" }}}

" Settings {{{

syntax enable                 " syntax highlighting, see :help syntax
set path+=**                  " improves searching, see :help path
set nowrap                    " disable line wrapping

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

set incsearch                 " see result while search is being typed, see :help incsearch


" Use system clipboard
set clipboard^=unnamed,unnamedplus

" Working directory will always be the same
" set autochdir

set mouse=a                   " enable mouse click

" }}}

" Colors {{{

" Enable true colors support
set termguicolors

" file type detection, see :help filetype
filetype plugin indent on

source $HOME/.config/nvim/theme.vim

autocmd BufNewFile,BufRead *.json.template set syntax=json

" }}}

" Font {{{

set guifont=Iosevka\ Nerd\ Font:12

" }}}

" Tabs and Spaces {{{

set tabstop=2                 " setting tab to 2 column
set softtabstop=2             " setting tab to 2 column
set shiftwidth=2              " setting tab to 2 column

" Make tabbing smarter will realize you have 2 vs 4
set smarttab

set expandtab                 " expanding tab to spaces

set smartindent               " auto indent on new lines, see :help smartindent

" Good auto indent
set autoindent

set linespace=2

" }}}

" UI {{{

set number                    " display line number
set relativenumber            " display relative line numbers

" Show the cursor position all the time
" set ruler

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
set laststatus=2
" Hide mode information. Use what in the status line instead
set noshowmode

set showmatch                 " display matching bracket or parenthesis

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
