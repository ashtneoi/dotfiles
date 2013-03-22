"highlight WhitespaceEOL ctermbg=red guibg=red
"match WhitespaceEOL /\s\+$/
set smartindent
"set expandtab
set tabstop=4
set shiftwidth=4
set vb t_vb=
set timeoutlen=300
set lbr
set ignorecase smartcase
"Both must be set for smartcase to work. Why? No idea.

filetype on
filetype plugin on
filetype indent on
syntax on
set number

command Equal set noequalalways | set equalalways

if !exists("russell_autocmds")
    let russell_autocmds = 1
    autocmd ColorScheme * highlight WhitespaceEOL ctermbg=red guibg=red
    autocmd ColorScheme * match WhitespaceEOL /\s\+$/
endif
colorscheme elflord
