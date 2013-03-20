dotfiles
========

## Setup

### git with ssh (read–write)

	cd ~
	git clone 'git@github.com:drkitty/dotfiles.git'
	mv dotfiles/.git ~
	git reset --hard
	rm -r dotfiles

### git (read-only)

	cd ~
	git clone 'git://github.com/drkitty/dotfiles.git'
	mv dotfiles/.git ~
	git reset --hard
	rm -r dotfiles

### http (read–write) (not recommended)

	cd ~
	git clone 'https://github.com/drkitty/dotfiles.git'
	mv dotfiles/.git ~
	git reset --hard
	rm -r dotfiles

## Old setup (incomprehensible; requires git 1.8)

Don't use this method. Please.

	cd ~
	git init
	git remote add -f github 'git@github.com:drkitty/dotfiles.git'
	git pull github master
	git branch -u github/master
