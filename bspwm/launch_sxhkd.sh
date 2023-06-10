#! /bin/bash

if ! pgrep -u $UID -x sxhkd > /dev/null; then
    sxhkd &
fi
