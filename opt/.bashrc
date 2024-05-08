#!/bin/bash

[[ $- != *i* ]] && return

# custom aesthetic
PS1='\[\e[30m\][ \W ] \$ \[\e[0m\]'

export LS_COLORS=$LS_COLORS:'ow=1;34:'
export PATH=$PATH:"$HOME/code/esp/esp-idf"
export IDF_PATH="$HOME/code/esp/esp-idf"

alias ls='ls --color=auto'
alias getpath="find ~ -type f | fzf | tr -d '\n' | wl-copy"
alias ..="cd .."
alias ...="cd  ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

fcd() {
	cd "$(find . -type d | fzf)"
}

fnvim() {
	nvim "$(rg . --files --hidden | fzf)"
}

sfnvim() {
	foot -e nvim "$(rg . --files --hidden | fzf)" 
  
}
