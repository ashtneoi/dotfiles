set nocompatible
let loaded_matchparen = 1

execute pathogen#infect()

syntax on
filetype plugin indent on
colorscheme elflord

set visualbell t_vb=
set notimeout ttimeout timeoutlen=300
set wrap linebreak
set ignorecase smartcase
set showcmd
set laststatus=2
set nohlsearch
set nofoldenable
set scrolloff=5
set shiftround
set number ruler

noremap Y y$
noremap - "_

let g:rainbow_conf = { 'cterm': 'bold' }
let g:rainbow_active = 1

func EachWin()
    call rainbow#hook()
endfunc

autocmd VimEnter * call EachWin() | let w:created = 1
autocmd WinEnter * if !exists('w:created')
    \ | call EachWin()
    \ | let w:created = 1
    \ | endif
