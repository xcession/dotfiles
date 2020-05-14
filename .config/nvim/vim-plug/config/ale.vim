" $HOME/.config/nvim/vim-plug/config/ale.vim
"        _                       _
" __   _(_)_ __ ___        _ __ | |_   _  __ _
" \ \ / / | '_ ` _ \ _____| '_ \| | | | |/ _` |
"  \ V /| | | | | | |_____| |_) | | |_| | (_| |
"   \_/ |_|_| |_| |_|     | .__/|_|\__,_|\__, |
"                         |_|            |___/
"
" GitHub:       https://github.com/xcession/dotfiles
" Maintainer:   Пэйнт (Tharawut Paripaiboon)

" ale {{{

let g:ale_linters={
      \ 'python': ['flake8', 'pylint'],
      \ 'javascript': ['eslint'],
      \ 'vue': ['eslint']
      \}

let g:ale_fixers={
      \ 'javascript': ['eslint'],
      \ 'typescript': ['prettier', 'tslint'],
      \ 'vue': ['eslint'],
      \ 'scss': ['prettier'],
      \ 'html': ['prettier'],
      \ 'reason': ['refmt']
      \}

let g:ale_fix_on_save=1

" Move to the next ALE warning / error
nnoremap ]r :ALENextWrap<CR>
" Move to the previous ALE warning / error
nnoremap [r :ALEPreviousWrap<CR>

" }}}

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
