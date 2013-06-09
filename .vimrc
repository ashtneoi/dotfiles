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
set laststatus=2

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

fu! Onfileload()
	"au User * echom "onfileload run"
	call matchadd('Error', '\s\+$')
	if &filetype != '' && &filetype != 'markdown' |
				\ call matchadd('Error', '\%81v.\+', 0) | endif
	"endif
	"if &filetype != '' | call matchadd('Error', '\%81v.*', 0)
	"if &filetype != '' | call matchadd('Error', '\%>80v', 0)
	"set cinkeys-=0#
	if &filetype == "python" | set nosmartindent | endif
	if &filetype != '' && &filetype != 'htmldjango'
		RainbowParenthesesLoadBraces
		RainbowParenthesesLoadRound
		call rainbow_parentheses#activate()
	endif

	if exists('*Onfileload_local')
		call Onfileload_local()
	endif
endf

try
	source ~/.vimrc-local-autocmd
catch
	" ignore it
endtry

"au BufRead * call matchadd('Keyword', '[{}]')

let w:created=1
autocmd WinEnter * if !exists('w:created') | let w:created=1 |
			\ call Onfileload() | endif
autocmd VimEnter * call Onfileload()
autocmd BufRead * call Onfileload()
autocmd BufNewFile * call Onfileload()

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
