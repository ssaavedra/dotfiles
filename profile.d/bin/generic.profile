#!/bin/bash

##################################################
# This is my personal 'generic' profile.
# Some set variables are:
#  * UNIDIR: My Uni/ directory with various stuff
#  * EIDIR: My EI/ folder (course-related stuff inside Uni/)
# 
# I know, this is probably just for my personal use.
#
# Even if I use sometimes emacs, I set EDITOR=vim
# because I dislike at the moment the usage of
# emacsclient and having to edit the files in
# another terminal, and launching another emacs
# process is, usually, not as fast. IMHO.
#
##################################################
# Author: Santiago Saavedra López.
# License: MIT License.
##################################################


export EDITOR=vim


test -z ${UNIDIR:?is unset}
test -z ${EIDIR:?is unset}

export UNIDIR
export EIDIR

export CDPATH=$EIDIR/${CURRENTCOURSE:?is unset}:$CDPATH

## LS Options
export LSOPTIONS="$LSOPTIONS -pG"

alias l="ls -l \$LSOPTIONS"
alias ll="ls -lA \$LSOPTIONS"
alias ec="emacsclient"

alias sbcl="rlwrap sbcl"

