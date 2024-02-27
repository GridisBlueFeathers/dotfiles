#!/bin/bash

if [ -d ~/.config/nvim ];
then
	cp -rf ~/.config/nvim ./
	echo "nvim config copied"
else
	echo "no nvim config at ~/.config/nvim"
fi

if [ -f ~/.tmux.conf ];
then
	cp -rf ~/.tmux.conf ./
	echo "tmux config copied"
else
	echo "no tmux config at ~/.tmux.conf"
fi

if [ -f ~/.zshrc ];
then
	cp -rf ~/.zshrc ./
	echo "zsh config copied"
else
	echo "no zsh config at ~/.zshrc"
fi
