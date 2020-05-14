" $HOME/.config/nvim/vim-plug/config/quick-scope.vim
"        _                       _
" __   _(_)_ __ ___        _ __ | |_   _  __ _
" \ \ / / | '_ ` _ \ _____| '_ \| | | | |/ _` |
"  \ V /| | | | | | |_____| |_) | | |_| | (_| |
"   \_/ |_|_| |_| |_|     | .__/|_|\__,_|\__, |
"                         |_|            |___/
"
" GitHub:       https://github.com/xcession/dotfiles
" Maintainer:   Пэйнт (Tharawut Paripaiboon)

" quick-scope {{{

let g:qs_highlight_on_keys=['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00c7df' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#ef5f70' gui=underline ctermfg=81 cterm=underline

let g:qs_max_chars=150

" }}}

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
