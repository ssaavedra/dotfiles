#!/bin/bash

##################################################
# This is the profile file for my Macbook Pro
# This may not be helpful for you at all
##################################################
# Author: Santiago Saavedra López
# License: GNU General Public License version 3
##################################################


stty -ixon


only_once_per_session () {
	export PATH=/usr/local/mysql/bin:$PATH
	export PR=~/Proyectos
}


if [ -n "$__IS_PROFILE__INITD" ]; then
	if [ -n "$1" ]; then
		## Rewriting once-per-session defaults
		only_once_per_session
	fi
fi
export __IS_PROFILE__INITD='-YES-'



platform-specific () {
	## Silice stuff
	#test -r /sw64/bin/init.sh && . /sw64/bin/init.sh
	#test -r /sw/bin/init.sh && . /sw/bin/init.sh
	export PATH=/usr/local/bin:$PATH

## Android SDK
	if [ -d "$HOME/Proyectos/android/sdk" ]; then
	sdk=$HOME/Proyectos/android/sdk
	export PATH=$sdk/platform-tools:$sdk/tools:$PATH

	fi

# Python 3.2 PATH
	PATH="/Library/Frameworks/Python.framework/Versions/3.2/bin:${PATH}"
	export PATH

# Gem user path
	PATH="${PATH}:${HOME}/.gem/ruby/1.8/bin"
	export PATH
}


UNIDIR="~/UDC-Dropbox/Dropbox/Uni"
EIDIR="${UNIDIR}/"
CURRENTCOURSE=Q5

. $HOME/.profile.d/loader.profile

platform-specific

