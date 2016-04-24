nnoremap <Leader>w :call NMapWorkman()<CR>

function! NMapWorkman()
    noremap q d
    noremap d s
    noremap r c
    noremap w r

    noremap Q D
    noremap D S
    noremap R C
    noremap W R

    noremap a i
    noremap s O
    noremap h o
    noremap t a

    noremap A I
    noremap T A

    noremap z N
    noremap c n

    noremap f 0
    noremap u G
    noremap p gg
    noremap ; $

    noremap F M
    noremap U L
    noremap P H
    noremap : M

    noremap n h
    noremap e j
    noremap o k
    noremap i l

    noremap N B
    noremap E <C-d>
    noremap O <C-u>
    noremap I W
    noremap ' V

    noremap " v

    noremap k u
    noremap l <C-r>
    noremap ? :

endfunction
