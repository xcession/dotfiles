" $HOME/.config/nvim/vim-plug/config/ale.vim

" Installation {{{
" Plug 'dense-analysis/ale'
" }}}

" Less distracting when opening a new file
let g:ale_lint_on_enter = 0

" Less aggressive than the default '>>'
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

let g:ale_linters={
      \ 'python': ['flake8', 'pylint'],
      \ 'javascript': ['eslint'],
      \ 'vue': ['eslint']
      \}

let g:ale_fixers={
      \ 'html': ['prettier'],
      \ 'javascript': ['eslint'],
      \ 'php': ['prettier'],
      \ 'scss': ['prettier'],
      \ 'typescript': ['prettier', 'tslint'],
      \ 'vue': ['eslint']
      \}

let g:ale_fix_on_save=1

" Move to the next ALE warning / error
nnoremap ]r :ALENextWrap<CR>
" Move to the previous ALE warning / error
nnoremap [r :ALEPreviousWrap<CR>

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
