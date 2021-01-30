" $HOME/.config/nvim/vim-plug/plugins.vim
"        _                       _
" __   _(_)_ __ ___        _ __ | |_   _  __ _
" \ \ / / | '_ ` _ \ _____| '_ \| | | | |/ _` |
"  \ V /| | | | | | |_____| |_) | | |_| | (_| |
"   \_/ |_|_| |_| |_|     | .__/|_|\__,_|\__, |
"                         |_|            |___/
"
" GitHub:       https://github.com/xcession/dotfiles
" Maintainer:   Пэйнт (Tharawut Paripaiboon)

" Automatic vim-plug installation {{{

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" }}}

call plug#begin('~/.config/nvim/autoload/plugged')

" Make sure you use single quotes

Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
" Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'unblevable/quick-scope'
Plug 'Yggdroot/indentLine'

" Airline {{{

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" }}}

" Coc {{{

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

" }}}

" FZF {{{

Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" }}}

" Git {{{

Plug 'junegunn/gv.vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" }}}

" Language & Syntax {{{

Plug 'dense-analysis/ale'
Plug 'honza/vim-snippets'
Plug 'junegunn/vader.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tridactyl/vim-tridactyl'

" }}}

" Themes {{{

" Plug 'srcery-colors/srcery-vim'
Plug 'bignimbus/pop-punk.vim'

" }}}

" Initialize plugin system
call plug#end()

source $HOME/.config/nvim/vim-plug/config/airline.vim
source $HOME/.config/nvim/vim-plug/config/ale.vim
source $HOME/.config/nvim/vim-plug/config/coc.vim
source $HOME/.config/nvim/vim-plug/config/easymotion.vim
source $HOME/.config/nvim/vim-plug/config/fzf.vim
source $HOME/.config/nvim/vim-plug/config/hexokinase.vim
source $HOME/.config/nvim/vim-plug/config/indentline.vim
source $HOME/.config/nvim/vim-plug/config/limelight.vim
source $HOME/.config/nvim/vim-plug/config/quick-scope.vim
source $HOME/.config/nvim/vim-plug/config/signify.vim
" source $HOME/.config/nvim/vim-plug/config/srcery.vim
source $HOME/.config/nvim/vim-plug/config/ultisnips.vim

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
