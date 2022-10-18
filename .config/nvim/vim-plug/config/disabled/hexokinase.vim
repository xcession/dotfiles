" $HOME/.config/nvim/vim-plug/config/hexokinase.vim
"        _                       _
" __   _(_)_ __ ___        _ __ | |_   _  __ _
" \ \ / / | '_ ` _ \ _____| '_ \| | | | |/ _` |
"  \ V /| | | | | | |_____| |_) | | |_| | (_| |
"   \_/ |_|_| |_| |_|     | .__/|_|\__,_|\__, |
"                         |_|            |___/
"
" GitHub:       https://github.com/xcession/dotfiles
" Maintainer:   Пэйнт (Tharawut Paripaiboon)

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
