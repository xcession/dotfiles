"
"        _                    
" __   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
" (_)_/ |_|_| |_| |_|_|  \___|
"
"
" Filename:     .vimrc
" GitHub:       https://github.com/xcession/dotfiles
" Maintainer:   Пэйнт (Tharawut Paripaiboon)

" Plugins {{{

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
"Plug 'junegunn/goyo.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'preservim/nerdcommenter'
Plug 'SirVer/ultisnips'
"Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-characterize'
"Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'unblevable/quick-scope'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Coc {{{

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

"}}}

" NERDTree {{{

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

"}}}

" Languages {{{

Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-markdown'

"}}}

" Themes {{{

"Plug 'jaredgorski/spacecamp'
Plug 'morhetz/gruvbox'

"}}}

" Initialize plugin system
call plug#end()

"}}}

" Basic Settings {{{

set encoding=UTF-8
set termguicolors         " Enable true colors support.
set number relativenumber " Show current line number and relative line numbers.
set showmatch             " Show matching brackets.
set formatoptions+=o      " Continue comment marker in new lines.
set expandtab             " Expand TABs to spaces
set linespace=2
set tabstop=2             " The width of a TAB is set to n.
                          " Still it is a \t. It is just that
                          " Vim will interpret it to be having
                          " a width of n.
set shiftwidth=2          " Indents will have a width of n.
set softtabstop=4         " Sets the number of columns for a TAB.

" More natural splits
set splitbelow            " Horizontal split below current.
set splitright            " Vertical split to right of current.

if !&scrolloff
  set scrolloff=3         " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5     " Show next 5 columns while side-scrolling.
endif
set nostartofline         " Do not jump to first character with page commands.

set ignorecase            " Case insensitive search

" Use system clipboard
set clipboard+=unnamedplus

colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark=('hard')
let g:gruvbox_contrast_light=('medium')

filetype plugin on

" Map the leader key to SPACE
let mapleader="\<SPACE>"

" Disable arrow keys
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

" Switch between different windows by their direction.
no <C-j> <C-w>j| " switching to below window 
no <C-k> <C-w>k| " switching to above window
no <C-l> <C-w>l| " switching to right window 
no <C-h> <C-w>h| " switching to left window

"}}}

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

nnoremap ]r :ALENextWrap<CR>        " Move to the next ALE warning / error.
nnoremap [r :ALEPreviousWrap<CR>    " Move to the previous ALE warning / error.

"}}}

" hexokinase {{{

let g:Hexokinase_refreshEvents = ['InsertLeave']

let g:Hexokinase_optInPatterns = [
      \ 'full_hex',
      \ 'triple_hex',
      \ 'rgb',
      \ 'rgba',
      \ 'hsl',
      \ 'hsla',
      \ 'colour_names'
      \ ]

let g:Hexokinase_highlighters = ['backgroundfull']

"}}}

" ultisnips {{{

" Trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"

" :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"}}}

" coc {{{

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

"}}}

" quick-scope {{{

let g:qs_highlight_on_keys=['f', 'F', 't', 'T']
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline

"}}}

" vim-airline {{{

let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled=2
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#right_sep=' '
let g:airline#extensions#tabline#right_alt_sep='|'
let g:airline_left_sep=' '
let g:airline_left_alt_sep='|'
let g:airline_right_sep=' '
let g:airline_right_alt_sep='|'
let g:airline#extensions#tabline#formatter='default'

"}}}

" nerdtree {{{

let NERDTreeShowHidden=1    " Show hidden files.
let NERDTreeQuitOnOpen=1    " Close NERDTree after opening a file.

map <C-f> :NERDTreeToggle<CR>       " Toggle NERDTree
map <Leader>n :NERDTreeFind<CR>

" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" Open NERDTree automatically when vim starts up if no files where specified.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if the only window left open is a NERDTree.
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"}}}

" vim-nerdtree-syntax-highlight {{{

" Highlight full name (not only icons).
let g:NERDTreeFileExtensionHighlightFullName=1
let g:NERDTreeExactMatchHighlightFullName=1
let g:NERDTreePatternMatchHighlightFullName=1

"}}}

" vim-jsx-pretty {{{

let g:vim_jsx_pretty_colorful_config=1 " default 0

"}}}

" vim-markdown {{{

let g:markdown_fenced_languages=['html', 'python', 'bash=sh']
let g:markdown_syntax_conceal=0

"}}}
