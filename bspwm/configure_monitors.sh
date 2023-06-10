#! /bin/bash

internal_monitor=$(xrandr --query | grep -m1 -Po "[-\w]+(?= connected primary)")
external_monitor=$(xrandr --query | grep -m1 -Po "[-\w]+(?= connected [^p])")
if ! [[ $internal_monitor ]]; then
    internal_monitor=$external_monitor
    external_monitor=
fi

if [[ $external_monitor ]]; then
    bspc monitor $internal_monitor -d 1 2 3 4 5
    bspc monitor $external_monitor -d 6 7 8 9 10
    bspc wm -O $internal_monitor $external_monitor
else
    bspc monitor $internal_monitor -d 1 2 3 4 5 6 7 8 9 10
fi
