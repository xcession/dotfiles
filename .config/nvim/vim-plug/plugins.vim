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

" File Explorer {{{

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

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

" Intellisense {{{

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

" }}}

" Language & Syntax {{{

Plug 'dense-analysis/ale'
Plug 'honza/vim-snippets'
Plug 'junegunn/vader.vim'
Plug 'sheerun/vim-polyglot'

" }}}

" Themes {{{

Plug 'srcery-colors/srcery-vim'

" }}}

" Initialize plugin system
call plug#end()

source $HOME/.config/nvim/vim-plug/config/ale.vim
source $HOME/.config/nvim/vim-plug/config/easymotion.vim
source $HOME/.config/nvim/vim-plug/config/fzf.vim
source $HOME/.config/nvim/vim-plug/config/hexokinase.vim
source $HOME/.config/nvim/vim-plug/config/indentline.vim
source $HOME/.config/nvim/vim-plug/config/limelight.vim
source $HOME/.config/nvim/vim-plug/config/lsp-config.vim
source $HOME/.config/nvim/vim-plug/config/nvim-tree.vim
source $HOME/.config/nvim/vim-plug/config/quick-scope.vim
source $HOME/.config/nvim/vim-plug/config/signify.vim
source $HOME/.config/nvim/vim-plug/config/ultisnips.vim
source $HOME/.config/nvim/vim-plug/config/themes/airline.vim
luafile $HOME/.config/nvim/vim-plug/config/compe-config.lua
luafile $HOME/.config/nvim/vim-plug/config/lsp-bash.lua
luafile $HOME/.config/nvim/vim-plug/config/lsp-css.lua
luafile $HOME/.config/nvim/vim-plug/config/lsp-html.lua
luafile $HOME/.config/nvim/vim-plug/config/lsp-python.lua
luafile $HOME/.config/nvim/vim-plug/config/lsp-ts.lua

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
