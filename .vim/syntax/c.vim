"call Rbpt()
call HiLongLn(80)
call HiEolWs()
"highlight clear Error


if exists("b:did_syntax")
    finish
endif
let b:did_syntax = 1
