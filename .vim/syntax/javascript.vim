call HiLongLn(80)
call HiEolWs()
set et ts=4
let &sw=&ts
set autoindent


if exists("b:did_syntax")
    finish
endif
let b:did_syntax = 1
