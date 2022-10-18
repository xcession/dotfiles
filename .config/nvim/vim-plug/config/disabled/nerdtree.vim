" $HOME/.config/nvim/vim-plug/config/nerdtree.vim

" Installation {{{
" Plug 'preservim/nerdtree'
" Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" }}}

" Show hidden files
let NERDTreeShowHidden=1

" Close NERDTree after opening a file
let NERDTreeQuitOnOpen=1

" Toggle NERDTree
map <C-f> :NERDTreeToggle<CR>
map <Leader>n :NERDTreeFind<CR>

" If more than one window and previous buffer was NERDTree, go back to it
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" Open NERDTree automatically when vim starts up if no files where specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if the only window left open is a NERDTree
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Highlight full name (not only icons)
let g:NERDTreeFileExtensionHighlightFullName=1
let g:NERDTreeExactMatchHighlightFullName=1
let g:NERDTreePatternMatchHighlightFullName=1

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
