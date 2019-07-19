nnoremap <Leader>w :call NMapWorkman()<CR>

function! NMapWorkman()
    noremap q d
    noremap d s
    noremap r r
    noremap w c

    noremap Q D
    noremap D S
    noremap R R
    noremap W C

    noremap a i
    onoremap a a
    noremap s O
    onoremap s i
    noremap h o
    onoremap h f
    noremap t a
    onoremap t t

    noremap A I
    noremap T A

    noremap z N
    noremap x x
    noremap m p
    noremap c n

    noremap X X
    noremap M P

    noremap f B
    noremap u <C-d>
    noremap p <C-u>
    noremap ; W

    noremap F 0
    noremap U G
    noremap P gg
    noremap : $

    noremap y y
    noremap n h
    noremap e gj
    noremap ge j
    noremap o gk
    noremap go k
    noremap i l

    noremap Y y$
    noremap N M
    noremap E 5j
    noremap O 5k
    noremap I M

    noremap <C-n> <C-w>h
    noremap <C-e> <C-w>j
    noremap <C-o> <C-w>k
    noremap <C-i> <C-w>l

    noremap k u
    noremap l <C-r>
    noremap ' V
    noremap " :

    noremap <Space> f
    noremap <BS> ;

    inoremap <C-f> <Esc>
endfunction

call NMapWorkman()
