set nocompatible
let g:loaded_matchparen = 1

execute pathogen#infect()

syntax on
filetype plugin on
" No indent anymore. I hate vim with a burning fiery passion.
colorscheme industry

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
set nojoinspaces

noremap Y y$
noremap - "_

let g:rainbow_conf = {
        \ 'cterm': 'bold',
        \ 'ctermfgs': ['red', 'yellow', 'darkgreen', 'lightblue', 'darkmagenta']
    \}
let g:rainbow_active = 0

set expandtab tabstop=4 shiftwidth=4

func EachWin()
    if !exists('w:created')
        let w:created = 1
        " `silent` suppresses 'No matching autocommands' warning.
        silent doautocmd eachwinsyn User <buffer>
        silent doautocmd eachwinft User <buffer>
    endif
endfunc

func EachBuf()
    silent! unlet w:created
    call clearmatches()
    call EachWin()
endfunc

if !exists('g:did_vimrc')
    augroup eachwinsyn
    augroup eachwinft
    augroup eachwinind
    augroup END

    autocmd VimEnter * call EachBuf()
    autocmd WinEnter * call EachWin()
    autocmd BufNewFile,BufReadPost,FilterReadPost,FileReadPost,FileType,Syntax *
        \ call EachBuf()

    let g:did_vimrc = 1
endif

func HiLongLn(len)
    call matchadd('Error', '\%' . (a:len + 1) . 'c.\+', 0)
endf

func HiEolWs()
    call matchadd('Error', '\s\+$')
endf
