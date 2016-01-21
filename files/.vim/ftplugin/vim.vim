if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1


set expandtab ts=4
let &sw=&ts

call HiLongLn(80)
call HiEolWs()
