#!/bin/bash

unpack () {
	if [ -z $1 ] || [ -z $2 ]; then
		echo "not enough arguments supplied"
		return 0;
	fi

	if [ -d $1 ] || [ -f $1 ]; then
		if [ -d $2 ] || [ -f $2 ]; then
			rm -rf $2-old
			mv -f $2 $2-old
			echo "$2 was moved to $2-old"
		fi
		cp -rf $1 $2
		echo "$1 was unpacked to $2"
	else
		echo "$1: file or directory not found"
	fi
}

unpack .tmux.conf ~/.tmux.conf
unpack nvim ~/.config/nvim
unpack .zshrc ~/.zshrc
unpack wezterm ~/.config/wezterm
