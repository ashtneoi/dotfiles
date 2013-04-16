set smartindent
"set expandtab
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


"command Equal set noequalalways | set equalalways
" <C-w => does the same thing

"if !exists("my_autocmds")
	"let my_autocmds = 1
	"autocmd ColorScheme * highlight WhitespaceEOL ctermbg=red guibg=red
	"autocmd ColorScheme * match WhitespaceEOL /\s\+$/
"endif

augroup mysyntax
	au!
	au User * call matchadd('Error', '\s\+$')
	"au User * if &filetype != '' | call matchadd('Error', '\%81v.\+', 0)
	"au User * if &filetype != '' | call matchadd('Error', '\%81v.*', 0)
	au User * if &filetype != '' | call matchadd('Error', '\%>80v', 0)
	au User * if &filetype != '' | RainbowParenthesesLoadBraces
	au User * if &filetype != '' | RainbowParenthesesLoadRound
	"au User * if &filetype != '' | call rainbow_parentheses#activate()
augroup END

"au BufRead * call matchadd('Keyword', '[{}]')

au VimEnter * if &filetype != '' | RainbowParenthesesLoadBraces
au VimEnter * if &filetype != '' | RainbowParenthesesLoadRound
"au VimEnter * if &filetype != '' | RainbowParenthesesToggle
au VimEnter * if &filetype != '' | call rainbow_parentheses#activate()


let w:created=1
autocmd WinEnter * if !exists('w:created') | let w:created=1 |
			\ doautocmd mysyntax User | endif
autocmd BufRead * doautocmd mysyntax User
autocmd BufNewFile * doautocmd mysyntax User

let g:rbpt_colorpairs = [
			\ ['darkgreen',   'RoyalBlue3'],
			\ ['darkcyan',    'SeaGreen3'],
			\ ['red',         'DarkOrchid3'],
			\ ['Darkblue',    'firebrick3'],
			\ ['darkgreen',   'RoyalBlue3'],
			\ ['darkcyan',    'SeaGreen3'],
			\ ['red',         'DarkOrchid3'],
			\ ['darkmagenta', 'firebrick3'],
			\ ['brown',       'RoyalBlue3'],
			\ ['gray',        'SeaGreen3'],
			\ ['darkmagenta', 'DarkOrchid3'],
			\ ['Darkblue',    'firebrick3'],
			\ ['darkgreen',   'RoyalBlue3'],
			\ ['darkcyan',    'SeaGreen3'],
			\ ['red',     	  'DarkOrchid3'],
			\ ['gray',        'firebrick3'],
			\ ]

colorscheme elflord
