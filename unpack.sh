#!/bin/bash

if [ "$1" = "--flatpak" ];
then
	if [ -d ~/.var/app/io.neovim.nvim/config/nvim/ ];
	then
		mv -f ~/.var/app/io.neovim.nvim/config/nvim/ ~/.var/app/io.neovim.nvim/config/nvim-old/
		echo "old nvim config was moved to ~/.var/app/io.neovim.nvim/config/nvim-old"
	fi
	cp -rf ./nvim ~/.var/app/io.neovim.nvim/config/nvim/
	echo "nvim config unpacked"
else
	if [ -d ~/.config/nvim ];
	then
		mv -f ~/.config/nvim ~/.config/nvim-old
		echo "old nvim config was moved to ~/.config/nvim-old"
	fi
	cp -rf ./nvim ~/.config/nvim
	echo "nvim config unpacked"
fi

if [ -f ~/.tmux.conf ];
then
	mv -f ~/.tmux.conf ~/.tmux.conf-old
	echo "old tmux config was moved to ~/.tmux.conf-old"
fi

cp -rf ./.tmux.conf ~/.tmux.conf
echo "tmux config unpacked"

if [ -f ~/.zshrc ];
then
	mv -f ~/.zshrc ~/.zshrc-old
	echo "old zsh config was moved to ~/.zshrc-old"
fi

cp -rf ./.zshrc ~/.zshrc
echo "zsh config unpacked"
