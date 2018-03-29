set nocompatible

if exists("g:did_vimrc")
    finish
endif
let g:did_vimrc = 1

" Enable syntax highlighting and automatic indentation.
filetype on
filetype plugin on
syntax on

" Disable per-directory vimrc files.
set noexrc

" Prevent vim from beeping on errors.
set visualbell t_vb=

" Shorten the delay certain key sequences can cause (e.g., <ESC><O>).
" (The delay has to do with control characters, I think.)
set timeoutlen=300

" Soft-wrap lines at word boundaries.
set wrap linebreak

" Search case-insensitively if pattern contains no capital letters.
set ignorecase smartcase

" Show commands as they're typed.
set showcmd

" Always show the status line.
set laststatus=2

" Don't highlight search matches.
set nohlsearch

" Don't show folds (doesn't always work for some reason).
set nofoldenable

" Always keep at least five lines visible above and below the cursor.
set scrolloff=5

" Round indentation to the nearest multiple of shiftwidth.
set shiftround

" Enable keycode timeout and disable mapped command timeout.
set notimeout ttimeout


" Disable matchparen plugin.
let g:loaded_matchparen = 1

set number ruler

noremap Y y$
noremap - "_
nnoremap <space> i
inoremap <C-f> <ESC>


func HiLongLn(len)
    call matchadd('Error', '\%' . a:len . 'v.\+', 0)
endf

func HiEolWs()
    call matchadd('Error', '\s\+$')
endf

func Rbpt()
    RainbowParenthesesLoadBraces
    RainbowParenthesesLoadRound
    RainbowParenthesesLoadSquare
    call rainbow_parentheses#activate()
endf

map <Leader>O :%foldc<Enter>
map <Leader>o :%foldo<Enter>

let g:rainbow_active = 1

colorscheme elflord
