" $HOME/.config/nvim/vim-plug/config/nnn.vim

" Installation {{{
" Plug 'mcchrish/nnn.vim'
" }}}

" Disable default mappings
let g:nnn#set_default_mappings = 0

nnoremap <silent> <leader>nn :NnnPicker<CR>
nnoremap <leader>n :NnnPicker '%:p:h'<CR>

" Open nnn in floating window
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }

let g:nnn#action = {
      \ '<c-t>': 'tab split',
      \ '<c-x>': 'split',
      \ '<c-v>': 'vsplit' }

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
