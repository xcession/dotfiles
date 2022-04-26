" $HOME/.config/nvim/vim-plug/config/ultisnips.vim

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
