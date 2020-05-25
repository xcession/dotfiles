" $HOME/.config/nvim/vim-plug/config/easymotion.vim
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
