#!/bin/bash

pack () {
	if [ -z $1 ]; then
		echo "no argument supplied"
		return 1;
	fi

	if [ -d $1 ]; then
		cp -rf $1 ./
		echo "$1 config packed"
	elif [ -f $1 ]; then
		cp -rf $1 ./
		echo "$1 config packed"
	else
		echo "$1: file or directory not found"
	fi
}

pack ~/.tmux.conf
pack ~/.zshrc
pack ~/.config/nvim
