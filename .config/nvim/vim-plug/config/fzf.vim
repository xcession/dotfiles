" $HOME/.config/nvim/vim-plug/config/fzf.vim
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
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" Plug 'airblade/vim-rooter'
" }}}

" File Finder {{{

" search for git tracked files
nnoremap <leader>f :GFiles<CR>
" search all files
nnoremap <leader>F :Files<CR>

" }}}

" Buffer Finder {{{

" seach for open buffers
nnoremap <leader>b :Buffers<CR>
" seach buffer history
nnoremap <leader>h :History<CR>

" }}}

" Tag Finder {{{

" search for tags in current buffer
nnoremap <leader>t :BTags<CR>
" search for tags across project
nnoremap <leader>T :Tags<CR>

" }}}

" Line Finder {{{

" search for lines in current buffer
nnoremap <leader>l :BLines<CR>
" search for lines in loaded buffers
nnoremap <leader>L :Lines<CR>
" search for marked lines
nnoremap <leader>' :Marks<CR>

" }}}

" Project Finder {{{

nnoremap <leader>/ :Ag<Space>
nnoremap <leader>/ :Rg<Space>

" }}}

" Help Finder {{{

nnoremap <leader>H :Helptags!<CR>

" }}}

" More {{{

" search defined commands
nnoremap <leader>C :Commands<CR>
" search through :command history
nnoremap <leader>: :History:<CR>
" search key mappings
nnoremap <leader>M :Maps<CR>
" search filetype syntaxes
nnoremap <leader>s :Filetypes<CR>

" }}}

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
