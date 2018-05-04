autocmd! eachwin User <buffer>
    \ call clearmatches() | call HiLongLn(80) | call HiEolWs()
call rainbow#hook()
