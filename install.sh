#!/bin/bash

for dotfile in "${ZDOTDIR:-$HOME}"/.dotfiles/.??*; do
    if [ ! -e "${ZDOTDIR:-$HOME}/$(basename $dotfile)" ] && [ -f "${ZDOTDIR:-$HOME}/.dotfiles/$(basename $dotfile)" ]; then
	ln -s "$dotfile" "${ZDOTDIR:-$HOME}/$(basename $dotfile)"
    fi
done
