#!/bin/bash

link () {
	if [ -z $1 ] || [ -z $2 ]; then
		echo "not enough arguments supplied"
		return 0
	fi

	if [ -f $2 ] || [ -d $2 ]; then
		rm -rf $2-old
		mv $2 $2-old
		echo Created a backup for $2
	fi

	if [ -L $2 ]; then
		echo Link for $2 already exists
		return 0
	else
		ln -s $1 $2
	fi
}


link ~/dotfiles/.zshrc ~/.zshrc
link ~/dotfiles/nvim ~/.config/nvim
link ~/dotfiles/.tmux.conf ~/.tmux.conf
link ~/dotfiles/wezterm ~/.config/wezterm
