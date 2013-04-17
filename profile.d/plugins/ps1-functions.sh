#!/bin/bash

##################################################
# $PS1-setter functions
#
# These allow me to change the PS1 easily.
##################################################
# Author: Santiago Saavedra López.
# License: GNU General Public License version 3.
##################################################

ps1-color () {
	WD="\[\033[33m\]\W"
	export PS1="\[\033[37m\]\u@\h\[\033[1;37m: $WD \[\033[0;32m\]\\$\[\033[0;00m\] "
}

ps1-default () {
	export PS1='[\u@\h] \W \$ '
}

ps1-git () {
	export PS1='\[\033[38m\]\u@\h\[\033[01;34m\] \w \[\033[31m\] `git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`\[\033[37m\]\$\[\033[00m\] '
}

# ps1-default

