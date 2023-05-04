#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar top &

external_monitor=$(xrandr --query | grep 'HDMI-0')
if [[ $external_monitor = *connected* ]]; then
    polybar top_external &
fi
