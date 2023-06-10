#! /bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

(
    export POLYBAR_MONITOR=$1
    polybar -l warning -c ~/.config/polybar/config.ini main &

    for monitor in "${@:2}"
    do
        export POLYBAR_MONITOR=$monitor
        polybar -l warning -c ~/.config/polybar/config.ini default &
    done
)
