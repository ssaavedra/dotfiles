#!/bin/bash
###########################################################
#
# .profile Folder loader by
# Santiago Saavedra <santiagosaavedra@gmail.com>
#
# For use under Mac OS X and some Linux flavours
# This is to be used in BASH (Bourne Another Shell)
#
# It may not work in older shells.
#
###########################################################
# Author: Santiago Saavedra López.
# License: GNU General Public License version 3
###########################################################
## To load this file
## Simply add it to your
## ~/.profile with this line:
# 
# . .profile.d/loader.profile
#

# If we are inside zsh, let's get the path
if [ $(basename $SHELL) = zsh ]; then
	WD=$(dirname $0)
elif [ `uname` = "Darwin" ]; then
	WD=$(dirname ${BASH_SOURCE[0]})
else
	WD=$(dirname $(readlink -f ${BASH_SOURCE[0]}))
fi

PLUGINSDIR=$WD/plugins # This should be bash plugins (i.e., functions, definitions)
SCRIPTSDIR=$WD/bin # This should contain bash scripts (chmod'ed +x)
AUTOCMDDIR=$WD/autocmd # Scripts put here will be autorun on each console init

# There is a difference between plugins and autocmds:
# Autocmds will be run in a different bash session (so variables which are not exported will be lost)
# Plugins, on the other hand, will retain everything defined on them.


# This is the actual profile script.
source $WD/bin/generic.profile

if [[ -d "$PLUGINSDIR/" ]]; then
	for file in "$PLUGINSDIR"/*.sh; do
		if [[ -f $file ]]; then
			. "$file" $(dirname $file);
		fi
	done
fi

if [ -d "$SCRIPTSDIR/" ]; then
	export PATH=$SCRIPTSDIR:$PATH
fi


if [[ -d "$AUTOCMDDIR/" ]]; then
    for file in "$AUTOCMDDIR"/*; do
	if [[ -f $file ]]; then
	    /bin/bash "$file";
	fi
    done
fi

