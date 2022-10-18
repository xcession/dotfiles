" $HOME/.config/nvim/vim-plug/config/hexokinase.vim

" Installation {{{
" Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
" }}}

let g:Hexokinase_refreshEvents = ['InsertLeave']

let g:Hexokinase_optInPatterns = [
      \ 'full_hex',
      \ 'triple_hex',
      \ 'rgb',
      \ 'rgba',
      \ 'hsl',
      \ 'hsla',
      \ 'colour_names'
      \ ]

let g:Hexokinase_highlighters = ['backgroundfull']

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
