# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/russell/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setPrompt() {
	local Y=$'%{\e[1;33m%}' #yellow
	local G=$'%{\e[1;32m%}' #green
	local P=$'%{\e[1;35m%}' #purple
	local NC=$'%{\e[0m%}' #no color
	PS1=$'%(!.'$Y$'%n'$NC$'.'$P$'%n'$NC$')@%m ('$G$'%d'$NC$')%(!.'$Y$'#'$NC$'.'$P$'$'$NC$') '
}

setPrompt

#colored username and '$' or '#'
#PS1=$'%(!.%{\e[1;33m%}%n%{\e[0m%}.%{\e[1;35m%}%n%{\e[0m%})@%m (%{\e[1;32m%}%d%{\e[0m%})%(!.%{\e[1;33m%}#%{\e[0m%}.%{\e[1;35m%}$%{\e[0m%}) '

#colored username:
#PS1=$'%(!.%{\e[1;33m%}%n%{\e[0m%}.%{\e[1;35m%}%n%{\e[0m%})@%m (%{\e[1;32m%}%d%{\e[0m%})%(!.#.$) '

#PS1=$'%{\e[1;35m%}%n%{\e[0m%}@%m (%{\e[1;32m%}%d%{\e[0m%})%(!.#.$) '
#PS1=$'%n@%m (%{\e[1;32m%}%d%{\e[0m%})%(!.!.%%) '

setopt brace_ccl interactivecomments
#brace_ccl = brace character class; e.g., "{a-c,e}" expands to "a b c e"
unsetopt auto_remove_slash

if ! echo $path | grep ~ >/dev/null 2>&1; then {
	path+=(~/bin)
	export path
}; fi

unalias -m "*"
alias -g '~~= >/dev/null 2>&1 &|'

__git_files () {
    _wanted files expl 'local files' _files
}

source ~/.zshrc-keys
source ~/.shell-commonrc
autoload run-help
