" Installation {{{
" Plug 'srcery-colors/srcery-vim'
" }}}

" Enable italic text (default: gui 1, term 0)
let g:srcery_italic = 1

" Removes the background color in terminal
let g:srcery_transparent_background = 1

" Enabled inverse matching delimiters
let g:srcery_inverse_match_paren = 1

syntax on
colorscheme srcery

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
