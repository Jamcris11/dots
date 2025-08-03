#
# ~/.bashrc
#

export DISPLAY=:0

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

COLOR1='\[$(tput setaf 1)\]'
COLOR2='\[$(tput setaf 8)\]'
COLOR3='\[$(tput setaf 7)\]'
COLOR4='\[$(tput setaf 11)\]'
DCOLOR='\[$(tput sgr0)\]'
PS1="${COLOR3}<${COLOR1}\u:${COLOR4}\h ${COLOR2}\w${COLOR3}>${DCOLOR} "

# USER DEFINES

alias vim='nvim'
alias sxiv='sxiv -b'

export PATH=$PATH:~/.scripts/:~/.local/bin
export LD_LIBRARY_PATH=/usr/local/lib

export EDITOR=/usr/bin/nvim
export BROWSER=firefox

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

export WINEPREFIX="$XDG_DATA_HOME"/wine
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XRESOURCES="$XDG_CONFIG_HOME"/X11/xresources
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export HISTFILE="${XDG_STATE_HOME}/bash/history"
export RENPY_PATH_TO_SAVES="$XDG_DATA_HOME"
export COLORTERM='truecolor'
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export SCRIPTS="$HOME"/.scripts

cd $(cat $XDG_CACHE_HOME/csd_directory)

(cat ~/.cache/wal/sequences &)
