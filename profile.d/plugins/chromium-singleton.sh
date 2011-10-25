#!/bin/bash
##################################################
# Remove-Singleton from Chromium
#
# These allow me to remove the SingletonLock
# created by Chromium in the FIC.UDC laboratories
# which is not deleted through the NFS
##################################################
# Author: Santiago Saavedra López.
# License: GNU General Public License version 3.
##################################################

function remove-singleton-chormium () {
	rm -iv $HOME/.config/chromium/SingletonLock
}

