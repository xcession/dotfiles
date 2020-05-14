" $HOME/.config/nvim/vim-plug/config/signify.vim
"        _                       _
" __   _(_)_ __ ___        _ __ | |_   _  __ _
" \ \ / / | '_ ` _ \ _____| '_ \| | | | |/ _` |
"  \ V /| | | | | | |_____| |_) | | |_| | (_| |
"   \_/ |_|_| |_| |_|     | .__/|_|\__,_|\__, |
"                         |_|            |___/
"
" GitHub:       https://github.com/xcession/dotfiles
" Maintainer:   Пэйнт (Tharawut Paripaiboon)

" vim-signify {{{

let g:signify_sign_add                  = '+'
let g:signify_sign_delete               = '_'
let g:signify_sign_delete_first_line    = '‾'
let g:signify_sign_change               = '~'

let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" highlight SignifySignAdd                    ctermbg=green                   guibg=#00ff00
" highlight SignifySignDelete ctermfg=black   ctermbg=red     guifg=#ffffff   guibg=#ff0000
" highlight SignifySignChange ctermfg=black   ctermbg=yellow  guifg=#000000   guibg=#ffff00

" }}}

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
