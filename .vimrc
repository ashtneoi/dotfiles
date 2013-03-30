set smartindent
"set expandtab
"<Tab> inserts $shiftwidth spaces
set tabstop=4
set shiftwidth=4
set visualbell t_vb=
"[sic]
"Prevent vim from beeping on errors
set timeoutlen=300
"Shorten the delay certain key sequences can cause (e.g., <ESC><O>)
"(The delay has to do with control characters, I think.)
set linebreak
set ignorecase smartcase
"Search case-insensitively if pattern contains no capital letters
"(Both options must be set for smartcase to work. Why? No idea.)
set showcmd

filetype on
filetype plugin on
filetype indent on
syntax on
set number


command Equal set noequalalways | set equalalways

"if !exists("my_autocmds")
	"let my_autocmds = 1
	"autocmd ColorScheme * highlight WhitespaceEOL ctermbg=red guibg=red
	"autocmd ColorScheme * match WhitespaceEOL /\s\+$/
"endif

augroup my_autocmds
	au!
	call matchadd('Error', '\s\+$')
	call matchadd('Error', '\%81v.\+', 0)
augroup END

colorscheme elflord
