" Installation {{{
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" }}}

syntax on
colorscheme horizon

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" lightline
let g:lightline = {'colorscheme' : 'horizon'}

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
