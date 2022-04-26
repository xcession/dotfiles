" $HOME/.config/nvim/vim-plug/config/easymotion.vim

" Installation {{{
" Plug 'easymotion/vim-easymotion'
" }}}

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" HL motions: Within line motions
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Keep cursor column when JK motion
let g:EasyMotion_startofline = 0

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
