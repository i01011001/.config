#!/bin/bash

[[ $- != *i* ]] && return

export PATH=$PATH:"~/.config/emacs/bin"

alias ls='ls --color=auto'
export LS_COLORS=$LS_COLORS:'ow=1;34:'
alias source_idf='source $HOME/code/esp/esp-idf/export.sh'
alias emc="emacsclient -c & emacsclient -na 'emacs'"

alias make_dwl="cd ~/.config/dwl/ && rm config.h && sudo make clean install && cd ~"

alias getpath="find ~ -type f | fzf | tr -d '\n' | wl-copy"

fcd() {
	cd "$(find . -type d | fzf)"
}

fnvim() {
	nvim "$(rg . --files --hidden | fzf)"
}

efnvim() {
	foot -e nvim "$(rg . --files --hidden | fzf)" &
}

#shorcut for directory
esp='/home/ion/code/esp/'

# custom aesthetic
PS1='\[\e[37m\][ \W ] \$ \[\e[0m\]'

export MOZ_DBUS_REMOTE=1
export MOZ_ENABLE_WAYLAND=1
# export XDG_SESSION_TYPE=enter_the_void

set -o vi
