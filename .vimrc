"set expandtab
set tabstop=4
set shiftwidth=4
" Prevent vim from beeping on errors
set visualbell t_vb=  " sic
" Shorten the delay certain key sequences can cause (e.g., <ESC><O>)
" (The delay has to do with control characters, I think.)
set timeoutlen=300
set linebreak
" Search case-insensitively if pattern contains no capital letters
" (Both options must be set for smartcase to work. Why? No idea.)
set ignorecase smartcase
set showcmd

try
	source ~/.vimrc-local
catch
	" ignore it
endtry

filetype on
filetype plugin on
filetype indent on
syntax on
set number

"if &ft == "python"
	"set nosmartindent
	"echo "nope"
"endif

"command Equal set noequalalways | set equalalways
" <C-w => does the same thing

"if !exists("my_autocmds")
	"let my_autocmds = 1
	"autocmd ColorScheme * highlight WhitespaceEOL ctermbg=red guibg=red
	"autocmd ColorScheme * match WhitespaceEOL /\s\+$/
"endif

augroup onfileload
	au!
	"au User * echom "onfileload run"
	au User * call matchadd('Error', '\s\+$')
	au User * if &filetype != '' | call matchadd('Error', '\%81v.\+', 0) | endif
	"au User * endif
	"au User * if &filetype != '' | call matchadd('Error', '\%81v.*', 0)
	"au User * if &filetype != '' | call matchadd('Error', '\%>80v', 0)
	"au User * set cinkeys-=0#
	"au User * if &filetype != "python" | set smartindent | echom "smartindent"
	"au User * endif
	au User * if &filetype == "python" | set nosmartindent |
				\ echom "nosmartindent"
	au User * endif
	"au User * call input("Enter...")
	"au User * call input("Enter...")
	au User * if &filetype != '' | RainbowParenthesesLoadBraces
	au User * endif
	au User * if &filetype != '' | RainbowParenthesesLoadRound
	au User * endif
	au User * if &filetype != '' | call rainbow_parentheses#activate()
	au User * endif
augroup END

"au BufRead * call matchadd('Keyword', '[{}]')

"au VimEnter * if &filetype != '' | RainbowParenthesesLoadBraces
"au VimEnter * endif
"au VimEnter * if &filetype != '' | RainbowParenthesesLoadRound
"au VimEnter * endif
""au VimEnter * if &filetype != '' | RainbowParenthesesToggle
"au VimEnter * if &filetype != '' | call rainbow_parentheses#activate() | endif

"au BufRead * if &filetype == '' | set smartindent


let w:created=1
autocmd WinEnter * if !exists('w:created') | let w:created=1 |
			\ doautocmd onfileload User | endif
autocmd VimEnter * doautocmd onfileload User
autocmd BufRead * doautocmd onfileload User
autocmd BufNewFile * doautocmd onfileload User

map <Leader>a <C-w>}

" courtesy of Zanthrus on Stack Overflow:
"au BufWritePost *.c,*.cpp,*.h silent! !ctags -R >/dev/null 2>&1 &

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
