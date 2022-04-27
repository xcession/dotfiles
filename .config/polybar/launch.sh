#!/bin/sh

# Terminate already running bar instance
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
if type "xrandr"; then
  for m in $(polybar --list-monitors | cut -d":" -f1); do
    echo "---" | tee -a /tmp/polybar.log
    MONITOR=$m polybar --reload i3-primary >>/tmp/polybar.log 2>&1 &
  done
else
  echo "---" | tee -a /tmp/polybar.log
  polybar --reload i3-primary >>/tmp/polybar.log 2>&1 &
fi
