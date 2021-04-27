" Installation {{{
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" }}}

" theme
let g:airline_theme='srcery'

" tabline
let g:airline#extensions#tabline#enabled=2
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#right_sep=' '
let g:airline#extensions#tabline#right_alt_sep='|'
let g:airline_left_sep=' '
let g:airline_left_alt_sep='|'
let g:airline_right_sep=' '
let g:airline_right_alt_sep='|'
let g:airline#extensions#tabline#formatter='default'

" powerline fonts
let g:airline_powerline_fonts=1

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
