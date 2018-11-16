syntax on
filetype plugin indent on

set softtabstop=2
set tabstop=2
set expandtab
set autoindent shiftwidth=2
set nu
set mouse=a
set backspace=indent,eol,start
set signcolumn=yes
set incsearch
set ruler
set showcmd

highlight ColorColumn ctermbg=gray
set colorcolumn=80
set textwidth=80

let g:netrw_banner = 0
let g:netrw_browse_split = 2

autocmd vimenter * NERDTree
let NERDTreeShowHidden = 1

" Language Client

let g:LanguageClient_serverCommands = {
  \ 'haskell': ['hie-wrapper'],
  \ }
" cquery doesn't work well enough, so I disable them for now.
"  'cpp': ['cquery'],
"  'c': ['cquery']

map <F1> :call LanguageClient#textDocument_hover()<CR>
map <F2> :call LanguageClient#explainErrorAtPoint()<CR>
map <F3> :call LanguageClient#textDocument_codeAction()<CR>
map <F4> :call LanguageClient#textDocument_rename()<CR>
map <F5> :call LanguageClient#textDocument_formatting()<CR>
map <F6> :call LanguageClient#textDocument_definition()<CR>

hi link ALEError Error
hi Warning term=underline cterm=underline ctermfg=Yellow gui=undercurl
  \ guisp=Gold
hi link ALEWarning Warning
hi link ALEInfo SpellCap

set completeopt=longest,menuone

let g:buftabline_numbers = 0
let g:buftabline_separator = 1

" Add fzf to runtime path (not fzf.vim)
set rtp+=~/opt/fzf

