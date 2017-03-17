#!/usr/bin/env bash
echo 'Proto!Recv-Q!Send-Q!Local Address!Foreign Address!State!User!Inode!PID/Program name!Timer' | cat - <(sed 's_ _!_g' <(tail -n +3 <(netstat -eopNW -Ainet $* 2>/dev/null)) | sed -r 's_!+_!_g') | column -t -s '!'
