#!/bin/bash

##################################################
# This script autospawns a copy of emacs in the
# background. Just in case it is needed to edit
# a file.
##################################################
# Author: Santiago Saavedra López.
# License: GNU General Public License version 3
##################################################


if emacs-autospawn >/dev/null; then
    echo "Emacs is spawning in the background."
else
    echo "Remember: You have a copy of emacs running in the background."
fi

exit 0

