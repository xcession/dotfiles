" --------------------

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Themes
"
Plug 'jaredgorski/spacecamp'

" Modules
"
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'

" Languages
"
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tpope/vim-markdown'

" Initialize plugin system
call plug#end()

" --------------------

let NERDTreeShowHidden=1    " Show hidden files.
let NERDTreeQuitOnOpen=1    " Close NERDTree after opening a file.

set termguicolors   " Enable true colors support.

set relativenumber

set tabstop=2       " The width of a TAB is set to n.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of n.

set shiftwidth=2    " Indents will have a width of n.

set softtabstop=4   " Sets the number of columns for a TAB.

set expandtab       " Expand TABs to spaces

colorscheme spacecamp

let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled = 1            " Enable tab line
let g:airline#extensions#tabline#formatter = 'default'  " Tab line path formatter

" Switch between different windows by their direction.
no <C-j> <C-w>j| " switching to below window 
no <C-k> <C-w>k| " switching to above window
no <C-l> <C-w>l| " switching to right window 
no <C-h> <C-w>h| " switching to left window

" --------------------

let g:ale_linters = {
      \ 'python': ['flake8', 'pylint'],
      \ 'javascript': ['eslint'],
      \ 'vue': ['eslint']
      \}

let g:ale_fixers = {
      \ 'javascript': ['eslint'],
      \ 'typescript': ['prettier', 'tslint'],
      \ 'vue': ['eslint'],
      \ 'scss': ['prettier'],
      \ 'html': ['prettier'],
      \ 'reason': ['refmt']
      \}

let g:ale_fix_on_save = 1

nnoremap ]r :ALENextWrap<CR>        " Move to the next ALE warning / error.
nnoremap [r :ALEPreviousWrap<CR>    " Move to the previous ALE warning / error.

" --------------------

let g:deoplete#enable_at_startup = 1

" --------------------

map <C-n> :NERDTreeToggle<CR>       " Toggle NERDTree
map <Leader>n :NERDTreeFind<CR>

" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" Open NERDTree automatically when vim starts up if no files where specified.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if the only window left open is a NERDTree.
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" --------------------

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let g:markdown_syntax_conceal = 0

" --------------------

