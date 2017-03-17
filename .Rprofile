options(pager="less")

clearws <- function() {
	rm(list=ls(pos=".GlobalEnv"), pos=".GlobalEnv");
}

Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
# (courtesy of http://stackoverflow.com/users/169947/ken-williams)
