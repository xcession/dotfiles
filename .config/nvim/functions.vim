" $HOME/.config/nvim/functions.vim

" ┏┓┓┳━┓┏━┓┓ ┳o┏┏┓
" ┃┃┃┣━ ┃ ┃┃┏┛┃┃┃┃
" ┛┗┛┻━┛┛━┛┗┛ ┛┛ ┛
"
" GitHub:       https://github.com/xcession/dotfiles
" Maintainer:   Пэйнт (Tharawut Paripaiboon)

" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

" Remove trailing whitespaces automatically before save
fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

augroup auto_trim_whitespace
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
augroup END

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
