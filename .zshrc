# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000
setopt notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


setPrompt() {
	local R=$'%{\e[1;31m%}' #red
	local G=$'%{\e[1;32m%}' #green
	local Y=$'%{\e[1;33m%}' #yellow
	local B=$'%{\e[1;34m%}' #blue
	local P=$'%{\e[1;35m%}' #purple
	local C=$'%{\e[1;36m%}' #cyan
	local X=$'%{\e[0m%}' #no color

	#colored username, host, and '$' or '#'
	PS1=$(print "%(!.$Y%n$X.$P%n$X)@$B%m$X ($G%d$X)%(!.$Y#$X.$P\$$X) ")

	#colored username and '$' or '#'
	#PS1=$(print "%(!.$Y%n$X@$C%m$X.$P%n$X@$C%m$X) ($G%d$X)%(!.$Y#$X.$P\$$X) ")
	#PS1=$'%(!.'$Y$'%n'$X$'.'$P$'%n'$X$')@%m ('$G$'%d'$X$')%(!.'$Y$'#'$X$'.'$P$'$'$X$') '
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

if [[ -e /usr/bin/site_perl ]] && \
		! echo $path | grep /usr/bin/site_perl >/dev/null 2>&1; then {
	path+=(/usr/bin/site_perl)
	export path
}; fi

unalias -m "*"
alias -g '~~= >/dev/null 2>&1 &!'

__git_files () {
	_wanted files expl 'local files' _files
}

if [[ -e ~/.zshrc-keys ]]; then
	source ~/.zshrc-keys
fi
source ~/.shell-commonrc

autoload run-help
