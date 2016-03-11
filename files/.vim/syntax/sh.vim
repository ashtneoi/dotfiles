call HiLongLn(80)
call HiEolWs()

if exists("b:did_syntax")
    finish
endif
let b:did_syntax = 1
