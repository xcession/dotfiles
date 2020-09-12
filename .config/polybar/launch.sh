#!/bin/bash

# Terminate already running bar instance
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
echo "---" | tee -a /tmp/polybar.log
polybar mainbar-i3 >>/tmp/polybar.log 2>&1 &
polybar altbar-i3

echo "Polybar launched..."
