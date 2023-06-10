#! /bin/bash

if ! pgrep -u $UID -x picom > /dev/null; then
    picom &
fi
