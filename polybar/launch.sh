#!/bin/sh

# Kill already running instances...
killall -q polybar

# Wait till process terminated...
while pgrep -x polybar >/dev/null; do
    sleep 1;
done
exec polybar --config=/home/hubert/.config/polybar/config top
echo "Polybar started..."


