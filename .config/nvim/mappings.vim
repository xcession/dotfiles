" $HOME/.config/nvim/mappings.vim

" ┏┓┓┳━┓┏━┓┓ ┳o┏┏┓
" ┃┃┃┣━ ┃ ┃┃┏┛┃┃┃┃
" ┛┗┛┻━┛┛━┛┗┛ ┛┛ ┛
"
" GitHub:       https://github.com/xcession/dotfiles
" Maintainer:   Пэйнт (Tharawut Paripaiboon)

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use alt + hjkl to resize windows
nnoremap <M-h>  :vertical resize -2<CR>
nnoremap <M-j>  :resize -2<CR>
nnoremap <M-k>  :resize +2<CR>
nnoremap <M-l>  :vertical resize +2<CR>

" Disable arrow movement, resize splits instead.
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

" Clear search highlights
nnoremap <C-x> :nohl<CR>

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
