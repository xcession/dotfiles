" $HOME/.config/nvim/vim-plug/config/ultisnips.vim
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
" Plug 'SirVer/ultisnips'
" }}}

" Snippets directory
" let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]
let g:UltiSnipsSnippetDirectories=["snips"]

" Trigger configuration
let g:UltiSnipsExpandTrigger="<tab>"

" Go to next tabstop
let g:UltiSnipsJumpForwardTrigger="<c-j>"

" Go to previous tabstop
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" :UltiSnipsEdit to split your window
"let g:UltiSnipsEditSplit="vertical"

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
