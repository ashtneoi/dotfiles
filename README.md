dotfiles
========

## Setup (ssh)

	cd ~
	git init
	git remote add -f -t master github 'git@github.com:drkitty/dotfiles.git'
	git pull github master
	git branch -u github/master

## Setup (read-only)

	cd ~
	git init
	git remote add -f -t master github 'git://github.com/drkitty/dotfiles.git'
	git pull github master
	git branch -u github/master


Then repeat <code>git pull</code> as often as needed.
