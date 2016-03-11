set expandtab ts=4
let &sw = &ts

set cindent cinkeys=0{,0},0),:,0#,!^F,o,O,e
set cinoptions=>s,e0,n0,f0,{0,}0,^0,L-s,:0,=s,l1,b0,g0,hs,ps,t0,i2s,+s,c3,C1
set cinoptions+=/0,(2s,u0,U1,w1,W0,m1,M0,j0,J0,)20,*70,#0

set foldmethod=indent


if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1
