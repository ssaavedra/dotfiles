#!/bin/bash

dir="$(dirname "${BASH_SOURCE[0]}" )"

venv="$dir/Linux-Fake-Background-Webcam/.venv"

exec "$venv/bin/lfbw" -c $HOME/usr/fakebg/config.ini "$@"

