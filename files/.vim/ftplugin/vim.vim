set expandtab ts=4
let &sw=&ts

set smartindent


if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1


call HiLongLn(80)
call HiEolWs()