set nocompatible
let g:loaded_matchparen = 1

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
let g:rainbow_active = 0

func EachWin()
    " `silent` suppresses 'No matching autocommands' warning.
    if !exists('w:created')
        let w:created = 1
        silent doautocmd eachwin User <buffer>
    endif
endfunc

func EachBuf()
    if !exists('b:created')
        let b:created = 1
        silent! unlet w:created
    endif
endfunc

if !exists('g:did_vimrc')
    augroup eachwin
    augroup END

    autocmd VimEnter * call EachBuf() | call EachWin()
    autocmd WinEnter * call EachWin()
    autocmd BufNewFile,BufReadPost,FilterReadPost,FileReadPost *
        \ call EachBuf() | call EachWin()

    let g:did_vimrc = 1
endif

func HiLongLn(len)
    call matchadd('Error', '\%' . a:len . 'v.\+', 0)
endf

func HiEolWs()
    call matchadd('Error', '\s\+$')
endf
