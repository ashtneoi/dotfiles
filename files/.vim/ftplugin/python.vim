set expandtab ts=4
let &sw=&ts

set smartindent cinwords=if,elif,else,while,for,with,try,except,def,class

set foldmethod=indent


if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1


call HiLongLn(80)
call HiEolWs()
call Rbpt()  " ??????
